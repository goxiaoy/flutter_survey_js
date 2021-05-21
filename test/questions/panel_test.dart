import 'package:flutter_survey_js/model/survey.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  // 单一的测试
  const json = {
    "pages": [
      {
        "name": "page1",
        "elements": [
          {"type": "comment", "name": "question1"},
          {
            "type": "panel",
            "title": "Panel 1",
            "state": "expanded",
            "elements": [
              {
                "type": "checkbox",
                "choices": [
                  {"value": "1", "text": "first item"},
                  {"value": "2", "text": "second item"},
                  {"value": "3", "text": "third item"}
                ],
                "name": "question2"
              },
              {
                "type": "panel",
                "elements": [
                  {
                    "type": "dropdown",
                    "choices": [
                      {"value": "1", "text": "first item"},
                      {"value": "2", "text": "second item"},
                      {"value": "3", "text": "third item"}
                    ],
                    "name": "question3"
                  },
                  {"type": "rating", "name": "question4"}
                ],
                "innerIndent": 1,
                "name": "panel2"
              }
            ],
            "innerIndent": 1,
            "name": "panel1"
          }
        ]
      }
    ]
  };
  test("Serialize Deserialize Survey", () {
    final s = Survey.fromJson(json);
  });
}
