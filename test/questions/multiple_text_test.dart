import 'package:flutter_survey_js/model/survey.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  // 单一的测试
  const json = {
    "questions": [
      {
        "type": "multipletext",
        "name": "pricelimit",
        "title": "What is the... ",
        "colCount": 2,
        "items": [
          {
            "name": "mostamount",
            "title": "Most amount you would every pay for a product like ours"
          },
          {
            "name": "leastamount",
            "title": "The least amount you would feel comfortable paying"
          }
        ]
      }
    ]
  };
  test("Serialize Deserialize Survey", () {
    final s = Survey.fromJson(json);
  });
}
