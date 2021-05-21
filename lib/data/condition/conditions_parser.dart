import 'package:logging/logging.dart';

import 'condition.dart';
import 'nodes.dart';
import 'operand.dart';

class ConditionsParserError {
  String code;
  int? at;
  ConditionsParserError(this.at, this.code);
  String toString() {
    return 'at:' + at.toString() + ' code:' + code;
  }
}

class ConditionsParser {
  final Logger _log = new Logger('ConditionsParser');
  static const ERROR_OperatorExpected = "OPERATOR_EXPECTED";
  static const ERROR_RightPartExpected = "RIGHTPART_EXPECTED";
  static const ERROR_ExpressionExpected = "EXPRESSION_EXPECTED";
  static const ERROR_EndExpected = "END_EXPECTED";

  String? _text;
  ConditionNode? _root;
  late List<ConditionNode?> _expressionNodes;
  dynamic _node;
  late int _at;
  late int _length;

  ConditionsParserError? errorValue;

  bool parse(String? text, ConditionNode? root) {
    this._setProperties(text, root);
    try {
      return this._parseText();
    } catch (e) {
      _log.shout('Text:' + text! + 'Error:' + e.toString());
      return false;
    }
  }

  ConditionNode? createCondition(String text) {
    ConditionNode? root = new ConditionNode();
    if (!this.parse(text, root)) root = null;
    return root;
  }

  Operand? parseExpression(String? text) {
    this._setProperties(text, new ConditionNode());
    return this._readExpressionOperand(false);
  }

  ConditionsParserError? get error {
    return this.errorValue;
  }

  void _createError(String code) {
    this.errorValue = new ConditionsParserError(this._at, code);
  }

  void _setProperties(String? text, ConditionNode? root) {
    this._text = text;
    this._at = 0;
    this._length = this._text!.length;
    this._root = root;
    this._root!.clear();
    this._node = this._root;
    this._expressionNodes = [];
    this._expressionNodes.add(this._node);
    this.errorValue = null;
  }

  String toString() {
    return this._root.toString();
  }

  bool _parseText() {
    var res = this._readConditions();
    if (this._at < this._length) {
      this._createError(ERROR_EndExpected);
      _log.shout(ERROR_EndExpected);
    }
    return res && this._at >= this._length;
  }

  bool _readConditions() {
    _log.fine('_readConditions');
    if (!this._readCondition()) return false;

    String? connective = this._readConnective();
    if (connective != null) {
      this._addConnective(connective);
      return this._readConditions();
    }
    return true;
  }

  bool _readCondition() {
    _log.fine('_readCondition');
    int expRes = this._readExpression();
    if (expRes < 0) return false;
    if (expRes == 1) return true;
    Operand? left = this._readExpressionOperand(false);
    if (left == null) {
      this._createError(ERROR_ExpressionExpected);
      return false;
    }
    String? op = this._readOperator();
    if (op == null) {
      if (left.isBoolean) {
        Condition c = new Condition();
        c.left = left;
        this._addCondition(c);
        return true;
      }
      this._createError(ERROR_OperatorExpected);
      return false;
    }
    Condition c = new Condition();
    c.left = left;
    c.operator = op;
    if (!Condition.isNoRightOperation(op)) {
      Operand? right = this._readExpressionOperand(true);
      if (right == null) {
        this._createError(ERROR_RightPartExpected);
        return false;
      }
      c.right = right;
    }
    this._addCondition(c);
    return true;
  }

  Operand? _readOperand() {
    _log.fine('_readOperand');
    List? ar = this._readArray();
    if (ar != null) return new Operand(ar);
    String? str = this._readString();
    if (str == null) return null;
    this._skip();
    if (this._at < this._length) {
      List<Operand>? params = this._readParameters();
      if (params != null) {
        FunctionOperand res = new FunctionOperand(str);
        res.parameters = params;
        return res;
      }
    }
    return new Operand(str);
  }

  bool _readNotOperand() {
    _log.fine('_readNotOperand');
    this._skip();
    int? savedAt = this._at;
    String? str = this._readString();
    if (str != null && (str.toLowerCase() == "not" || str == "!")) return true;
    this._at = savedAt;
    return false;
  }

  int _readExpression() {
    _log.fine('_readExpression');
    if (this._at == this._length - 1) return -1;
    var isNot = this._readNotOperand();
    if (this._at > this._length || this._ch != "(") return 0;
    this._at++;
    this._pushExpression();
    var res = this._readConditions();

    if (res != null && this._at < this._length) {
      this._skip();
      res = this._ch == ")";
      this._at++;
      this._popExpression(isNot);
      return 1;
    }
    return -1;
  }

  Operand? _readExpressionOperand(bool isRightCondition) {
    _log.fine('_readExpressionOperand');
    ExpressionOperand? expr =
        this._readExpressionOperandCore(0, isRightCondition);
    if (expr == null) return null;
    if (expr.right == null) return expr.left;
    return expr;
  }

  ExpressionOperand? _readExpressionOperandCore(
      int brackets /* = 0*/, bool isRightCondition /* = false*/) {
    _log.fine('_readExpressionOperandCore');
    var expressions =
        this._readExpressionOperandsCore(brackets, isRightCondition);
    return this._makeExpressionOperandCore(expressions);
  }

  ExpressionOperand? _makeExpressionOperandCore(
      List<ExpressionOperand> expressions) {
    _log.fine('_makeExpressionOperandCore');
    if (expressions.length == 0) return null;
    if (expressions.length == 1) return expressions[0];
    var res = new ExpressionOperand();
    res.left = expressions[0].left;
    res.operator = expressions[0].operator;
    this._buildExpressionBinaryTree(expressions, 1, res);
    return res;
  }

  void _buildExpressionBinaryTree(
      List<ExpressionOperand> list, int index, ExpressionOperand parent) {
    _log.fine('_buildExpressionBinaryTree');
    if (index >= list.length) return;
    var right = list[index].left;
    if (index == list.length - 1) {
      parent.right = right;
      return;
    }
    var operator = list[index].operator;
    var expr = new ExpressionOperand();
    if (this._isHighPriorityOperand(parent.operator) &&
        !this._isHighPriorityOperand(operator)) {
      expr.left = parent.left;
      expr.right = right;
      expr.operator = parent.operator;
      parent.operator = operator;
      parent.left = expr;
      this._buildExpressionBinaryTree(list, index + 1, parent);
    } else {
      expr.left = right;
      expr.operator = operator;
      parent.right = expr;
      this._buildExpressionBinaryTree(list, index + 1, expr);
    }
  }

  List<ExpressionOperand> _readExpressionOperandsCore(
      int brackets, bool isRightCondition) {
    _log.fine('_readExpressionOperandsCore');
    var res = <ExpressionOperand>[];
    var operand;
    var operator;
    while (this._at < this._length) {
      if (this._isCloseBracket(this._ch)) {
        this._at++;
        break;
      }
      this._skip();
      if (this._isOpenBracket(this._ch)) {
        this._at++;
        operand = this._readExpressionOperandCore(brackets + 1, false);
      } else {
        operand = this._readOperand();
      }
      if (operand == null) {
        this._nextOnCloseBrackets();
        break;
      }

      if (this._at < this._length) operator = this._readOperandOperator();
      if (operator == null) {
        if (!isRightCondition &&
            this._nextOnCloseBrackets() &&
            brackets == 0 &&
            this._expressionNodes.length > 0) {
          this._popExpression(false);
          var expr = new ExpressionOperand();
          expr.left = operand;
          res.add(expr);
          operand = this._makeExpressionOperandCore(res);
          res = [];
          if (this._at < this._length) operator = this._readOperandOperator();
        }
        if (operator == null) break;
      }
      var expr = new ExpressionOperand();
      expr.left = operand;
      expr.operator = operator;
      res.add(expr);
      // Reset for next read
      operand = null;
      operator = null;
    }
    if (operand != null) {
      var expr = new ExpressionOperand();
      expr.left = operand;
      res.add(expr);
    }
    return res;
  }

  bool _nextOnCloseBrackets() {
    _log.fine('_nextOnCloseBrackets');
    if (this._at < this._length) {
      if (this._isCloseBracket(this._ch)) {
        this._at++;
        return true;
      }
    }
    return false;
  }

  get _ch => this._text![this._at];

  void _skip() {
    while (this._at < this._length && this._isSpace(this._ch)) this._at++;
  }

  bool _isSpace(String c) {
    return c == " " || c == "\n" || c == "\t" || c == "\r";
  }

  bool _isQuotes(String c) {
    return c == "'" || c == '"';
  }

  bool _isComma(String c) {
    return c == ",";
  }

  bool _isOperatorChar(String c) {
    return (c == ">" ||
        c == "<" ||
        c == "=" ||
        c == "!" ||
        c == "+" ||
        c == "-" ||
        c == "*" ||
        c == "^" ||
        c == "/" ||
        c == "%");
  }

  bool _isOpenBracket(String c) {
    return c == "(";
  }

  bool _isCloseBracket(String c) {
    return c == ")";
  }

  bool _isBrackets(String c) {
    return this._isOpenBracket(c) || this._isCloseBracket(c);
  }

  List? _readArray() {
    _log.fine('_readArray');
    this._skip();
    if (this._at >= this._length) return null;
    if (this._ch != "[") return null;
    this._at++;
    var res = [];
    while (this._at < this._length) {
      String? str = this._readString();
      if (str != null) res.add(str);
      this._skip();
      var c = this._ch;
      if (c == ",") this._at++;
      if (c == "]") {
        this._at++;
        break;
      }
    }
    return res;
  }

  String? _readString() {
    _log.fine('_readString');
    this._skip();
    if (this._at >= this._length) return null;
    var start = this._at;
    var hasQuotes = this._isQuotes(this._ch);
    var hasBraces = this._ch == "{";
    if (hasQuotes) this._at++;
    var isFirstOpCh = this._isOperatorChar(this._ch);
    var isPrevEscape = false;
    while (this._at < this._length) {
      if (hasBraces) {
        var isBrace = this._ch == "}";
        this._at++;
        if (isBrace)
          break;
        else
          continue;
      }
      if (!hasQuotes && this._isSpace(this._ch)) break;
      if (this._isQuotes(this._ch) && !isPrevEscape) {
        if (hasQuotes) this._at++;
        break;
      }
      if (!hasQuotes) {
        if (this._ch != "-" && isFirstOpCh != this._isOperatorChar(this._ch))
          break;
        if (this._isBrackets(this._ch) || this._isComma(this._ch)) break;
        if (this._ch == "]") break;
      }
      isPrevEscape = this._ch == "\\";
      this._at++;
    }
    if (this._at <= start) return null;
    var res = this._text!.substring(start, this._at);
    if (res != null) {
      if (res.length > 1 && this._isQuotes(res[0])) {
        var len = res.length - 1;
        if (this._isQuotes(res[res.length - 1])) len--;
        res = res.substring(1, 1 + len);
      }
    }
    return res;
  }

  Operand? _readParameter() {
    _log.fine('_readParameter');
    var openedBrackets = 0;
    var startIndex = this._at;
    while (this._at < this._length) {
      if (this._isOpenBracket(this._ch)) openedBrackets++;
      if (this._isCloseBracket(this._ch)) openedBrackets--;
      if (openedBrackets < 0) break;
      if (openedBrackets == 0 && this._ch == ",") break;
      this._at++;
    }
    var paramStr = this._text!.substring(startIndex, this._at);
    if (paramStr == null) return null;
    var parser = new ConditionsParser();
    var node = new ConditionNode();
    if (parser.parse(paramStr, node)) {
      return new ConditionOperand(node);
    }
    return parser.parseExpression(paramStr);
  }

  List<Operand>? _readParameters() {
    _log.fine('_readParameters');
    if (!this._isOpenBracket(this._ch)) return null;
    var params = <Operand>[];
    while (this._at < this._length && !this._isCloseBracket(this._ch)) {
      this._at++;
      var operand = this._readParameter(); //this.readExpressionOperand();
      if (operand != null) {
        params.add(operand);
      }
    }
    this._at++;
    return params;
  }

  bool _isHighPriorityOperand(String? op) {
    return op == "*" || op == "^" || op == "/" || op == "%";
  }

  String? _readOperandOperator() {
    _log.fine('_readOperandOperator');
    this._skip();
    if (this._ch == "+" ||
        this._ch == "-" ||
        this._ch == "*" ||
        this._ch == "^" ||
        this._ch == "/" ||
        this._ch == "%") {
      var res = this._ch;
      this._at++;
      return res;
    }
    return null;
  }

  String? _readOperator() {
    _log.fine('_readOperator');
    this._skip();
    var curAt = this._at;
    String? op = this._readString();
    if (op == null) return null;
    op = op.toLowerCase();
    if (op == ">") op = "greater";
    if (op == "<") op = "less";
    if (op == ">=" || op == "=>") op = "greaterorequal";
    if (op == "<=" || op == "=<") op = "lessorequal";
    if (op == "=" || op == "==") op = "equal";
    if (op == "<>" || op == "!=") op = "notequal";
    if (op == "equals") op = "equal";
    if (op == "notequals") op = "notequals";
    if (op == "contain" || op == "*=") op = "contains";
    if (op == "notcontain") op = "notcontains";
    if (Condition.isCorrectOperator(op)) return op;
    this._at = curAt;
    return null;
  }

  String? _readConnective() {
    _log.fine('_readConnective');
    String? con = this._readString();
    if (con == null) return null;
    con = con.toLowerCase();
    if (con == "&" || con == "&&") con = "and";
    if (con == "|" || con == "||") con = "or";
    if (con != "and" && con != "or") con = null;
    return con;
  }

  void _pushExpression() {
    //print('_pushExpression');
    var node;
    this._expressionNodes.add(node);
    this._node = node;
  }

  void _makeNodeCondition() {
    //print('_makeNodeCondition');
    if (this._node == null || this._node.children == 0) {
      this._node = new ConditionNode();
      this._expressionNodes[this._expressionNodes.length - 1] = this._node;
    }
  }

  void _popExpression(bool isNot) {
    //print('_popExpression');
    var node = this._expressionNodes.removeLast();
    this._node = this._expressionNodes[this._expressionNodes.length - 1];
    if (node != null) {
      node.isNot = isNot;
      this._makeNodeCondition();
      this._node.children.add(node);
    }
  }

  void _addCondition(Condition c) {
    _log.fine('_addCondition');
    this._makeNodeCondition();
    this._node.children.add(c);
  }

  void _addConnective(String con) {
    _log.fine('_addConnective');
    this._makeNodeCondition();
    if (this._node.children.length < 2) {
      this._node.connective = con;
    } else {
      if (this._node.connective != con) {
        var oldCon = this._node.connective;
        var oldChildren = this._node.children;
        this._node.clear();
        this._node.connective = con;
        var oldNode = new ConditionNode();
        oldNode.connective = oldCon;
        oldNode.children = oldChildren;
        this._node.children.add(oldNode);
        var newNode = new ConditionNode();
        this._node.children.add(newNode);
        this._node = newNode;
      }
    }
  }
}
