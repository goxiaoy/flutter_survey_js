import 'package:flutter/material.dart';
import 'package:flutter_survey_js/survey.dart';
import 'package:flutter_test/flutter_test.dart';

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
    surveyFromJson(json);
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
}
