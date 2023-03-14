import 'dart:core';

import 'package:flutter/material.dart';
import 'package:flutter_survey_js/survey.dart';
import 'package:flutter_survey_js/survey.dart' as s;
import 'package:flutter_survey_js/ui/survey_styles_configuration.dart';
import 'package:flutter_test/flutter_test.dart';

import '../test_data.dart';

main() {
  group('title', () {
    testWidgets(
        'is shown if SurveyStylesConfiguration has shouldShowTitle as true',
        (widgetTester) async {
      var title = 'My Title';

      await widgetTester.pumpWidget(
        MaterialApp(
          localizationsDelegates: [
            s.MultiAppLocalizationsDelegate(),
          ],
          home: Material(
            child: SurveyWidget(
              surveyStylesConfiguration: SurveyStylesConfiguration(
                showSurveyTitle: true,
              ),
              survey: TestData.survey(
                title: title,
                pages: [
                  TestData.page(
                    elements: [
                      s.Text(),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
      );
      await widgetTester.pump();
      await widgetTester.idle();

      expect(find.text(title), findsOneWidget);
    });

    testWidgets(
        'is not shown if SurveyStylesConfiguration has shouldShowTitle as false',
        (widgetTester) async {
      var title = 'My Title';

      await widgetTester.pumpWidget(
        MaterialApp(
          localizationsDelegates: [
            s.MultiAppLocalizationsDelegate(),
          ],
          home: Material(
            child: SurveyWidget(
              surveyStylesConfiguration: SurveyStylesConfiguration(
                showSurveyTitle: false,
              ),
              survey: TestData.survey(
                title: title,
                pages: [
                  TestData.page(
                    elements: [
                      s.Text(),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
      );
      await widgetTester.pump();
      await widgetTester.idle();

      expect(find.text(title), findsNothing);
    });
  });

  group('SurveyController', () {
    group('submit', () {
      testWidgets('calls SurveyWidget.onSubmit', (widgetTester) async {
        final SurveyController controller = SurveyController();
        int onSubmitCallCount = 0;
        await widgetTester.pumpWidget(
          MaterialApp(
            localizationsDelegates: [
              s.MultiAppLocalizationsDelegate(),
            ],
            home: Material(
              child: SurveyWidget(
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
  });
}
