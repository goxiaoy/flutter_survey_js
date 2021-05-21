import 'package:flutter_survey_js/model/survey.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  // 单一的测试
  const json = {
    "questions": [
      {
        "type": "matrixdropdown",
        "name": "question1",
        "columns": [
          {
            "name": "col1",
            "cellType": "radiogroup",
            "title": "What is your feeling?",
            "showInMultipleColumns": true,
            "choices": [
              "Strongly disagree",
              "Disagree",
              "Neutral",
              "Agree",
              "Strongly agree"
            ]
          },
          {"name": "comment", "title": "Please comment", "cellType": "comment"}
        ],
        "rows": [
          "Excited",
          "Enthusiastic",
          "Open",
          "Physically safe",
          "Emotionally safe",
          "Apprehensive",
          "Nervous",
          "Scared"
        ]
      }
    ]
  };
  test("Serialize Deserialize Survey", () {
    final s = Survey.fromJson(json);
  });
}
