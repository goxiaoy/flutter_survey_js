import 'package:flutter_survey_js/model/survey.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  // 单一的测试
  const json = {
    "questions": [
      {
        "type": "boolean",
        "name": "bool",
        "title": "Please answer the question",
        "label": "Are you 21 or older?",
        "isRequired": true
      }
    ]
  };
  test("Serialize Deserialize Survey", () {
    final s = Survey.fromJson(json);
  });
}
