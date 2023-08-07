@TestOn('browser || vm')
import 'dart:convert';

import 'package:flutter_test/flutter_test.dart';

import 'package:flutter_survey_js_expression/flutter_survey_js_expression.dart';

void main() {
  TestWidgetsFlutterBinding.ensureInitialized();
  Runner runner = getRunner();

  setUp(() async {
    await runner.init();
  });
  // tearDown(() async {
  //   try {
  //     await runner.dispose();
  //   } on Error catch (_) {}
  // });
  test('Run one condition', () async {
    const expression = "{a} > 5";
    expect(runner.runCondition(expression, {"a": 6}), true);
  });
  test('Condition check #303', () async {
    const expression =
        "({question-fruit} = 'fruit-apple' and {question-apple-variety} = 'apple-variety-red-delicious') or ({question-fruit} = 'fruit-orange' and {question-orange-variety} = 'orange-variety-blood')";
    expect(runner.runCondition(expression, {}), false);
  });

  test('SumInArray', () async {
    const expression = "sumInArray({items}, 'quantity')";
    const a =
        "{\"items\":[{\"name\":\"abc\",\"cost\":50,\"vendor\":\"ddd\",\"quantity\":10,\"link\":null,\"total\":null}],\"totalQuantity\":null,\"totalCost\":null}";

    expect(runner.runExpression(expression, jsonDecode(a)), 10);
  });
}
