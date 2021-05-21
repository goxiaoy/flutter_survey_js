import 'package:flutter_survey_js/model/survey.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  // 单一的测试
  const json = {
    "questions": [
      {
        "type": "matrix",
        "name": "Quality",
        "title":
            "Please indicate if you agree or disagree with the following statements",
        "columns": [
          {"value": 1, "text": "Strongly Disagree"},
          {"value": 2, "text": "Disagree"},
          {"value": 3, "text": "Neutral"},
          {"value": 4, "text": "Agree"},
          {"value": 5, "text": "Strongly Agree"}
        ],
        "rows": [
          {"value": "affordable", "text": "Product is affordable"},
          {
            "value": "does what it claims",
            "text": "Product does what it claims"
          },
          {
            "value": "better than others",
            "text": "Product is better than other products on the market"
          },
          {"value": "easy to use", "text": "Product is easy to use"}
        ]
      }
    ]
  };
  test("Serialize Deserialize Survey", () {
    final s = Survey.fromJson(json);
  });
}
