import 'package:flutter/material.dart';
import 'package:flutter_survey_js/survey.dart';
import 'package:flutter_survey_js/ui/reactive/reactive_reorderable_list.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  // 单一的测试
  const json = {
    "pages": [
      {
        "name": "page1",
        "elements": [
          {
            "type": "ranking",
            "name": "smartphone-features",
            "title":
                "Please rank the following smartphone features in order of importance:",
            "isRequired": true,
            "choices": [
              "Battery life",
              "Screen size",
              "Storage space",
              "Camera quality",
              "Durability",
              "Processor power",
              "Price"
            ]
          }
        ]
      },
      {
        "name": "page2",
        "elements": [
          {
            "type": "checkbox",
            "name": "car",
            "isRequired": true,
            "title": "What cars have you being drived?",
            "colCount": 4,
            "choicesOrder": "asc",
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
              "Citroen",
              "Tesla"
            ]
          },
          {
            "type": "ranking",
            "name": "bestcar",
            "isRequired": true,
            "visibleIf": "{car.length} > 1",
            "title": "What car did you enjoy the most?",
            "choicesFromQuestion": "car",
            "choicesFromQuestionMode": "selected"
          }
        ]
      }
    ]
  };
  test("Serialize Deserialize Survey", () {
    final s = surveyFromJson(json);
  });

  group('defaultValue', () {
    testWidgets('is reflected', (widgetTester) async {
      const Map<String, dynamic> choice1 = {
        "value": 1,
      };
      const Map<String, dynamic> choice2 = {
        "value": 2,
      };
      const Map<String, dynamic> choice3 = {
        "value": 3,
      };
      const List<Map<String, dynamic>> choices = [choice1, choice2, choice3];
      const List<Map<String, dynamic>> defaultValue = [
        choice1,
        choice3,
        choice2,
      ];
      final s = surveyFromJson(
        {
          "questions": [
            {
              "name": "name",
              "type": "ranking",
              "choices": choices,
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

      final reactiveReorderableList =
          widgetTester.widget<ReactiveReorderableList<dynamic, Itemvalue>>(
              find.byType(ReactiveReorderableList<dynamic, Itemvalue>));
      defaultValue.asMap().forEach((key, value) {
        final int index = key;
        expect(reactiveReorderableList.valueAccessor!.control!.value![index],
            value);
      });
    });
  });
}
