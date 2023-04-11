import 'package:flutter/material.dart';
import 'package:flutter_survey_js/survey.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  // 单一的测试
  const json = {
    "questions": [
      {
        "name": "name",
        "type": "text",
        "state": "expanded",
        "title": "Please enter your name:"
      },
      {
        "name": "price",
        "type": "text",
        "inputType": "number",
        "title": "Please enter price"
      },
      {
        "name": "birthdate",
        "type": "text",
        "inputType": "date",
        "title": "Your birthdate:"
      },
      {
        "name": "color",
        "type": "text",
        "inputType": "color",
        "title": "Your favorite color:"
      },
      {
        "name": "email",
        "type": "text",
        "inputType": "email",
        "title": "Your e-mail:",
        "isRequired": true,
        "validators": [
          {"type": "email"}
        ]
      },
      {
        "name": "datetime",
        "type": "text",
        "inputType": "datetime",
        "title": "Your lunch time:"
      },
      {
        "name": "datetime-local",
        "type": "text",
        "inputType": "datetime-local",
        "title": "Your supper time:"
      },
      {
        "name": "month",
        "type": "text",
        "inputType": "month",
        "title": "Your favorite month:"
      },
      {
        "name": "password",
        "type": "text",
        "inputType": "password",
        "title": "Please enter password:"
      },
      {
        "name": "range",
        "type": "text",
        "inputType": "range",
        "title": "Please set price range:"
      },
      {
        "name": "tel",
        "type": "text",
        "inputType": "tel",
        "title": "Enter your phone number"
      },
      {
        "name": "time",
        "type": "text",
        "inputType": "time",
        "title": "When do you watch TV?"
      },
      {
        "name": "url",
        "type": "text",
        "inputType": "url",
        "title": "Add link to your site please"
      },
      {
        "name": "week",
        "type": "text",
        "inputType": "week",
        "title": "Mark any week which you want"
      }
    ]
  };
  test("Serialize Deserialize Survey", () {
    final s = Survey.fromJson(json);
  });

  testWidgets('displays placeholder', (WidgetTester tester) async {
    final placeholder = 'Enter some text here...';
    final s = Survey.fromJson(
      {
        "questions": [
          {"name": "name", "type": "text", "placeholder": "$placeholder"},
        ],
      },
    );
    await tester.pumpWidget(
      MaterialApp(
        localizationsDelegates: [
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
