import 'package:flutter_survey_js/survey.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  // 单一的测试
  const json = {
    "questions": [
      {
        "type": "buttongroup",
        "name": "radio",
        "title": "Question with Button Group",
        "renderAs": "button-group",
        "choices": ["Choice 1", "Choice 2"]
      }
    ]
  };
  test("Serialize Deserialize Survey", () {
    final s = surveyFromJson(json);
  });
}
