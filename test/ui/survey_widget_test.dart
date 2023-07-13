import 'dart:core';

import 'package:flutter/material.dart' hide Text;
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

  group('showQuestionNumbers', () {
    group('isOn', () {
      testWidgets(
          'displays question number if showQuestionNumbers is defined as `"on"` in survey JSON',
          (WidgetTester widgetTester) async {
        final Survey survey = surveyFromJson(
          {
            "title": "Software developer survey.",
            "showQuestionNumbers": "on",
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
          },
        )!;
        await widgetTester.pumpWidget(
          MaterialApp(
            localizationsDelegates: const [
              MultiAppLocalizationsDelegate(),
            ],
            home: Material(
              child: SurveyWidget(
                survey: survey,
              ),
            ),
          ),
        );
        await widgetTester.pump();
        await widgetTester.idle();
        expect(find.byKey(const Key('question-number-text')), findsOneWidget);
      });

      testWidgets(
          'displays question number if showQuestionNumbers is defined as `true` in survey JSON',
          (WidgetTester widgetTester) async {
        final Survey survey = surveyFromJson(
          {
            "title": "Software developer survey.",
            "showQuestionNumbers": true,
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
          },
        )!;
        await widgetTester.pumpWidget(
          MaterialApp(
            localizationsDelegates: const [
              MultiAppLocalizationsDelegate(),
            ],
            home: Material(
              child: SurveyWidget(
                survey: survey,
              ),
            ),
          ),
        );
        await widgetTester.pump();
        await widgetTester.idle();
        expect(find.byKey(const Key('question-number-text')), findsOneWidget);
      });

      testWidgets(
          'displays question number if showQuestionNumbers is not defined in survey JSON',
          (WidgetTester widgetTester) async {
        final Survey survey = surveyFromJson(
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
          },
        )!;
        await widgetTester.pumpWidget(
          MaterialApp(
            localizationsDelegates: const [
              MultiAppLocalizationsDelegate(),
            ],
            home: Material(
              child: SurveyWidget(
                survey: survey,
              ),
            ),
          ),
        );
        await widgetTester.pump();
        await widgetTester.idle();
        expect(find.byKey(const Key('question-number-text')), findsOneWidget);
      });
    });

    group('isOnPage', () {
      testWidgets(
          'does display question number if showQuestionNumbers is neither `"onPage"` in survey JSON',
          (WidgetTester widgetTester) async {
        //TODO: implement onPage support
      });
    });

    group('isOff', () {
      testWidgets(
          'does not display question number if showQuestionNumbers is defined as `"off"` in survey JSON',
          (WidgetTester widgetTester) async {
        final Survey survey = surveyFromJson(
          {
            "title": "Software developer survey.",
            "showQuestionNumbers": "off",
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
          },
        )!;
        await widgetTester.pumpWidget(
          MaterialApp(
            localizationsDelegates: const [
              MultiAppLocalizationsDelegate(),
            ],
            home: Material(
              child: SurveyWidget(
                survey: survey,
              ),
            ),
          ),
        );
        await widgetTester.pump();
        await widgetTester.idle();
        expect(find.byKey(const Key('question-number-text')), findsNothing);
      });

      testWidgets(
          'does not display question number if showQuestionNumbers is defined as `false` in survey JSON',
          (WidgetTester widgetTester) async {
        final Survey survey = surveyFromJson(
          {
            "title": "Software developer survey.",
            "showQuestionNumbers": false,
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
          },
        )!;
        await widgetTester.pumpWidget(
          MaterialApp(
            localizationsDelegates: const [
              MultiAppLocalizationsDelegate(),
            ],
            home: Material(
              child: SurveyWidget(
                survey: survey,
              ),
            ),
          ),
        );
        await widgetTester.pump();
        await widgetTester.idle();
        expect(find.byKey(const Key('question-number-text')), findsNothing);
      });

      testWidgets(
          'does not display question number if showQuestionNumbers is neither `"on"` nor `"onPage"` nor `"off"` in survey JSON',
          (WidgetTester widgetTester) async {
        final Survey survey = surveyFromJson(
          {
            "title": "Software developer survey.",
            "showQuestionNumbers": "some random string",
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
          },
        )!;
        await widgetTester.pumpWidget(
          MaterialApp(
            localizationsDelegates: const [
              MultiAppLocalizationsDelegate(),
            ],
            home: Material(
              child: SurveyWidget(
                survey: survey,
              ),
            ),
          ),
        );
        await widgetTester.pump();
        await widgetTester.idle();
        expect(find.byKey(const Key('question-number-text')), findsNothing);
      });
    });
  });
}
