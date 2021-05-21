import 'conditions_parser.dart';
import 'nodes.dart';
import 'operand.dart';
import 'process.dart';

// Condition Runner
// Port from survey js
class ConditionRunner {
  String? _expressionValue;
  final ConditionNode _root = new ConditionNode();

  ConditionRunner(String? expressionValue) {
    expression = expressionValue;
  }

  String? get expression => this._expressionValue;

  set expression(String? value) {
    if (this.expression != value) {
      this._expressionValue = value;
      new ConditionsParser().parse(this._expressionValue, this._root);
    }
  }

  List<String> getVariables() {
    return this._root != null ? this._root.getVariables() : [];
  }

  bool run({Map<String, dynamic>? values, Map<String, dynamic>? properties}) {
    var condition = new ConditionOperand(this._root);
    var processValue = new ProcessValue();
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
    this._processValue = new ProcessValue();
  }

  String? get expression => this._expressionValue;

  set expression(String? value) {
    if (this.expression == value) return;
    this._expressionValue = value;
    this._operand =
        new ConditionsParser().parseExpression(this._expressionValue);
  }

  bool canRun() {
    return this._operand != null;
  }

  dynamic run(
      {Map<String, dynamic>? values, Map<String, dynamic>? properties}) {
    if (this._operand == null) return null;
    this._processValue!.values = values;
    this._processValue!.properties = properties;
    return this._operand!.getValue(this._processValue);
  }
}
