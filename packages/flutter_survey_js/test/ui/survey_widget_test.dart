import 'dart:core';

import 'package:flutter/material.dart';
import 'package:flutter_survey_js/flutter_survey_js.dart';
import 'package:flutter_test/flutter_test.dart';

main() {
  group('SurveyController', () {
    group('submit', () {
      testWidgets('calls SurveyWidget.onSubmit', (widgetTester) async {
        final SurveyController controller = SurveyController();
        int onSubmitCallCount = 0;
        await widgetTester.pumpWidget(
          MaterialApp(
            localizationsDelegates: const [
              MultiAppLocalizationsDelegate(),
            ],
            home: Material(
              child: SurveyWidget(
                survey: surveyFromJson({
                  "questions": [
                    {
                      "name": "name",
                      "type": "text",
                      "state": "expanded",
                      "title": "Please enter your name:"
                    },
                  ]
                })!,
                controller: controller,
                onSubmit: (_) => onSubmitCallCount++,
              ),
            ),
          ),
        );
        await widgetTester.pump();
        await widgetTester.idle();
        controller.submit();
        expect(onSubmitCallCount, 1);
      });
    });
  });

  group('removingEmptyFields', () {
    testWidgets('removes empty fields from survey response when true',
        (widgetTester) async {
      Map<String, dynamic>? surveyResponse;
      final controller = SurveyController();
      await widgetTester.pumpWidget(
        MaterialApp(
          localizationsDelegates: const [
            MultiAppLocalizationsDelegate(),
          ],
          home: Material(
            child: SurveyWidget(
              survey: surveyFromJson({
                "logoPosition": "right",
                "pages": [
                  {
                    "name": "page1",
                    "elements": [
                      {
                        "type": "checkbox",
                        "name": "question1",
                        "choices": ["Item 1", "Item 2", "Item 3"]
                      }
                    ]
                  }
                ]
              })!,
              removingEmptyFields: true,
              controller: controller,
              onSubmit: (response) => surveyResponse = response,
            ),
          ),
        ),
      );
      await widgetTester.pump();
      await widgetTester.idle();
      controller.submit();
      expect(surveyResponse?.isEmpty, isTrue);
    });

    testWidgets('does not remove empty fields from survey response when false',
        (widgetTester) async {
      Map<String, dynamic>? surveyResponse;
      final controller = SurveyController();
      await widgetTester.pumpWidget(
        MaterialApp(
          localizationsDelegates: const [
            MultiAppLocalizationsDelegate(),
          ],
          home: Material(
            child: SurveyWidget(
              survey: surveyFromJson({
                "logoPosition": "right",
                "pages": [
                  {
                    "name": "page1",
                    "elements": [
                      {
                        "type": "checkbox",
                        "name": "question1",
                        "choices": ["Item 1", "Item 2", "Item 3"]
                      }
                    ]
                  }
                ]
              })!,
              removingEmptyFields: false,
              controller: controller,
              onSubmit: (response) => surveyResponse = response,
            ),
          ),
        ),
      );
      await widgetTester.pump();
      await widgetTester.idle();
      controller.submit();
      expect(surveyResponse?.isEmpty, isFalse);
      expect(surveyResponse?['question1'], []);
    });
  });
}
