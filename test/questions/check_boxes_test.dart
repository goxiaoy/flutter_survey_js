import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:flutter_survey_js/generated/l10n.dart';
import 'package:flutter_survey_js/survey.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  const appLocalizationDelegate = AppLocalizationDelegate();
  // 单一的测试
  const json = {
    "questions": [
      {
        "type": "checkbox",
        "name": "car",
        "title": "What cars are you driving?",
        "isRequired": true,
        "colCount": 4,
        "showSelectAllItem": true,
        "showNoneItem": true,
        "showOtherItem": true,
        "choices": [
          "Ford",
          "Vauxhall",
          "Volkswagen",
          "Nissan",
          "Audi",
          "Mercedes-Benz",
          "BMW",
          "Peugeot",
          "Toyota",
          "Citroen"
        ]
      }
    ]
  };
  test("Serialize Deserialize Survey", () {
    final s = surveyFromJson(json);
  });

  const extended = {
    "questions": [
      {
        "type": "checkbox",
        "name": "warships",
        "title": "Which battleships have you ever boarded?",
        "isRequired": true,
        "showSelectAllItem": true,
        "showNoneItem": true,
        "showOtherItem": true,
        "selectAllText": "All of them",
        "noneText": "None of them",
        "otherText": "Other",
        "choices": [
          "MCRN Donnager",
          "UNN Agatha King",
          "EMC Frederick Lewis",
          "Behemoth",
          "Heart of the Tempest",
        ]
      }
    ]
  };

  testWidgets("checkbox should properly render extended options",
      (WidgetTester tester) async {
    await tester.pumpWidget(
      MaterialApp(
        localizationsDelegates: const [
          appLocalizationDelegate,
          GlobalMaterialLocalizations.delegate,
          GlobalWidgetsLocalizations.delegate,
          GlobalCupertinoLocalizations.delegate,
        ],
        home: Material(
          child: SurveyWidget(survey: surveyFromJson(extended)!),
        ),
      ),
    );

    await tester.pump();
    await tester.idle();

    expect(find.byType(CheckboxListTile), findsWidgets);
    expect(find.text("All of them"), findsOneWidget);
    expect(find.text("None of them"), findsOneWidget);
    expect(find.text("Other"), findsOneWidget);
  });

  testWidgets(
      "checkbox with other option checked/unchecked should properly render/eliminate the associated text input",
      (WidgetTester tester) async {
    await tester.pumpWidget(
      MaterialApp(
        localizationsDelegates: const [
          appLocalizationDelegate,
          GlobalMaterialLocalizations.delegate,
          GlobalWidgetsLocalizations.delegate,
          GlobalCupertinoLocalizations.delegate,
        ],
        home: Material(
          child: SurveyWidget(survey: surveyFromJson(extended)!),
        ),
      ),
    );

    await tester.pump();
    await tester.idle();
    expect(find.byType(TextFormField), findsNothing);

    // check the "Other" option
    await tester.tap(find.text("Other"));
    await tester.pump();
    await tester.idle();
    expect(find.byType(TextFormField), findsOneWidget);

    // uncheck the "Other" option
    await tester.tap(find.text("Other"));
    await tester.pump();
    await tester.idle();
    expect(find.byType(TextFormField), findsNothing);
  });

  testWidgets(
      "checkbox with any answer beyond pre-defined choices should properly render the associated other text input",
      (WidgetTester tester) async {
    await tester.pumpWidget(
      MaterialApp(
        localizationsDelegates: const [
          appLocalizationDelegate,
          GlobalMaterialLocalizations.delegate,
          GlobalWidgetsLocalizations.delegate,
          GlobalCupertinoLocalizations.delegate,
        ],
        home: Material(
          child: SurveyWidget(
            survey: surveyFromJson(extended)!,
            answer: const {
              "warships": ["UNN Thomas Prince"]
            },
          ),
        ),
      ),
    );

    await tester.pump();
    await tester.idle();
    expect(find.byType(TextFormField), findsOneWidget);
    expect(find.text("UNN Thomas Prince"), findsOneWidget);

    // uncheck the "Other" option
    await tester.tap(find.text("Other"));
    await tester.pump();
    await tester.idle();
    expect(find.byType(TextFormField), findsNothing);

    // re-check the "Other" option
    await tester.tap(find.text("Other"));
    await tester.pump();
    await tester.idle();
    expect(find.byType(TextFormField), findsOneWidget);
    expect(find.text("UNN Thomas Prince"), findsNothing);
  });
}
