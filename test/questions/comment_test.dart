import 'package:flutter/material.dart';
import 'package:flutter_survey_js/survey.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:reactive_forms/reactive_forms.dart';

void main() {
  // 单一的测试
  const json = {
    "questions": [
      {
        "type": "comment",
        "name": "suggestions",
        "title": "What would make you more satisfied with the Product?"
      }
    ]
  };
  test("Serialize Deserialize Survey", () {
    final s = surveyFromJson(json);
  });

  testWidgets('displays placeholder', (WidgetTester tester) async {
    const placeholder = 'Enter some text here...';
    final s = surveyFromJson(
      {
        "questions": [
          {"name": "name", "type": "comment", "placeholder": placeholder},
        ],
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

    expect(find.text(placeholder), findsOneWidget);
  });

  group('defaultValue', () {
    testWidgets('is reflected when input is string', (widgetTester) async {
      const String defaultValue = 'Hello world!';
      final s = surveyFromJson(
        {
          "questions": [
            {
              "name": "name",
              "type": "comment",
              "defaultValue": defaultValue,
            },
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
      expect(reactiveTextFieldFinder, findsOneWidget);
      final TextField textField = widgetTester.widget<TextField>(
          find.descendant(
              of: reactiveTextFieldFinder, matching: find.byType(TextField)));
      expect(textField.controller!.text, defaultValue);
    });

    testWidgets('is reflected when input is int', (widgetTester) async {
      const int defaultValue = 20;
      final s = surveyFromJson(
        {
          "questions": [
            {
              "name": "name",
              "type": "comment",
              "defaultValue": defaultValue,
            },
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
      expect(reactiveTextFieldFinder, findsOneWidget);
      final TextField textField = widgetTester.widget<TextField>(
          find.descendant(
              of: reactiveTextFieldFinder, matching: find.byType(TextField)));
      expect(textField.controller!.text, defaultValue.toString());
    });

    testWidgets('is reflected when input is double', (widgetTester) async {
      const double defaultValue = 3.14159;
      final s = surveyFromJson(
        {
          "questions": [
            {
              "name": "name",
              "type": "comment",
              "defaultValue": defaultValue,
            },
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
      expect(reactiveTextFieldFinder, findsOneWidget);
      final TextField textField = widgetTester.widget<TextField>(
          find.descendant(
              of: reactiveTextFieldFinder, matching: find.byType(TextField)));
      expect(textField.controller!.text, defaultValue.toString());
    });
  });
}
