import 'dart:convert';

import 'package:flutter/services.dart';
import 'package:flutter_js/flutter_js.dart';
import 'package:flutter_survey_js_expression/flutter_survey_js_expression.dart';
import 'package:synchronized/synchronized.dart';

String escape(String raw) {
  return raw.replaceAll("\"", "\\\"");
}

Future<JavascriptRuntime> initJsEngine() async {
  final jsRuntime = getJavascriptRuntime(xhr: false);
  var a = jsRuntime.evaluate("""var window = global = globalThis;""");
  if (a.isError) {
    throw Exception(a.rawResult);
  }
  final expressionJs = await rootBundle
      .loadString("packages/flutter_survey_js_expression/assets/index.js");
  a = jsRuntime.evaluate(expressionJs);
  if (a.isError) {
    throw Exception(a.rawResult);
  }
  //validate
  var loaded =
      jsRuntime.evaluate("""var isLoaded = (typeof surveyjs == 'undefined') ? 
          "0" : "1"; isLoaded;
        """).stringResult;
  if (loaded == "0") {
    throw Exception("Js unloaded");
  }
  return jsRuntime;
}

class VMRunner implements Runner {
  JavascriptRuntime? jsRuntime;
  final lock = Lock();
  @override
  bool? runCondition(String expression, Map<String, Object?> value,
      {Map<String, Object?>? properties}) {
    final exp =
        '''surveyjs.runCondition("$expression","${escape(json.encode(value))}")''';
    final jsResult = jsRuntime!.evaluate(exp);
    if (jsResult.isError) {
      throw Exception(jsResult.rawResult);
    }
    return bool.tryParse(jsResult.stringResult);
  }

  @override
  Object? runExpression(String expression, Map<String, Object?> value,
      {Map<String, Object?>? properties}) {
    final exp =
        '''surveyjs.runExpression("$expression","${escape(json.encode(value))}")''';
    final jsResult = jsRuntime!.evaluate(exp);
    if (jsResult.isError) {
      throw Exception(jsResult.rawResult);
    }
    return jsResult.rawResult;
  }

  @override
  Future<bool> init() async {
    await lock.synchronized(() async {
      jsRuntime ??= await initJsEngine();
    });
    return true;
  }

  @override
  Future<bool> dispose() async {
    jsRuntime!.dispose();
    return true;
  }
}

final VMRunner _singleton = VMRunner();
Runner getRunner() => _singleton;
