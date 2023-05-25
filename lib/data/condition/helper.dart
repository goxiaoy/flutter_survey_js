class SimpleValue {
  late bool isSimple;
  dynamic value;
}

class Helpers {
  static bool isBooleanValue(String value) {
    return value.isNotEmpty &&
        (value.toLowerCase() == "true" || value.toLowerCase() == "false");
  }

  static bool isNumeric(String? value) {
    if (value == null) {
      return false;
    }
    return num.tryParse(value) != null;
  }

  static SimpleValue getSimpleValue(dynamic val) {
    var res = SimpleValue()
      ..isSimple = false
      ..value = val;
    if (val == null) {
      /// Should be handled previously
      assert(false);
      return res;
    }

    if (val.runtimeType != String) {
      res.isSimple = true;
      return res;
    }

    if (isNumeric(val)) {
      dynamic value;
      value = num.parse(val);
      res.isSimple = true;
      res.value = value;
      return res;
    }
    if (isBooleanValue(val)) {
      res.isSimple = true;
      res.value = val.toLowerCase() == "true" ? true : false;
      return res;
    }
    return res;
  }

  static bool isValueEmpty(dynamic value) {
    if (value.runtimeType == List) return true;
    if (value != null && (value.runtimeType == String)) {
      return value.toString().isEmpty;
    }
    return value == null;
  }

  static bool isArrayContainsEqual(List x, List y) {
    if (x.length != y.length) return false;
    for (var i = 0; i < x.length; i++) {
      var j = 0;
      for (; j < y.length; j++) {
        if (Helpers.isTwoValueEquals(x[i], y[j], false)!) break;
      }
      if (j == y.length) return false;
    }
    return true;
  }

  static bool isArraysEqual(List x, List y, bool ignoreOrder /*false*/) {
    if (x.length != y.length) return false;
    if (ignoreOrder) {
      var xSorted = [];
      var ySorted = [];
      for (var i = 0; i < x.length; i++) {
        xSorted.add(x[i]);
        ySorted.add(y[i]);
      }
      xSorted.sort();
      ySorted.sort();
      x = xSorted;
      y = ySorted;
    }
    for (var i = 0; i < x.length; i++) {
      if (!Helpers.isTwoValueEquals(x[i], y[i], false)!) return false;
    }
    return true;
  }

  static bool? isTwoValueEquals(
      dynamic x, dynamic y, bool ignoreOrder /* boolean = false*/) {
    if (x == y) return true;
    if ((x != null && y == null) || (x == null && y != null)) return false;
    if (!(x.runtimeType == Object) && !(y.runtimeType == Object)) return x == y;
    if (!(x.runtimeType == Object) || !(y.runtimeType == Object)) return false;
    if (x["equals"]) return x.equals(y);
    if ((x.runtimeType == List) && (y.runtimeType == List)) {
      return Helpers.isArraysEqual(x, y, ignoreOrder);
    }
    for (var p in x) {
      if (!x.hasOwnProperty(p)) continue;
      if (!y.hasOwnProperty(p)) return false;
      if (x[p] == y[p]) continue;
      if (x[p].runtimeType != Object) return false;
      if (!Helpers.isTwoValueEquals(x[p], y[p], false)!) return false;
    }
    for (var p in y) {
      if (y.hasOwnProperty(p) && !x.hasOwnProperty(p)) return false;
    }
    return true;
  }

  /// TODO: implementation
/*
  static List<T> randomizeArray<T>(List<T> array) {
    for (var i = array.length - 1; i > 0; i--) {
      var j = Math.floor(Math.random() * (i + 1));
      var temp = array[i];
      array[i] = array[j];
      array[j] = temp;
    }
    return array;
  }
  */
}
/*
  static dynamic getUnbindValue(dynamic value) {
    if (value != null && value.runtimeType == Object) {
      //do not return the same object instance!!!
      return JSON.parse(JSON.stringify(value));
      /*
      if (value instance of Date) {
        let res = new Date();
        res.setTime(value.getTime());
        return res;
      }
      if (value instanceof Array) {
        let res = [];
        for (let i = 0, len = value.length; i < len; i++) {
          res[i] = Helpers.getUnbindValue(value[i]);
        }
        return res;
      }
      let res = {};
      for (var attr in value) {
        if (value.hasOwnProperty(attr)) {
          (<any>res)[attr] = Helpers.getUnbindValue(value[attr]);
        }
      }
      return res;
      */
    }
    return value;
  }

  static dynamic getMaxLength(int maxLength, int surveyLength) {
    if (maxLength < 0) {
      maxLength = surveyLength;
    }
    return maxLength > 0 ? maxLength : null;
  }
}


if (!(<any>String.prototype)["format"]) {
(<any>String.prototype)["format"] = function() {
var args = arguments;
return this.replace(/{(\d+)}/g, function(match: any, number: any) {
return typeof args[number] != "undefined" ? args[number] : match;
});
};
*/
