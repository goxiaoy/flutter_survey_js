import 'package:flutter_survey_js/survey.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  // 单一的测试
  const json = {
    "pages": [
      {
        "name": "page1",
        "elements": [
          {"type": "text", "name": "question1"}
        ]
      },
      {
        "name": "page2",
        "elements": [
          {"type": "text", "name": "question2"}
        ]
      },
      {
        "name": "page3",
        "elements": [
          {"type": "text", "name": "question3"}
        ]
      }
    ],
    "showProgressBar": "top",
    "progressBarType": "buttons"
  };
  test("Serialize Deserialize Survey", () {
    surveyFromJson(json);
  });
}
