import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:flutter_survey_js/generated/l10n.dart';
import 'package:flutter_survey_js/survey.dart' hide Text;
import 'package:flutter_survey_js/ui/reactive/reactive_group_button.dart';

import 'package:flutter_test/flutter_test.dart';
import 'package:group_button/group_button.dart';
import 'package:reactive_forms/reactive_forms.dart';

void main() {
  const appLocalizationDelegate = AppLocalizationDelegate();

  const json = {
    "questions": [
      {
        "type": "radiogroup",
        "name": "car",
        "title": "What car are you driving?",
        "isRequired": true,
        "colCount": 4,
        "choices": [
          "None",
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
    surveyFromJson(json);
  });

  testWidgets(
      'maps otherText to Radiogroup Button and displays ReactiveTextField when tapped',
      (WidgetTester tester) async {
    const otherText = "Special Request";

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
              survey: surveyFromJson({
            "questions": [
              {
                "type": "radiogroup",
                "name": "What t-shirt size do you want?",
                "isRequired": true,
                "choices": [
                  "S",
                  "M",
                  "L",
                  "XL",
                ],
                "showOtherItem": true,
                "otherText": otherText,
              }
            ]
          })!),
        ),
      ),
    );
    await tester.pumpAndSettle();
    await tester.tap(find.text(otherText).last);
    await tester.pump();
    await tester.idle();

    expect(find.byType(ReactiveTextField), findsOneWidget);
  });

  testWidgets("maps otherPlaceholder to ReactiveTextField's hintText",
      (WidgetTester tester) async {
    const otherText = "Special Request";
    const otherPlaceholder = "Write something here!";

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
              survey: surveyFromJson(const {
            "questions": [
              {
                "type": "radiogroup",
                "name": "What t-shirt size do you want?",
                "isRequired": true,
                "choices": [
                  "S",
                  "M",
                  "L",
                  "XL",
                ],
                "showOtherItem": true,
                "otherText": otherText,
                "otherPlaceholder": otherPlaceholder,
              }
            ]
          })!),
        ),
      ),
    );
    await tester.pumpAndSettle();
    await tester.tap(find.text(otherText).last);
    await tester.pump();
    await tester.idle();

    expect(find.byType(ReactiveTextField), findsOneWidget);
    expect(find.text(otherPlaceholder), findsOneWidget);
  });

  testWidgets('maps noneText to Radiogroup Button',
      (WidgetTester tester) async {
    const noneText = "I do not want a t-shirt";

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
              survey: surveyFromJson({
            "questions": [
              {
                "type": "radiogroup",
                "name": "What t-shirt size do you want?",
                "isRequired": true,
                "choices": [
                  "S",
                  "M",
                  "L",
                  "XL",
                ],
                "showNoneItem": true,
                "noneText": noneText,
              }
            ]
          })!),
        ),
      ),
    );
    await tester.pumpAndSettle();
    expect(find.text(noneText), findsWidgets);
  });

  testWidgets(
      'displays "otherText" and existing answer when existing answer is not a choice and showOtherItem is true',
      (WidgetTester tester) async {
    const otherText = "Other size";
    const questionName = "What t-shirt size do you want?";
    const existingAnswer = "XS";

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
              answer: const {questionName: existingAnswer},
              survey: surveyFromJson(const {
                "questions": [
                  {
                    "type": "radiogroup",
                    "name": questionName,
                    "isRequired": true,
                    "choices": [
                      "S",
                      "M",
                      "L",
                      "XL",
                    ],
                    "showOtherItem": true,
                    "otherText": otherText,
                  }
                ]
              })!),
        ),
      ),
    );

    await tester.pumpAndSettle();
    await tester.idle();

    final buttons =
        tester.widget<ReactiveGroupButton>(find.byType(ReactiveGroupButton));

    final buttonValue = tester
        .widget<ReactiveForm>(find.byType(ReactiveForm))
        .formGroup
        .control(questionName)
        .value;

    final selectedMenuItem =
        buttons.items.singleWhere((element) => element.value == buttonValue);
    expect(
      selectedMenuItem.title,
      otherText,
    );
    expect(
      tester
          .widget<TextField>(find.descendant(
              of: find.byType(ReactiveTextField),
              matching: find.byType(TextField)))
          .controller
          ?.text,
      existingAnswer,
    );
  });

  testWidgets(
      'displays existing answer when existing answer is a choice and showOtherText is true',
      (WidgetTester tester) async {
    const otherText = "Other size";
    const questionName = "What t-shirt size do you want?";
    const existingAnswer = "M";

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
              answer: const {questionName: existingAnswer},
              survey: surveyFromJson(const {
                "questions": [
                  {
                    "type": "radiogroup",
                    "name": questionName,
                    "isRequired": true,
                    "choices": [
                      "S",
                      existingAnswer,
                      "L",
                      "XL",
                    ],
                    "showOtherItem": true,
                    "otherText": otherText,
                  }
                ]
              })!),
        ),
      ),
    );

    await tester.pump();
    await tester.idle();

    final buttons =
        tester.widget<ReactiveGroupButton>(find.byType(ReactiveGroupButton));

    final buttonValue = tester
        .widget<ReactiveForm>(find.byType(ReactiveForm))
        .formGroup
        .control(questionName)
        .value;

    final selectedMenuItem =
        buttons.items.singleWhere((element) => element.value == buttonValue);
    expect(
      selectedMenuItem.title,
      existingAnswer,
    );

    expect(find.byType(ReactiveTextField), findsNothing);
  });

  group('Other error text', () {
    testWidgets(
        'does not continue to display after a selecting an existing answer then re-selecting the Other field',
        (WidgetTester tester) async {
      const otherText = "Other size";
      const questionName = "What t-shirt size do you want?";
      const existingAnswer = "M";
      final SurveyController controller = SurveyController();

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
                controller: controller,
                survey: surveyFromJson(const {
                  "questions": [
                    {
                      "type": "radiogroup",
                      "name": questionName,
                      "isRequired": true,
                      "choices": [
                        "S",
                        existingAnswer,
                        "L",
                        "XL",
                      ],
                      "showOtherItem": true,
                      "otherText": otherText,
                    }
                  ]
                })!),
          ),
        ),
      );
      await tester.pumpAndSettle();
      await tester.tap(find.text(otherText).last);
      await tester.pump();
      await tester.idle();
      expect(find.byType(ReactiveTextField), findsOneWidget);
      expect(find.text('required'), findsNothing);
      controller.submit();
      await tester.pump();
      await tester.idle();
      expect(find.text('required'), findsOneWidget);

      await tester.tap(find.text(otherText).last);
      await tester.pump();
      await tester.idle();
      await tester.tap(find.text(existingAnswer).last);
      await tester.pump();
      await tester.idle();

      await tester.tap(find.text(otherText).last);
      expect(find.text('required'), findsNothing);
    });
  });
}
