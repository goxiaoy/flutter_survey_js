import 'package:flutter_survey_js/survey.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  // 单一的测试
  const json = {
    "questions": [
      {
        "type": "html",
        "name": "info",
        "html":
            "<table><body><row><td><img src='https://surveyjs.io/Content/Images/examples/26178-20160417.jpg' width='100px' /></td><td style='padding:20px'>You may put here any html code. For example images, <b>text</b> or <a href='https://surveyjs.io/Editor/Editor/'  target='_blank'>links</a></td></row></body></table>"
      }
    ]
  };
  test("Serialize Deserialize Survey", () {
    surveyFromJson(json);
  });
}
