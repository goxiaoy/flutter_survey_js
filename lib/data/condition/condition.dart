import 'helper.dart';
import 'operand.dart';
import 'process.dart';

class Condition {
  String _opValue = "equal";
  Operand? _leftValue;
  Operand? _rightValue;

  // Operator map
  static Map<String, Function> operatorsValue = {
    'empty': (dynamic left, dynamic right) {
      if (left == null) return true;
      return left == null;
    },
    'notempty': (dynamic left, dynamic right) {
      if (left == null) return false;
      return left != null;
    },
    'equal': (dynamic left, dynamic right) {
      return Helpers.isTwoValueEquals(left, right, true);
    },
    'notequal': (dynamic left, dynamic right) {
      return !Helpers.isTwoValueEquals(left, right, true)!;
    },
    'contains': (dynamic left, dynamic right) {
      return Condition.operatorsValue['containsCore']!(left, right, true);
    },
    'notcontains': (dynamic left, dynamic right) {
      if (left == null && !Helpers.isValueEmpty(right)) return true;
      return Condition.operatorsValue['containsCore']!(left, right, false);
    },
    'containsCore': (dynamic left, dynamic right, bool isContains) {
      if (left == null) return false;
      if (left.length == 0) {
        left = left.toString();
      }
      if (left.runtimeType == String) {
        if (right == null) return false;
        right = right.toString();
        var found = left.indexOf(right) > -1;
        return isContains ? found : !found;
      }

      List? leftArray = left.map((value) {
        SimpleValue res = Helpers.getSimpleValue(value);
        if (res.isSimple) return res.value;
      }).toList();

      List rightArray;
      if (right.runtimeType.toString() == 'List<dynamic>' ||
          right.runtimeType.toString() == 'List<int>' ||
          right.runtimeType.toString() == 'List<double>') {
        rightArray = right;
      } else {
        rightArray = []..add(right);
      }
      bool found = false;
      if (rightArray != null && rightArray.length > 0) {
        for (int i = 0; i < rightArray.length; i++) {
          for (int j = 0; j < leftArray!.length; j++) {
            if (leftArray[j] == rightArray[i]) {
              found = true;
              break;
            }
          }
        }
      } else {
        assert(false);
        return false;
      }

      return found == isContains;
    },
    'greater': (dynamic left, dynamic right) {
      if (left == null || right == null) return false;
      return left > right;
    },
    'less': (dynamic left, dynamic right) {
      if (left == null || right == null) return false;
      return left < right;
    },
    'greaterorequal': (dynamic left, dynamic right) {
      if (left == null || right == null) return false;
      return left >= right;
    },
    'lessorequal': (dynamic left, dynamic right) {
      if (left == null || right == null) return false;
      return left <= right;
    }
  };

  static get operators => operatorsValue;

  static dynamic getOperator(String opName) => Condition.operators[opName];

  static void setOperator(String opName) {
    /// TODO: implementation
    //Condition.operators[opName] = func;
  }

  static bool isCorrectOperator(String opName) {
    if (opName.isEmpty) return false;
    opName = opName.toLowerCase();
    return operatorsValue.containsKey(opName);
  }

  static bool isNoRightOperation(String op) {
    return op == "empty" || op == "notempty";
  }

  Operand? get left => this._leftValue;

  set left(Operand? val) => this._leftValue = val;

  Operand? get right => this._rightValue;

  set right(Operand? val) => this._rightValue = val;

  String get operator => this._opValue;

  set operator(String value) {
    if (value.isEmpty) return;
    value = value.toLowerCase();
    if (Condition.operators[value] == null) return;
    this._opValue = value;
  }

  bool? perform({dynamic left, dynamic right, ProcessValue? processValue}) {
    if (left == null) left = this.left;
    if (right == null) right = this.right;
    return this.performExplicit(left, right, processValue);
  }

  bool? performExplicit(
      dynamic left, dynamic right, ProcessValue? processValue) {
    var leftValue = left != null ? left.getValue(processValue) : null;
    if (right == null && (leftValue == true || leftValue == false))
      return leftValue;
    var rightValue = right != null ? right.getValue(processValue) : null;
    //print('performExplicit:' + leftValue.toString() + '  ' + rightValue.toString());
    return Condition.operators[this.operator](leftValue, rightValue);
  }

  void fillVariables(List<String> vars) {
    if (this.left != null) this.left!.fillVariables(vars);
    if (this.right != null) this.right!.fillVariables(vars);
  }

  @override
  String toString() {
    if (this.right == null || this.operator == null) return "";
    var left = this.left.toString();
    var res = left + " " + this._operationToString();
    if (Condition.isNoRightOperation(this.operator)) return res;
    var right = this.right.toString();
    return res + " " + right;
  }

  String _operationToString() {
    var op = this.operator;
    if (op == "equal") return "=";
    if (op == "notequal") return "!=";
    if (op == "greater") return ">";
    if (op == "less") return "<";
    if (op == "greaterorequal") return ">=";
    if (op == "lessorequal") return "<=";
    return op;
  }
}
