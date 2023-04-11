class ConditionNode {
  String _connectiveValue = "and";
  bool isNot = false;
  List? children = [];

  String get connective => _connectiveValue;

  set connective(String value) {
    if (value.isEmpty) return;
    value = value.toLowerCase();
    if (value == "&" || value == "&&") value = "and";
    if (value == "|" || value == "||") value = "or";
    if (value != "and" && value != "or") return;
    _connectiveValue = value;
  }

  get isEmpty => children!.isEmpty;

  void clear() {
    children = [];
    connective = "and";
  }

  List<String> getVariables() {
    var vars = <String>[];
    fillVariables(vars);
    return vars;
  }

  void fillVariables(List<String> vars) {
    for (var i = 0; i < children!.length; i++) {
      children![i].fillVariables(vars);
    }
  }

  @override
  String toString() {
    if (isEmpty) return "";
    var res = "";
    for (var i = 0; i < children!.length; i++) {
      var child = children![i];
      var nodeText = child.toString();
      if (children != null && children!.isNotEmpty) {
        nodeText = "($nodeText)";
      }
 res += " ${connective} ";
      res += nodeText;
    }
    return res;
  }
}
