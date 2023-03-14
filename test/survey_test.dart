import 'package:flutter_survey_js/model/survey.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('JsonSerializable', () {
    group('showQuestionNumbers', () {
      test('parses as "on" string when json value is `true` boolean', () {
        final String expected = 'on';
        final Survey survey = Survey.fromJson(
          {
            "title": "Software developer survey.",
            "pages": [
              {
                "elements": [
                  {
                    "type": "text",
                    "isRequired": true,
                    "name": "question 1",
                  },
                ]
              }
            ],
            "showQuestionNumbers": true,
          },
        );
        final String? actual = survey.showQuestionNumbers;
        expect(actual, expected);
      });

      test('parses as "off" string when json value is `false` boolean', () {
        final String expected = 'off';
        final Survey survey = Survey.fromJson(
          {
            "title": "Software developer survey.",
            "pages": [
              {
                "elements": [
                  {
                    "type": "text",
                    "isRequired": true,
                    "name": "question 1",
                  },
                ]
              }
            ],
            "showQuestionNumbers": false,
          },
        );
        final String? actual = survey.showQuestionNumbers;
        expect(actual, expected);
      });

      test('does not modify string json values', () {
        final String expected = 'some_showQuestionNumbers_value';
        final Survey survey = Survey.fromJson(
          {
            "title": "Software developer survey.",
            "pages": [
              {
                "elements": [
                  {
                    "type": "text",
                    "isRequired": true,
                    "name": "question 1",
                  },
                ]
              }
            ],
            "showQuestionNumbers": expected,
          },
        );
        final String? actual = survey.showQuestionNumbers;
        expect(actual, expected);
      });
    });
  });
}
