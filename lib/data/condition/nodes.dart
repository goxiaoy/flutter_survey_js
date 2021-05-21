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
    this._connectiveValue = value;
  }

  get isEmpty => this.children!.length == 0;

  void clear() {
    this.children = [];
    this.connective = "and";
  }

  List<String> getVariables() {
    var vars = <String>[];
    this.fillVariables(vars);
    return vars;
  }

  void fillVariables(List<String> vars) {
    for (var i = 0; i < this.children!.length; i++) {
      this.children![i].fillVariables(vars);
    }
  }

  @override
  String toString() {
    if (this.isEmpty) return "";
    var res = "";
    for (var i = 0; i < this.children!.length; i++) {
      var child = this.children![i];
      var nodeText = child.toString();
      if (this.children != null && this.children!.length > 0) {
        nodeText = "(" + nodeText + ")";
      }
      if (nodeText != null) {
        if (res != null) res += " " + this.connective + " ";
        res += nodeText;
      }
    }
    return res;
  }
}
