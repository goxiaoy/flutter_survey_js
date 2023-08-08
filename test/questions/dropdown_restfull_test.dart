import 'package:flutter_survey_js/survey.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  // 单一的测试
  const json = {
    "questions": [
      {
        "type": "dropdown",
        "name": "country",
        "title": "Select the country...",
        "isRequired": true,
        "choicesByUrl": {
          "url": "http://127.0.0.1:8080/testCafe/countriesMock.json",
          "path": "RestResponse;result",
          "valueName": "name"
        }
      }
    ]
  };
  test("Serialize Deserialize Survey", () {
    surveyFromJson(json);
  });
}
