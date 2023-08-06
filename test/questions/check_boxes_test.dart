import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:flutter_survey_js/generated/l10n.dart';
import 'package:flutter_survey_js/survey.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:reactive_forms/reactive_forms.dart';

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
          "Heart of the Tempest"
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
    expect(find.byType(ReactiveTextField), findsNothing);

    // check the "Other" option
    await tester.ensureVisible(find.text("Other"));
    await tester.pumpAndSettle();
    await tester.tap(find.text("Other"));
    await tester.pump();
    await tester.idle();
    expect(find.byType(ReactiveTextField), findsOneWidget);

    // uncheck the "Other" option
    await tester.tap(find.text("Other"));
    await tester.pump();
    await tester.idle();
    expect(find.byType(ReactiveTextField), findsNothing);
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

    await tester.pumpAndSettle();
    await tester.idle();
    expect(find.byType(ReactiveTextField), findsOneWidget);
    expect(find.text("UNN Thomas Prince"), findsOneWidget);

    // uncheck the "Other" option
    await tester.ensureVisible(find.text("Other"));
    await tester.pumpAndSettle();
    await tester.tap(find.text("Other"));
    await tester.pump();
    await tester.idle();
    expect(find.byType(ReactiveTextField), findsNothing);

    // re-check the "Other" option
    await tester.tap(find.text("Other"));
    await tester.pump();
    await tester.idle();
    expect(find.byType(ReactiveTextField), findsOneWidget);
    expect(find.text("UNN Thomas Prince"), findsNothing);
  });

  testWidgets("checkbox with none option checked should uncheck other option",
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

    await tester.pumpAndSettle();
    await tester.idle();
    expect(find.byType(ReactiveTextField), findsOneWidget);
    expect(find.text("UNN Thomas Prince"), findsOneWidget);

    // uncheck the "None of them" option
    await tester.tap(find.text("None of them"));
    await tester.pump();
    await tester.idle();
    expect(find.byType(ReactiveTextField), findsNothing);
  });

  testWidgets("checkbox should not show error messages when not touched",
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

    // initially no error messages
    await tester.pump();
    await tester.idle();
    expect(find.byType(CheckboxListTile), findsWidgets);
    expect(find.text("required"), findsNothing);

    // check the "UNN Agatha King" option, no error messages
    await tester.tap(find.text("UNN Agatha King"));
    await tester.pump();
    await tester.idle();
    expect(find.text("required"), findsNothing);

    // uncheck the "UNN Agatha King" option, show "required"
    await tester.tap(find.text("UNN Agatha King"));
    await tester.pump();
    await tester.idle();
    expect(find.text("required"), findsOneWidget);
  });

  testWidgets(
      "checkbox should not show error messages when not touched, but should when not fully answered",
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

    // initially no error messages
    await tester.pump();
    await tester.idle();
    expect(find.byType(CheckboxListTile), findsWidgets);
    expect(find.text("required"), findsNothing);

    // check the "Other" option but without entering any text, show "required"
    await tester.ensureVisible(find.text("Other"));
    await tester.pumpAndSettle();
    await tester.tap(find.text("Other"));
    await tester.tap(find.byType(ElevatedButton));
    await tester.pump();
    await tester.idle();
    expect(find.text("required"), findsOneWidget);
  });
}
