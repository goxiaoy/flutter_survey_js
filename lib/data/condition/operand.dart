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
    if (originalValue == null) return null;

    if (originalValue.runtimeType.toString() == 'List<dynamic>' ||
        originalValue.runtimeType.toString() == 'List<int>' ||
        originalValue.runtimeType.toString() == 'List<double>' ||
        originalValue.runtimeType.toString() == 'List<String>') {
      List res = [];
      List list = originalValue;
      for (int i = 0; i < list.length; i++) {
        Operand val = Operand(list[i]);
        res.add(val.getValue(processValue));
      }

      return res;
    }

    if (originalValue.runtimeType == int ||
        originalValue.runtimeType == double) return originalValue;

    if (originalValue.runtimeType == String) {
      String? strValue = originalValue;
      var res = Helpers.getSimpleValue(strValue);
      if (res.isSimple) return res.value;

      var val = _removeQuotesAndEscapes(strValue!);
      if (processValue != null) {
        String? name = getValueName(val);
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
    return Helpers.isBooleanValue(originalValue);
  }

  void fillVariables(List<String> vars) {
    var name = getValueName(originalValue);
    if (name != null) {
      vars.add(name);
    }
  }

  @override
  String toString() {
    var val = originalValue;
    if (val != null &&
        (!Helpers.isNumeric(val) && !Helpers.isBooleanValue(val))) {
      val = "${"'" + val}'";
    }
    return val;
  }

  String _removeQuotesAndEscapes(String val) {
    if (val.isNotEmpty && (val[0] == "'" || val[0] == '"')) {
      val = val.substring(1);
    }
    var len = val.length;
    if (len > 0 && (val[len - 1] == "'" || val[len - 1] == '"')) {
      val = val.substring(0, len - 1);
    }
    val = val.replaceAll("\\'", "'");
    val = val.replaceAll('\\"', '"');
    return val;
  }

  String? getValueName(String val) {
    if (val.length < 3 || val[0] != "{" || val[val.length - 1] != "}") {
      return null;
    }
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
    if (left == null) return null;
    if (right == null) return left!.getValue(processValue);
    var l = left!.getValue(processValue);
    var r = right!.getValue(processValue);
    if (Helpers.isValueEmpty(l)) l = 0;
    if (Helpers.isValueEmpty(r)) r = 0;
    if (operator == "+") {
      return l + r;
    }
    if (operator == "-") {
      return l - r;
    }
    if (operator == "*") {
      return l * r;
    }
    if (operator == "^") {
      return pow(l, r);
    }
    if (operator == "/") {
      if (r == null || (r < 0.001 && r > -0.001)) return null;
      return l / r;
    }
    if (operator == "%") {
      if (r == null || (r < 0.001 && r > -0.001)) return null;
      return l % r;
    }
    return null;
  }

  @override
  dynamic fillVariables(List<String> vars) {
    if (left != null) left!.fillVariables(vars);
    if (right != null) right!.fillVariables(vars);
  }

  @override
  String toString() {
    var res = left != null ? left.toString() : "";
    res += " ${operator!} ";
    if (right != null) res += right.toString();
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
    if (root == null) return false;
    _processValue = processValue;
    return _runNode(root);
  }

  @override
  void fillVariables(List<String> vars) {
    root.fillVariables(vars);
  }

  @override
  String toString() {
    return root != null ? root.toString() : "";
  }

  bool _runNode(ConditionNode node) {
    var onFirstFail = node.connective == "and";
    for (var i = 0; i < node.children!.length; i++) {
      var res = _runNodeCondition(node.children![i])!;
      if (!res && onFirstFail) return node.isNot;
      if (res && !onFirstFail) return !node.isNot;
    }
    return !node.isNot ? onFirstFail : !onFirstFail;
  }

  bool? _runNodeCondition(dynamic value) {
    if (value.runtimeType.toString() == 'ConditionNode') {
      return _runNode(value);
    }
    if (value.runtimeType.toString() == 'Condition') {
      return _runCondition(value);
    }
    assert(false);
    return false;
  }

  bool? _runCondition(Condition condition) {
    //print('_runCondition:' + condition.toString());
    //print('_processValue:' + this._processValue.toString());
    bool? result = condition.performExplicit(
        condition.left, condition.right, _processValue);
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
    for (var i = 0; i < parameters.length; i++) {
      paramValues.add(parameters[i].getValue(processValue));
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

  @override
  void fillVariables(List<String> vars) {
    for (var i = 0; i < parameters.length; i++) {
      parameters[i].fillVariables(vars);
    }
  }

  @override
  String toString() {
    var res = originalValue + "(";
    for (var i = 0; i < parameters.length; i++) {
      if (i > 0) res += ", ";
      res += parameters[i].toString();
    }
    return res;
  }
}
