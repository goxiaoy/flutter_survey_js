import 'package:flutter_survey_js/survey.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  // 单一的测试
  const json = {
    "questions": [
      {
        "type": "file",
        "title": "Please upload your photo",
        "name": "image",
        "storeDataAsText": true,
        "allowMultiple": true,
        "showPreview": true,
        "needConfirmRemoveFile": true,
        "imageWidth": 150,
        "maxSize": 102400
      }
    ]
  };
  test("Serialize Deserialize Survey", () {
    surveyFromJson(json);
  });
}
