import 'helper.dart';

/// Warning: These codes porting from survey js
/// TODO: review
///
class ValueCore {
  bool? hasValue;
  dynamic value;
}

class ValueText {
  String? text;
  dynamic value;
}

class ProcessValue {
  Map? values;
  Map? properties;

  @override
  String toString() {
    return 'values:' +
        values.toString() +
        ' properties:' +
        properties.toString();
  }

  static String getFirstName(String text) {
    if (text.isEmpty) return text;
    var res = "";
    for (var i = 0; i < text.length; i++) {
      var ch = text[i];
      if (ch == "." || ch == "[") break;
      res += ch;
    }
    return res;
  }

  bool? hasValue({String? text, Map? values}) {
    if (values == null) values = this.values;
    var res = this._getValueCore(text, values);
    return res.hasValue;
  }

  void setValue(dynamic obj, String? text, dynamic value) {
    if (text == null) return;
    var nonNestedObj = this._getNonNestedObject(obj, text);
    if (nonNestedObj == null) return;
    obj = nonNestedObj.value;
    text = nonNestedObj.text;
    if (obj != null && text != null) {
      obj[text] = value;
    }
  }

  dynamic getValue({String? text, Map? values}) {
    assert(text != null && text.isNotEmpty);
    if (values == null) values = this.values;
    var res = this._getValueCore(text, values);
    return res.value;
  }

  ValueCore _getValueCore(String? text, dynamic values) {
    var res = ValueCore()
      ..hasValue = false
      ..value = null;
    var curValue = values;
    if (curValue == null) return res;

    if (text != null &&
        text.lastIndexOf(".length") > -1 &&
        text.lastIndexOf(".length") == text.length - ".length".length) {
      res.value = 0;
      res.hasValue = true;
    }
    var nonNestedObj = this._getNonNestedObject(curValue, text!);
    if (nonNestedObj == null) return res;
    res.value = nonNestedObj.text != null
        ? this._getObjectValue(nonNestedObj.value, nonNestedObj.text)
        : nonNestedObj.value;
    res.hasValue = !Helpers.isValueEmpty(res.value);
    return res;
  }

  ValueText? _getNonNestedObject(dynamic obj, String text) {
    while (text != ProcessValue.getFirstName(text) && obj != null) {
      var isArray = text[0] == "[";
      if (!isArray) {
        var curName = ProcessValue.getFirstName(text);
        obj = this._getObjectValue(obj, curName);
        if (obj == null) return null;
        text = text.substring(curName.length);
      } else {
        var objInArray = this._getObjInArray(obj, text);
        if (!objInArray) return null;
        obj = objInArray.value;
        text = objInArray.text;
      }
      if (text != null && text[0] == ".") {
        text = text.substring(1);
      }
    }
    return ValueText()
      ..value = obj
      ..text = text;
  }

  dynamic _getObjInArray(List curValue, String text) {
    var index = 1;
    var str = "";
    while (index < text.length && text[index] != "]") {
      str += text[index];
      index++;
    }
    text = index < text.length ? text.substring(index + 1) : "";
    index = this._getIntValue(str);
    if (index < 0 || index >= curValue.length) return null;
    return ValueText()
      ..value = curValue[index]
      ..text = text;
  }

  dynamic _getObjectValue(Map obj, String? name) {
    if (obj.containsKey(name)) return obj[name];
    name = name!.toLowerCase();
    var A = name[0];
    var a = A.toUpperCase();
    for (var key in obj.keys) {
      var first = key[0];
      if (first == a || first == A) {
        if (key.toLowerCase() == name) return obj[key];
      }
    }
    return null;
  }

  int _getIntValue(dynamic str) {
    if (str == "0" || ((str | 0) > 0 && str % 1 == 0)) return int.parse(str);
    return -1;
  }
}
