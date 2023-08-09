import 'package:flutter_survey_js/flutter_survey_js.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  // 单一的测试
  const json = {
    "questions": [
      {
        "type": "matrixdropdown",
        "name": "frameworksRate",
        "title":
            "Please tells us your opinion about JavaScript MVVM frameworks",
        "choices": ["Excelent", "Good", "Average", "Fair", "Poor"],
        "columns": [
          {
            "name": "using",
            "title": "Do you use it?",
            "choices": ["Yes", "No"],
            "cellType": "radiogroup"
          },
          {
            "name": "experience",
            "title": "How long do you use it?",
            "choices": [
              {"value": 5, "text": "3-5 years"},
              {"value": 2, "text": "1-2 years"},
              {"value": 1, "text": "less than a year"}
            ]
          },
          {
            "name": "strength",
            "title": "What is main strength?",
            "choices": ["Easy", "Compact", "Fast", "Powerfull"],
            "cellType": "checkbox"
          },
          {
            "name": "knowledge",
            "title": "Please describe your experience",
            "cellType": "text"
          },
          {"name": "rate", "title": "Please rate the framework itself"}
        ],
        "rows": [
          {"value": "angularv1", "text": "angularjs v1.x"},
          {"value": "angularv2", "text": "angularjs v2"},
          {"value": "knockoutjs"},
          {"value": "reactjs"}
        ]
      }
    ]
  };
  test("Serialize Deserialize Survey", () {
    surveyFromJson(json);
  });
}
