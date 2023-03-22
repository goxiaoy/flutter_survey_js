import 'dart:core';

import 'package:flutter/material.dart';
import 'package:flutter_survey_js/survey.dart';
import 'package:flutter_survey_js/survey.dart' as s;
import 'package:flutter_test/flutter_test.dart';

import '../test_data.dart';

main() {
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

  testWidgets('Does not use a PageView when there is only one page',
      (widgetTester) async {
    await widgetTester.pumpWidget(
      MaterialApp(
        localizationsDelegates: [
          s.MultiAppLocalizationsDelegate(),
        ],
        home: Material(
          child: SurveyWidget(
            survey: TestData.survey(
              pages: [
                TestData.page(elements: [
                  s.Text()..name = 'some name',
                ]),
              ],
            )..questions = null,
          ),
        ),
      ),
    );
    await widgetTester.pump();
    await widgetTester.idle();

    expect(find.byType(PageView), findsNothing);
  });

  testWidgets('Does use a PageView when there are multiple pages',
      (widgetTester) async {
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
                    s.Text()..name = 'some name',
                  ],
                ),
                TestData.page(
                  elements: [
                    s.Text()..name = 'some name',
                  ],
                ),
              ],
            )..questions = null,
          ),
        ),
      ),
    );
    await widgetTester.pump();
    await widgetTester.idle();

    expect(find.byType(PageView), findsOneWidget);
  });
}
