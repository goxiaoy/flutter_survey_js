library flutter_survey_js_expression;

export 'stub.dart'
    if (dart.library.io) 'other_runner.dart'
    if (dart.library.html) 'web_runner.dart';

abstract class Runner {
  Future<bool> init();
  bool? runCondition(String expression, Map<String, Object?> value,
      {Map<String, Object?>? properties});
  dynamic runExpression(String expression, Map<String, Object?> value,
      {Map<String, Object?>? properties});
  Future<bool> dispose();
}
