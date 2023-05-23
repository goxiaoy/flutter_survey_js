import 'package:logging/logging.dart';

import 'condition.dart';
import 'nodes.dart';
import 'operand.dart';

class ConditionsParserError {
  String code;
  int? at;
  ConditionsParserError(this.at, this.code);
  @override
  String toString() {
    return 'at:$at code:$code';
  }
}

class ConditionsParser {
  final Logger _log = Logger('ConditionsParser');
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
    _setProperties(text, root);
    try {
      return _parseText();
    } catch (e) {
      _log.shout('Text:${text!}Error:$e');
      return false;
    }
  }

  ConditionNode? createCondition(String text) {
    ConditionNode? root = ConditionNode();
    if (!parse(text, root)) root = null;
    return root;
  }

  Operand? parseExpression(String? text) {
    _setProperties(text, ConditionNode());
    return _readExpressionOperand(false);
  }

  ConditionsParserError? get error {
    return errorValue;
  }

  void _createError(String code) {
    errorValue = ConditionsParserError(_at, code);
  }

  void _setProperties(String? text, ConditionNode? root) {
    _text = text;
    _at = 0;
    _length = _text!.length;
    _root = root;
    _root!.clear();
    _node = _root;
    _expressionNodes = [];
    _expressionNodes.add(_node);
    errorValue = null;
  }

  @override
  String toString() {
    return _root.toString();
  }

  bool _parseText() {
    var res = _readConditions();
    if (_at < _length) {
      _createError(ERROR_EndExpected);
      _log.shout(ERROR_EndExpected);
    }
    return res && _at >= _length;
  }

  bool _readConditions() {
    _log.fine('_readConditions');
    if (!_readCondition()) return false;

    String? connective = _readConnective();
    if (connective != null) {
      _addConnective(connective);
      return _readConditions();
    }
    return true;
  }

  bool _readCondition() {
    _log.fine('_readCondition');
    int expRes = _readExpression();
    if (expRes < 0) return false;
    if (expRes == 1) return true;
    Operand? left = _readExpressionOperand(false);
    if (left == null) {
      _createError(ERROR_ExpressionExpected);
      return false;
    }
    String? op = _readOperator();
    if (op == null) {
      if (left.isBoolean) {
        Condition c = Condition();
        c.left = left;
        _addCondition(c);
        return true;
      }
      _createError(ERROR_OperatorExpected);
      return false;
    }
    Condition c = Condition();
    c.left = left;
    c.operator = op;
    if (!Condition.isNoRightOperation(op)) {
      Operand? right = _readExpressionOperand(true);
      if (right == null) {
        _createError(ERROR_RightPartExpected);
        return false;
      }
      c.right = right;
    }
    _addCondition(c);
    return true;
  }

  Operand? _readOperand() {
    _log.fine('_readOperand');
    List? ar = _readArray();
    if (ar != null) return Operand(ar);
    String? str = _readString();
    if (str == null) return null;
    _skip();
    if (_at < _length) {
      List<Operand>? params = _readParameters();
      if (params != null) {
        FunctionOperand res = FunctionOperand(str);
        res.parameters = params;
        return res;
      }
    }
    return Operand(str);
  }

  bool _readNotOperand() {
    _log.fine('_readNotOperand');
    _skip();
    int? savedAt = _at;
    String? str = _readString();
    if (str != null && (str.toLowerCase() == "not" || str == "!")) return true;
    _at = savedAt;
    return false;
  }

  int _readExpression() {
    _log.fine('_readExpression');
    if (_at == _length - 1) return -1;
    var isNot = _readNotOperand();
    if (_at > _length || _ch != "(") return 0;
    _at++;
    _pushExpression();
    var res = _readConditions();

    if (_at < _length) {
      _skip();
      res = _ch == ")";
      _at++;
      _popExpression(isNot);
      return 1;
    }
    return -1;
  }

  Operand? _readExpressionOperand(bool isRightCondition) {
    _log.fine('_readExpressionOperand');
    ExpressionOperand? expr = _readExpressionOperandCore(0, isRightCondition);
    if (expr == null) return null;
    if (expr.right == null) return expr.left;
    return expr;
  }

  ExpressionOperand? _readExpressionOperandCore(
      int brackets /* = 0*/, bool isRightCondition /* = false*/) {
    _log.fine('_readExpressionOperandCore');
    var expressions = _readExpressionOperandsCore(brackets, isRightCondition);
    return _makeExpressionOperandCore(expressions);
  }

  ExpressionOperand? _makeExpressionOperandCore(
      List<ExpressionOperand> expressions) {
    _log.fine('_makeExpressionOperandCore');
    if (expressions.isEmpty) return null;
    if (expressions.length == 1) return expressions[0];
    var res = ExpressionOperand();
    res.left = expressions[0].left;
    res.operator = expressions[0].operator;
    _buildExpressionBinaryTree(expressions, 1, res);
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
    var expr = ExpressionOperand();
    if (_isHighPriorityOperand(parent.operator) &&
        !_isHighPriorityOperand(operator)) {
      expr.left = parent.left;
      expr.right = right;
      expr.operator = parent.operator;
      parent.operator = operator;
      parent.left = expr;
      _buildExpressionBinaryTree(list, index + 1, parent);
    } else {
      expr.left = right;
      expr.operator = operator;
      parent.right = expr;
      _buildExpressionBinaryTree(list, index + 1, expr);
    }
  }

  List<ExpressionOperand> _readExpressionOperandsCore(
      int brackets, bool isRightCondition) {
    _log.fine('_readExpressionOperandsCore');
    var res = <ExpressionOperand>[];
    Operand? operand;
    String? operator;
    while (_at < _length) {
      if (_isCloseBracket(_ch)) {
        _at++;
        break;
      }
      _skip();
      if (_isOpenBracket(_ch)) {
        _at++;
        operand = _readExpressionOperandCore(brackets + 1, false);
      } else {
        operand = _readOperand();
      }
      if (operand == null) {
        _nextOnCloseBrackets();
        break;
      }

      if (_at < _length) operator = _readOperandOperator();
      if (operator == null) {
        if (!isRightCondition &&
            _nextOnCloseBrackets() &&
            brackets == 0 &&
            _expressionNodes.isNotEmpty) {
          _popExpression(false);
          var expr = ExpressionOperand();
          expr.left = operand;
          res.add(expr);
          operand = _makeExpressionOperandCore(res);
          res = [];
          if (_at < _length) operator = _readOperandOperator();
        }
        if (operator == null) break;
      }
      var expr = ExpressionOperand();
      expr.left = operand;
      expr.operator = operator;
      res.add(expr);
      // Reset for next read
      operand = null;
      operator = null;
    }
    if (operand != null) {
      var expr = ExpressionOperand();
      expr.left = operand;
      res.add(expr);
    }
    return res;
  }

  bool _nextOnCloseBrackets() {
    _log.fine('_nextOnCloseBrackets');
    if (_at < _length) {
      if (_isCloseBracket(_ch)) {
        _at++;
        return true;
      }
    }
    return false;
  }

  get _ch => _text![_at];

  void _skip() {
    while (_at < _length && _isSpace(_ch)) {
      _at++;
    }
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
    return _isOpenBracket(c) || _isCloseBracket(c);
  }

  List? _readArray() {
    _log.fine('_readArray');
    _skip();
    if (_at >= _length) return null;
    if (_ch != "[") return null;
    _at++;
    var res = [];
    while (_at < _length) {
      String? str = _readString();
      if (str != null) res.add(str);
      _skip();
      var c = _ch;
      if (c == ",") _at++;
      if (c == "]") {
        _at++;
        break;
      }
    }
    return res;
  }

  String? _readString() {
    _log.fine('_readString');
    _skip();
    if (_at >= _length) return null;
    var start = _at;
    var hasQuotes = _isQuotes(_ch);
    var hasBraces = _ch == "{";
    if (hasQuotes) _at++;
    var isFirstOpCh = _isOperatorChar(_ch);
    var isPrevEscape = false;
    while (_at < _length) {
      if (hasBraces) {
        var isBrace = _ch == "}";
        _at++;
        if (isBrace) {
          break;
        } else {
          continue;
        }
      }
      if (!hasQuotes && _isSpace(_ch)) break;
      if (_isQuotes(_ch) && !isPrevEscape) {
        if (hasQuotes) _at++;
        break;
      }
      if (!hasQuotes) {
        if (_ch != "-" && isFirstOpCh != _isOperatorChar(_ch)) {
          break;
        }
        if (_isBrackets(_ch) || _isComma(_ch)) break;
        if (_ch == "]") break;
      }
      isPrevEscape = _ch == "\\";
      _at++;
    }
    if (_at <= start) return null;
    var res = _text!.substring(start, _at);
    if (res.length > 1 && _isQuotes(res[0])) {
      var len = res.length - 1;
      if (_isQuotes(res[res.length - 1])) len--;
      res = res.substring(1, 1 + len);
    }
    return res;
  }

  Operand? _readParameter() {
    _log.fine('_readParameter');
    var openedBrackets = 0;
    var startIndex = _at;
    while (_at < _length) {
      if (_isOpenBracket(_ch)) openedBrackets++;
      if (_isCloseBracket(_ch)) openedBrackets--;
      if (openedBrackets < 0) break;
      if (openedBrackets == 0 && _ch == ",") break;
      _at++;
    }
    var paramStr = _text!.substring(startIndex, _at);
    var parser = ConditionsParser();
    var node = ConditionNode();
    if (parser.parse(paramStr, node)) {
      return ConditionOperand(node);
    }
    return parser.parseExpression(paramStr);
  }

  List<Operand>? _readParameters() {
    _log.fine('_readParameters');
    if (!_isOpenBracket(_ch)) return null;
    var params = <Operand>[];
    while (_at < _length && !_isCloseBracket(_ch)) {
      _at++;
      var operand = _readParameter(); //this.readExpressionOperand();
      if (operand != null) {
        params.add(operand);
      }
    }
    _at++;
    return params;
  }

  bool _isHighPriorityOperand(String? op) {
    return op == "*" || op == "^" || op == "/" || op == "%";
  }

  String? _readOperandOperator() {
    _log.fine('_readOperandOperator');
    _skip();
    if (_ch == "+" ||
        _ch == "-" ||
        _ch == "*" ||
        _ch == "^" ||
        _ch == "/" ||
        _ch == "%") {
      var res = _ch;
      _at++;
      return res;
    }
    return null;
  }

  String? _readOperator() {
    _log.fine('_readOperator');
    _skip();
    var curAt = _at;
    String? op = _readString();
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
    _at = curAt;
    return null;
  }

  String? _readConnective() {
    _log.fine('_readConnective');
    String? con = _readString();
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
    _expressionNodes.add(node);
    _node = node;
  }

  void _makeNodeCondition() {
    //print('_makeNodeCondition');
    if (_node == null || _node.children == 0) {
      _node = ConditionNode();
      _expressionNodes[_expressionNodes.length - 1] = _node;
    }
  }

  void _popExpression(bool isNot) {
    //print('_popExpression');
    var node = _expressionNodes.removeLast();
    _node = _expressionNodes[_expressionNodes.length - 1];
    if (node != null) {
      node.isNot = isNot;
      _makeNodeCondition();
      _node.children.add(node);
    }
  }

  void _addCondition(Condition c) {
    _log.fine('_addCondition');
    _makeNodeCondition();
    _node.children.add(c);
  }

  void _addConnective(String con) {
    _log.fine('_addConnective');
    _makeNodeCondition();
    if (_node.children.length < 2) {
      _node.connective = con;
    } else {
      if (_node.connective != con) {
        var oldCon = _node.connective;
        var oldChildren = _node.children;
        _node.clear();
        _node.connective = con;
        var oldNode = ConditionNode();
        oldNode.connective = oldCon;
        oldNode.children = oldChildren;
        _node.children.add(oldNode);
        var newNode = ConditionNode();
        _node.children.add(newNode);
        _node = newNode;
      }
    }
  }
}
