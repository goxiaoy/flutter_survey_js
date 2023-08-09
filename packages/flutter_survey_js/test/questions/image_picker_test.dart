import 'package:flutter_survey_js/flutter_survey_js.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  // 单一的测试
  const json = {
    "questions": [
      {
        "type": "imagepicker",
        "name": "choosepicture",
        "title": "What animal would you like to see first ?",
        "isRequired": true,
        "choices": [
          {
            "value": "lion",
            "imageLink":
                "https://surveyjs.io/Content/Images/examples/image-picker/lion.jpg"
          },
          {
            "value": "giraffe",
            "imageLink":
                "https://surveyjs.io/Content/Images/examples/image-picker/giraffe.jpg"
          },
          {
            "value": "panda",
            "imageLink":
                "https://surveyjs.io/Content/Images/examples/image-picker/panda.jpg"
          },
          {
            "value": "camel",
            "imageLink":
                "https://surveyjs.io/Content/Images/examples/image-picker/camel.jpg"
          }
        ]
      }
    ]
  };
  test("Serialize Deserialize Survey", () {
    surveyFromJson(json);
  });
}
