import 'dart:convert';

import 'package:flutter_js/flutter_js.dart';
import 'package:flutter_survey_js_expression/flutter_survey_js_expression.dart';
import 'package:flutter_survey_js_expression/js_engine.dart';

class OtherRunner implements Runner {
  late JavascriptRuntime jsRuntime;

  @override
  bool? runCondition(String expression, Map<String, Object?> value,
      {Map<String, Object?>? properties}) {
    final exp =
        """global.surveyjs.runConditon("$expression",${json.encode(value)})""";
    final jsResult = jsRuntime.evaluate(exp);
    if (jsResult.isError) {
      throw Exception(jsResult.rawResult);
    }
    return bool.tryParse(jsResult.stringResult);
  }

  @override
  dynamic runExpression(String expression, Map<String, Object?> value,
      {Map<String, Object?>? properties}) {
    final exp =
        """global.surveyjs.runExpression("$expression",${json.encode(value)})""";
    final jsResult = jsRuntime.evaluate(exp);
    if (jsResult.isError) {
      throw Exception(jsResult.rawResult);
    }
    return jsResult.rawResult;
  }

  @override
  Future<bool> init() async {
    jsRuntime = await initJsEngine();
    return true;
  }

  @override
  Future<bool> dispose() async {
    jsRuntime.dispose();
    return true;
  }
}

final OtherRunner _singleton = OtherRunner();
Runner getRunner() => _singleton;
