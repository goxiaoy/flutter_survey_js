import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:flutter_survey_js/generated/l10n.dart';
import 'package:flutter_survey_js/model/survey.dart';
import 'package:flutter_survey_js/multi_localization_delegate.dart';
import 'package:flutter_survey_js/ui/survey_widget.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
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

    const AppLocalizationDelegate appLocalizationDelegate =
        AppLocalizationDelegate();
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
}
