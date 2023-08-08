import 'package:flutter_survey_js/survey.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  // 单一的测试
  const json = {
    "pages": [
      {
        "name": "page1",
        "elements": [
          {
            "type": "ranking",
            "name": "smartphone-features",
            "title":
                "Please rank the following smartphone features in order of importance:",
            "isRequired": true,
            "choices": [
              "Battery life",
              "Screen size",
              "Storage space",
              "Camera quality",
              "Durability",
              "Processor power",
              "Price"
            ]
          }
        ]
      },
      {
        "name": "page2",
        "elements": [
          {
            "type": "checkbox",
            "name": "car",
            "isRequired": true,
            "title": "What cars have you being drived?",
            "colCount": 4,
            "choicesOrder": "asc",
            "choices": [
              "Ford",
              "Vauxhall",
              "Volkswagen",
              "Nissan",
              "Audi",
              "Mercedes-Benz",
              "BMW",
              "Peugeot",
              "Toyota",
              "Citroen",
              "Tesla"
            ]
          },
          {
            "type": "ranking",
            "name": "bestcar",
            "isRequired": true,
            "visibleIf": "{car.length} > 1",
            "title": "What car did you enjoy the most?",
            "choicesFromQuestion": "car",
            "choicesFromQuestionMode": "selected"
          }
        ]
      }
    ]
  };
  test("Serialize Deserialize Survey", () {
    surveyFromJson(json);
  });
}
