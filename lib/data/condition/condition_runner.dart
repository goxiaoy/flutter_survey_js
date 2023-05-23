import 'conditions_parser.dart';
import 'nodes.dart';
import 'operand.dart';
import 'process.dart';

// Condition Runner
// Port from survey js
class ConditionRunner {
  String? _expressionValue;
  final ConditionNode _root = ConditionNode();

  ConditionRunner(String? expressionValue) {
    expression = expressionValue;
  }

  String? get expression => _expressionValue;

  set expression(String? value) {
    if (expression != value) {
      _expressionValue = value;
      ConditionsParser().parse(_expressionValue, _root);
    }
  }

  List<String> getVariables() {
    return _root.getVariables();
  }

  bool run({Map<String, dynamic>? values, Map<String, dynamic>? properties}) {
    var condition = ConditionOperand(_root);
    var processValue = ProcessValue();
    processValue.values = values;
    processValue.properties = properties;
    return condition.getValue(processValue);
  }
}

/// Expression runner
class ExpressionRunner {
  String? _expressionValue;
  ProcessValue? _processValue;
  Operand? _operand;

  ExpressionRunner(String? expression) {
    this.expression = expression;
    _processValue = ProcessValue();
  }

  String? get expression => _expressionValue;

  set expression(String? value) {
    if (expression == value) return;
    _expressionValue = value;
    _operand = ConditionsParser().parseExpression(_expressionValue);
  }

  bool canRun() {
    return _operand != null;
  }

  dynamic run(
      {Map<String, dynamic>? values, Map<String, dynamic>? properties}) {
    if (_operand == null) return null;
    _processValue!.values = values;
    _processValue!.properties = properties;
    return _operand!.getValue(_processValue);
  }
}
