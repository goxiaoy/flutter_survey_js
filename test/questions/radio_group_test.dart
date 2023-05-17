import 'package:flutter/material.dart';
import 'package:flutter_survey_js/survey.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:reactive_forms/reactive_forms.dart';

void main() {
  // 单一的测试
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
    final s = surveyFromJson(json);
  });

  group('defaultValue', () {
    testWidgets('is reflected when defaultValue is a choice',
        (widgetTester) async {
      const String formControlName = "name";
      const int defaultValue = 2;
      final s = surveyFromJson(
        {
          "questions": [
            {
              "name": formControlName,
              "type": "radiogroup",
              "choices": [
                0,
                1,
                defaultValue,
                3,
              ],
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

      final reactiveForm =
          widgetTester.widget<ReactiveForm>(find.byType(ReactiveForm));
      expect(
          reactiveForm.formGroup.control(formControlName).value, defaultValue);
    });

    testWidgets(
        'is reflected when defaultValue is not a choice but `showOtherItem` is true',
        (widgetTester) async {
      const String formControlName = "name";
      const int defaultValue = 2;
      final s = surveyFromJson(
        {
          "questions": [
            {
              "name": formControlName,
              "type": "radiogroup",
              "choices": [
                0,
                1,
              ],
              "defaultValue": defaultValue,
              "showOtherItem": true,
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

      final reactiveForm =
          widgetTester.widget<ReactiveForm>(find.byType(ReactiveForm));
      expect(
          reactiveForm.formGroup.control(formControlName).value, defaultValue);
    });
  });
}
