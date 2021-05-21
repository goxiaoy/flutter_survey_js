import 'package:flutter_survey_js/model/survey.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  // 单一的测试
  const json = {
    "questions": [
      {
        "type": "rating",
        "name": "satisfaction",
        "title": "How satisfied are you with the Product?",
        "mininumRateDescription": "Not Satisfied",
        "maximumRateDescription": "Completely satisfied"
      }
    ]
  };
  test("Serialize Deserialize Survey", () {
    final s = Survey.fromJson(json);
  });
}
