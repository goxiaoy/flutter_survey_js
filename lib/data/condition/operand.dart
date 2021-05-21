import 'nodes.dart';
import 'condition.dart';
import 'process.dart';
import 'helper.dart';
import 'dart:math';

class Operand {
  final dynamic originalValue;
  Operand(this.originalValue);

  //@override
  dynamic getValue(ProcessValue? processValue) {
    if (this.originalValue == null) return null;

    if (this.originalValue.runtimeType.toString() == 'List<dynamic>' ||
        this.originalValue.runtimeType.toString() == 'List<int>' ||
        this.originalValue.runtimeType.toString() == 'List<double>' ||
        this.originalValue.runtimeType.toString() == 'List<String>') {
      List res = [];
      List list = this.originalValue;
      for (int i = 0; i < list.length; i++) {
        Operand val = new Operand(list[i]);
        res.add(val.getValue(processValue));
      }

      return res;
    }

    if (this.originalValue.runtimeType == int ||
        this.originalValue.runtimeType == double) return this.originalValue;

    if (this.originalValue.runtimeType == String) {
      String? strValue = this.originalValue;
      var res = Helpers.getSimpleValue(strValue);
      if (res.isSimple) return res.value;

      var val = this._removeQuotesAndEscapes(strValue!);
      if (processValue != null) {
        String? name = this.getValueName(val);
        if (name != null) {
          if (!processValue.hasValue(text: name)!) return null;
          var value = processValue.getValue(text: name);
          return Helpers.getSimpleValue(value).value;
        }
      }
      return val;
    }
    return null;
  }

  bool get isBoolean {
    return Helpers.isBooleanValue(this.originalValue);
  }

  void fillVariables(List<String> vars) {
    var name = this.getValueName(this.originalValue);
    if (name != null) {
      vars.add(name);
    }
  }

  @override
  String toString() {
    var val = this.originalValue;
    if (val != null &&
        (!Helpers.isNumeric(val) && !Helpers.isBooleanValue(val)))
      val = "'" + val + "'";
    return val;
  }

  String _removeQuotesAndEscapes(String val) {
    if (val.length > 0 && (val[0] == "'" || val[0] == '"'))
      val = val.substring(1);
    var len = val.length;
    if (len > 0 && (val[len - 1] == "'" || val[len - 1] == '"'))
      val = val.substring(0, len - 1);
    if (val != null) {
      val = val.replaceAll("\\'", "'");
      val = val.replaceAll('\\"', '"');
    }
    return val;
  }

  String? getValueName(String val) {
    if (val.length < 3 || val[0] != "{" || val[val.length - 1] != "}")
      return null;
    return val.substring(1, val.length - 1);
  }

  /// TODO: may not be good implementation
  /*
  bool _isArray(String val){
    if(val == null || val.isEmpty)
      return false;

    if(val.startsWith('[') && val.endsWith(']'))
      return true;

    return false;
  }
  */

}

class ExpressionOperand extends Operand {
  Operand? left;
  Operand? right;
  String? operator;
  ExpressionOperand() : super(null);

  @override
  dynamic getValue(ProcessValue? processValue) {
    if (this.left == null) return null;
    if (this.right == null) return this.left!.getValue(processValue);
    var l = this.left!.getValue(processValue);
    var r = this.right!.getValue(processValue);
    if (Helpers.isValueEmpty(l)) l = 0;
    if (Helpers.isValueEmpty(r)) r = 0;
    if (this.operator == "+") {
      return l + r;
    }
    if (this.operator == "-") {
      return l - r;
    }
    if (this.operator == "*") {
      return l * r;
    }
    if (this.operator == "^") {
      return pow(l, r);
    }
    if (this.operator == "/") {
      if (r == null || (r < 0.001 && r > -0.001)) return null;
      return l / r;
    }
    if (this.operator == "%") {
      if (r == null || (r < 0.001 && r > -0.001)) return null;
      return l % r;
    }
    return null;
  }

  @override
  dynamic fillVariables(List<String> vars) {
    if (this.left != null) this.left!.fillVariables(vars);
    if (this.right != null) this.right!.fillVariables(vars);
  }

  @override
  String toString() {
    var res = this.left != null ? this.left.toString() : "";
    res += " " + this.operator! + " ";
    if (this.right != null) res += this.right.toString();
    return res;
  }
}

class ConditionOperand extends Operand {
  ConditionNode root;
  ProcessValue? _processValue;

  ConditionOperand(ConditionNode root)
      : root = root,
        super(null);

  @override
  dynamic getValue(ProcessValue? processValue) {
    if (this.root == null) return false;
    this._processValue = processValue;
    return this._runNode(this.root);
  }

  @override
  void fillVariables(List<String> vars) {
    if (this.root != null) {
      this.root.fillVariables(vars);
    }
  }

  @override
  String toString() {
    return this.root != null ? this.root.toString() : "";
  }

  bool _runNode(ConditionNode node) {
    var onFirstFail = node.connective == "and";
    for (var i = 0; i < node.children!.length; i++) {
      var res = this._runNodeCondition(node.children![i])!;
      if (!res && onFirstFail) return node.isNot;
      if (res && !onFirstFail) return !node.isNot;
    }
    return !node.isNot ? onFirstFail : !onFirstFail;
  }

  bool? _runNodeCondition(dynamic value) {
    if (value.runtimeType.toString() == 'ConditionNode')
      return this._runNode(value);
    if (value.runtimeType.toString() == 'Condition')
      return this._runCondition(value);
    assert(false);
    return false;
  }

  bool? _runCondition(Condition condition) {
    //print('_runCondition:' + condition.toString());
    //print('_processValue:' + this._processValue.toString());
    bool? result = condition.performExplicit(
        condition.left, condition.right, this._processValue);
    // print('_runCondition result:' + result.toString());
    return result;
  }
}

class FunctionOperand extends Operand {
  List<Operand> parameters = <Operand>[];
  FunctionOperand(dynamic originalValue) : super(originalValue);

  @override
  dynamic getValue(ProcessValue? processValue) {
    var paramValues = [];
    for (var i = 0; i < this.parameters.length; i++) {
      paramValues.add(this.parameters[i].getValue(processValue));
    }

    /// TODO: implementation
    /*
    return FunctionFactory.Instance.run(
        this.origionalValue,
        paramValues,
        processValue.properties
    );
    */
    return null;
  }

  void fillVariables(List<String> vars) {
    for (var i = 0; i < this.parameters.length; i++) {
      this.parameters[i].fillVariables(vars);
    }
  }

  String toString() {
    var res = this.originalValue + "(";
    for (var i = 0; i < this.parameters.length; i++) {
      if (i > 0) res += ", ";
      res += this.parameters[i].toString();
    }
    return res;
  }
}
