import 'package:flutter_survey_js/model/survey.dart';
import 'package:flutter_test/flutter_test.dart';

main() {
  group('fromJson', () {
    test('returns an UnsupportedElement when `type` is not supported', () {
      final ElementBase actual = ElementBase.fromJson({
        "type": "tagbox",
        "choicesByUrl": {"url": "https://surveyjs.io/api/CountriesExample"},
        "name": "countries",
        "title":
            "Which countries have you visited within the last three years?",
        "description": "Please select all that apply.",
      });
      const Type expected = UnsupportedElement;
      expect(actual.runtimeType, expected);
    });
  });
}
