import 'package:flutter_js/javascript_runtime.dart';
import 'package:flutter_test/flutter_test.dart';

import 'package:flutter_survey_js_expression/flutter_survey_js_expression.dart';

void main() {
  TestWidgetsFlutterBinding.ensureInitialized();
  Runner runner = getRunner();

  setUp(() async {
    await runner.init();
  });
  tearDown(() async {
    try {
      await runner.dispose();
    } on Error catch (_) {}
  });
  test('Run one condition', () async {
    const expression = "{a} > 5";

    expect(runner.runCondition(expression, {"a": 6}), true);
  });
  test('Condition check #303', () async {
    const expression =
        "({question-fruit} = 'fruit-apple' and {question-apple-variety} = 'apple-variety-red-delicious') or ({question-fruit} = 'fruit-orange' and {question-orange-variety} = 'orange-variety-blood')";

    expect(runner.runCondition(expression, {}), false);
  });
}
