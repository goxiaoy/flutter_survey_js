import 'package:flutter_survey_js/model/survey.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  // 单一的测试
  const json = {
    "questions": [
      {
        "type": "comment",
        "name": "suggestions",
        "title": "What would make you more satisfied with the Product?"
      }
    ]
  };
  test("Serialize Deserialize Survey", () {
    final s = Survey.fromJson(json);
  });
}
