import 'package:flutter/material.dart';
import 'package:flutter_survey_js/survey.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  // 单一的测试
  const labelFalseText = "false text";
  const labelTrueText = "true text";

  const titleText = "Please answer the question";
  const json = {
    "questions": [
      {
        "type": "boolean",
        "name": "bool",
        "title": titleText,
        "label": "Are you 21 or older?",
        "isRequired": true
      }
    ]
  };
  test("Serialize Deserialize Survey", () {
    surveyFromJson(json);
  });

  testWidgets('displays title if present in json', (WidgetTester tester) async {
    final s = surveyFromJson(
      {
        "questions": [
          {
            "type": "boolean",
            "name": "bool",
            "title": titleText,
          },
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

    expect(find.text(titleText), findsOneWidget);
  });

  testWidgets('displays labelFalse and not labelTrue',
      (WidgetTester tester) async {
    final s = surveyFromJson(
      {
        "questions": [
          {
            "type": "boolean",
            "name": "bool",
            "labelFalse": labelFalseText,
          },
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

    expect(find.text(labelFalseText), findsOneWidget);
    expect(find.text(labelTrueText), findsNothing);
  });

  testWidgets('displays labelTrue and not labelFalse',
      (WidgetTester tester) async {
    String labelTrueText = "true text";
    final s = surveyFromJson(
      {
        "questions": [
          {
            "type": "boolean",
            "name": "bool",
            "labelTrue": labelTrueText,
          },
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

    expect(find.text(labelTrueText), findsOneWidget);
    expect(find.text(labelFalseText), findsNothing);
  });

  testWidgets('displays both labelTrue and labelFalse if both present in json',
      (WidgetTester tester) async {
    String labelTrueText = "true text";
    final s = surveyFromJson(
      {
        "questions": [
          {
            "type": "boolean",
            "name": "bool",
            "labelTrue": labelTrueText,
            "labelFalse": labelFalseText
          },
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

    expect(find.text(labelTrueText), findsOneWidget);
    expect(find.text(labelFalseText), findsOneWidget);
  });
}
