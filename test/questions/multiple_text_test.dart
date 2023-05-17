import 'package:flutter/material.dart';
import 'package:flutter_survey_js/survey.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:reactive_forms/reactive_forms.dart';

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
    final s = surveyFromJson(json);
  });
  testWidgets('displays placeholders', (WidgetTester tester) async {
    const placeholder1 = 'Write text1 answer here...';
    const placeholder2 = 'Write text2 answer here...';
    final s = surveyFromJson(
      {
        "title": "Single Page Survey",
        "pages": [
          {
            "name": "page1",
            "elements": [
              {
                "type": "multipletext",
                "name": "question1",
                "items": [
                  {
                    "name": "text1",
                    "placeholder": placeholder1,
                  },
                  {
                    "name": "text2",
                    "placeholder": placeholder2,
                  }
                ]
              }
            ]
          }
        ]
      },
    )!;
    await tester.pumpWidget(
      MaterialApp(
        localizationsDelegates: const [
          MultiAppLocalizationsDelegate(),
        ],
        home: Material(
          child: SurveyWidget(survey: s),
        ),
      ),
    );
    await tester.pump();
    await tester.idle();

    expect(find.text(placeholder1), findsOneWidget);
    expect(find.text(placeholder2), findsOneWidget);
  });

  group('defaultValue', () {
    testWidgets('is reflected when defaultValues map has string values',
        (widgetTester) async {
      const List<String> defaultValues = ['hello', 'world'];
      final s = surveyFromJson(
        {
          "questions": [
            {
              "type": "multipletext",
              "name": "question1",
              "defaultValue": {
                "text1": defaultValues[0],
                "text2": defaultValues[1]
              },
              "items": [
                {"name": "text1"},
                {"name": "text2"}
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
            child: SurveyWidget(survey: s),
          ),
        ),
      );
      await widgetTester.pump();
      await widgetTester.idle();

      final Finder reactiveTextFieldFinder = find.byType(ReactiveTextField);
      widgetTester
          .widgetList<TextField>(
            find.descendant(
              of: reactiveTextFieldFinder,
              matching: find.byType(
                TextField,
              ),
            ),
          )
          .toList()
          .asMap()
          .forEach((index, element) {
        expect(element.controller!.text, defaultValues[index]);
      });
    });

    testWidgets('is reflected when defaultValues map has int values',
        (widgetTester) async {
      const List<int> defaultValues = [1, 2];
      final s = surveyFromJson(
        {
          "questions": [
            {
              "type": "multipletext",
              "name": "question1",
              "defaultValue": {
                "text1": defaultValues[0],
                "text2": defaultValues[1]
              },
              "items": [
                {"name": "text1"},
                {"name": "text2"}
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
            child: SurveyWidget(survey: s),
          ),
        ),
      );
      await widgetTester.pump();
      await widgetTester.idle();

      final Finder reactiveTextFieldFinder = find.byType(ReactiveTextField);
      widgetTester
          .widgetList<TextField>(
            find.descendant(
              of: reactiveTextFieldFinder,
              matching: find.byType(
                TextField,
              ),
            ),
          )
          .toList()
          .asMap()
          .forEach((index, element) {
        expect(element.controller!.text, defaultValues[index].toString());
      });
    });

    testWidgets('is reflected when defaultValues map has double values',
        (widgetTester) async {
      const List<double> defaultValues = [
        3.14159,
        2.71828183,
      ];
      final s = surveyFromJson(
        {
          "questions": [
            {
              "type": "multipletext",
              "name": "question1",
              "defaultValue": {
                "text1": defaultValues[0],
                "text2": defaultValues[1]
              },
              "items": [
                {"name": "text1"},
                {"name": "text2"}
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
            child: SurveyWidget(survey: s),
          ),
        ),
      );
      await widgetTester.pump();
      await widgetTester.idle();

      final Finder reactiveTextFieldFinder = find.byType(ReactiveTextField);
      widgetTester
          .widgetList<TextField>(
            find.descendant(
              of: reactiveTextFieldFinder,
              matching: find.byType(
                TextField,
              ),
            ),
          )
          .toList()
          .asMap()
          .forEach((index, element) {
        expect(element.controller!.text, defaultValues[index].toString());
      });
    });
  });
}
