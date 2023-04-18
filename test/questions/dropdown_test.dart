import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:flutter_survey_js/generated/l10n.dart';
import 'package:flutter_survey_js/model/survey.dart';
import 'package:flutter_survey_js/ui/survey_widget.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:reactive_forms/reactive_forms.dart';

void main() {
  const appLocalizationDelegate = AppLocalizationDelegate();
  // 单一的测试
  const json = {
    "questions": [
      {
        "type": "dropdown",
        "name": "car",
        "title": "What car are you driving?",
        "isRequired": true,
        "colCount": 0,
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
    final s = Survey.fromJson(json);
  });

  group('placeholder', () {
    testWidgets('displays placeholder', (WidgetTester tester) async {
      const placeholder = 'Select...';
      final s = Survey.fromJson(
        {
          "title": "Single Page Survey",
          "pages": [
            {
              "name": "page1",
              "elements": [
                {
                  "type": "dropdown",
                  "name": "question1",
                  "choices": ["Item 1", "Item 2", "Item 3"],
                  "placeholder": placeholder
                }
              ]
            }
          ]
        },
      );
      await tester.pumpWidget(
        MaterialApp(
          localizationsDelegates: const [appLocalizationDelegate],
          home: Material(
            child: SurveyWidget(survey: s),
          ),
        ),
      );
      await tester.pump();
      await tester.idle();

      expect(find.text(placeholder), findsOneWidget);
    });

    final locales = appLocalizationDelegate.supportedLocales;

    for (var locale in locales) {
      testWidgets(
          'displays localized default text if `"placeholder"` is not specified in the JSON',
          (WidgetTester tester) async {
        final s = Survey.fromJson(
          {
            "title": "Single Page Survey",
            "pages": [
              {
                "name": "page1",
                "elements": [
                  {
                    "type": "dropdown",
                    "name": "question1",
                    "choices": ["Item 1", "Item 2", "Item 3"]
                  }
                ]
              }
            ]
          },
        );
        await tester.pumpWidget(
          MaterialApp(
            localizationsDelegates: const [
              appLocalizationDelegate,
              GlobalMaterialLocalizations.delegate,
              GlobalWidgetsLocalizations.delegate,
              GlobalCupertinoLocalizations.delegate,
            ],
            home: Localizations(
              delegates: const [
                appLocalizationDelegate,
                GlobalMaterialLocalizations.delegate,
                GlobalWidgetsLocalizations.delegate,
                GlobalCupertinoLocalizations.delegate,
              ],
              locale: locale,
              child: Material(
                child: SurveyWidget(survey: s),
              ),
            ),
          ),
        );
        await tester.pump();
        await tester.idle();
        final placeholderText =
            (await appLocalizationDelegate.load(locale)).placeholder;

        expect(find.text(placeholderText), findsOneWidget);
      });
    }
  });

  testWidgets(
      'maps otherText to DropdownMenuItem and displays ReactiveTextField when tapped',
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
              survey: Survey.fromJson({
            "questions": [
              {
                "type": "dropdown",
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
          })),
        ),
      ),
    );

    await tester.tap(find.byType(ReactiveDropdownField));
    await tester.pump();
    await tester.idle();

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
              survey: Survey.fromJson(const {
            "questions": [
              {
                "type": "dropdown",
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
          })),
        ),
      ),
    );

    await tester.tap(find.byType(ReactiveDropdownField));
    await tester.pump();
    await tester.idle();

    await tester.tap(find.text(otherText).last);
    await tester.pump();
    await tester.idle();

    expect(find.byType(ReactiveTextField), findsOneWidget);
    expect(find.text(otherPlaceholder), findsOneWidget);
  });

  testWidgets('maps noneText to DropdownMenuItem', (WidgetTester tester) async {
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
              survey: Survey.fromJson({
            "questions": [
              {
                "type": "dropdown",
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
          })),
        ),
      ),
    );

    await tester.tap(find.byType(ReactiveDropdownField));
    await tester.pump();
    await tester.idle();

    expect(find.text(noneText), findsWidgets);
  });
}
