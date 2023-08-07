library flutter_survey_js_expression;

import 'package:flutter/services.dart';
import 'package:flutter_js/flutter_js.dart';

Future<JavascriptRuntime> initJsEngine() async {
  final jsRuntime = getJavascriptRuntime(xhr: false);
  var a = jsRuntime.evaluate("""var window = global = globalThis;""");
  if (a.isError) {
    throw Exception(a.rawResult);
  }
  final expressionJs = await rootBundle.loadString("assets/index.js");
  a = jsRuntime.evaluate(expressionJs);
  if (a.isError) {
    throw Exception(a.rawResult);
  }
  return jsRuntime;
}
