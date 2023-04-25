import 'dart:core';

import 'package:flutter/material.dart';
import 'package:flutter_survey_js/survey.dart';

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
    final s = surveyFromJson(json);
  });

  group('ratingBuilder', () {
    testWidgets(
      'reflects non-null default values',
      (widgetTester) async {
        const int defaultValue = 3;
        const String elementName = 'some rating';
        await widgetTester.pumpWidget(
          MaterialApp(
            localizationsDelegates: const [
              MultiAppLocalizationsDelegate(),
            ],
            home: Material(
              child: SurveyWidget(
                survey: surveyFromJson({
                  {
                    "pages": {
                      "elements": [
                        {
                          "type": "rating",
                          "defaultValue": defaultValue,
                          "name": elementName
                        }
                      ]
                    }
                  }
                })!,
              ),
            ),
          ),
        );
        await widgetTester.pump();
        await widgetTester.idle();
        final SurveyProvider surveyProvider =
            widgetTester.widget(find.byType(SurveyProvider)) as SurveyProvider;
        expect(surveyProvider.formGroup.value, {elementName: defaultValue});
      },
    );

    testWidgets(
      'reflects null default values',
      (widgetTester) async {
        const String elementName = 'some rating';
        await widgetTester.pumpWidget(
          MaterialApp(
            localizationsDelegates: const [
              MultiAppLocalizationsDelegate(),
            ],
            home: Material(
              child: SurveyWidget(
                survey: surveyFromJson({
                  {
                    "pages": {
                      "elements": [
                        {"type": "rating", "name": elementName}
                      ]
                    }
                  }
                })!,
              ),
            ),
          ),
        );
        await widgetTester.pump();
        await widgetTester.idle();
        final surveyProvider =
            widgetTester.widget(find.byType(SurveyProvider)) as SurveyProvider;
        expect(surveyProvider.formGroup.value, {elementName: null});
      },
    );
  });
}
