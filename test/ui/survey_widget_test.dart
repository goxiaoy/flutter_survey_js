import 'dart:core';

import 'package:flutter/material.dart';
import 'package:flutter_survey_js/survey.dart';
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
}
