import 'dart:core';

import 'package:flutter/material.dart';
import 'package:flutter_survey_js/survey.dart' as s;
import 'package:flutter_test/flutter_test.dart';

import '../test_data.dart';

main() {
  group('SurveyController', () {
    group('submit', () {
      testWidgets('calls SurveyWidget.onSubmit', (widgetTester) async {
        final s.SurveyController controller = s.SurveyController();
        int onSubmitCallCount = 0;
        await widgetTester.pumpWidget(
          MaterialApp(
            localizationsDelegates: [
              s.MultiAppLocalizationsDelegate(),
            ],
            home: Material(
              child: s.SurveyWidget(
                survey: TestData.survey(
                  pages: [
                    TestData.page(
                      elements: [
                        s.Text(),
                      ],
                    ),
                  ],
                ),
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

    testWidgets('attaches to SurveyProvider', (widgetTester) async {
      final s.SurveyController controller = s.SurveyController();
      final String submitButtonText = 'Click me to submit!';
      int onSubmitCallCount = 0;
      await widgetTester.pumpWidget(
        MaterialApp(
          localizationsDelegates: [
            s.MultiAppLocalizationsDelegate(),
          ],
          home: Material(
            child: s.SurveyWidget(
              survey: TestData.survey(
                pages: [
                  TestData.page(
                    elements: [
                      s.Text(),
                    ],
                  ),
                ],
              ),
              controller: controller,
              builder: (context) => TextButton(
                onPressed: s.SurveyProvider.of(context).controller?.submit,
                child: Text(submitButtonText),
              ),
              onSubmit: (_) => onSubmitCallCount++,
            ),
          ),
        ),
      );
      await widgetTester.pump();
      await widgetTester.idle();
      await widgetTester.tap(find.text(submitButtonText));
      expect(onSubmitCallCount, 1);
    });
  });
}
