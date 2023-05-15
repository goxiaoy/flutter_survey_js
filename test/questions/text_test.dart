import 'package:flutter/material.dart';
import 'package:flutter_survey_js/survey.dart' hide TextInputType;
import 'package:flutter_test/flutter_test.dart';
import 'package:intl/intl.dart';
import 'package:reactive_date_time_picker/reactive_date_time_picker.dart';
import 'package:reactive_forms/reactive_forms.dart';

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
    final s = surveyFromJson(json);
  });

  testWidgets('displays placeholder', (WidgetTester tester) async {
    const placeholder = 'Enter some text here...';
    final s = surveyFromJson(
      {
        "questions": [
          {"name": "name", "type": "text", "placeholder": placeholder},
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

  group('defaultValue', () {
    testWidgets('is reflected when `inputType` is not defined',
        (widgetTester) async {
      const String defaultValue = 'some default value';
      final s = surveyFromJson(
        {
          "questions": [
            {"name": "name", "type": "text", "defaultValue": defaultValue},
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

      expect(find.text(defaultValue), findsOneWidget);
    });

    testWidgets('is reflected when `inputType` is `"date"`',
        (widgetTester) async {
      const String defaultValue = '1970-01-01';
      final s = surveyFromJson(
        {
          "questions": [
            {
              "name": "name",
              "type": "text",
              "defaultValue": defaultValue,
              "inputType": "date"
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

      final Finder reactiveDateTimePickerFinder =
          find.byType(ReactiveDateTimePicker);
      expect(reactiveDateTimePickerFinder, findsOneWidget);
      expect(
          widgetTester
              .widget<ReactiveDateTimePicker>(reactiveDateTimePickerFinder)
              .valueAccessor!
              .control!
              .value,
          DateFormat('yyyy-MM-dd').parse(defaultValue));
    });

    testWidgets(
      'is reflected when `inputType` is `"color"`',
      (widgetTester) async {
        // Not sure how to parse a Color from a String
      },
    );

    testWidgets('is reflected when `inputType` is `"date"`',
        (widgetTester) async {
      const String defaultValue = '1970-01-01';
      final s = surveyFromJson(
        {
          "questions": [
            {
              "name": "name",
              "type": "text",
              "defaultValue": defaultValue,
              "inputType": "date"
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

      final Finder reactiveDateTimePickerFinder =
          find.byType(ReactiveDateTimePicker);
      expect(reactiveDateTimePickerFinder, findsOneWidget);
      expect(
          widgetTester
              .widget<ReactiveDateTimePicker>(reactiveDateTimePickerFinder)
              .valueAccessor!
              .control!
              .value,
          DateFormat('yyyy-MM-dd').parse(defaultValue));
    });

    testWidgets('is reflected when `inputType` is `"datetime-local"`',
        (widgetTester) async {
      // Not sure how the behavior of an element with an inputType of "datetime-local" is supposed to be different from that of an element with an inputType of "date"
    });

    testWidgets('is reflected when `inputType` is `"month"`',
        (widgetTester) async {
      // Not sure how the behavior of an element with an inputType of "month" is supposed to be different from that of an element with an inputType of "text"
    });

    group('number', () {
      testWidgets(
          'is reflected when `inputType` is `"number"` and `defaultValue` is a non-string-representation of an integer',
          (widgetTester) async {
        const int defaultValue = 20;
        final s = surveyFromJson(
          {
            "questions": [
              {
                "name": "name",
                "type": "text",
                "defaultValue": defaultValue,
                "inputType": "number"
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

        expect(find.text(defaultValue.toString()), findsOneWidget);
      });

      testWidgets(
          'is reflected when `inputType` is `"number"` and `defaultValue` is a string-representation of an integer',
          (widgetTester) async {
        const String defaultValue = "20";
        final s = surveyFromJson(
          {
            "questions": [
              {
                "name": "name",
                "type": "text",
                "defaultValue": defaultValue,
                "inputType": "number"
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

        expect(find.text(defaultValue), findsOneWidget);
      });

      testWidgets(
          'is reflected when `inputType` is `"number"` and `defaultValue` is a non-string-representation of a double',
          (widgetTester) async {
        const double defaultValue = 3.14159;
        final s = surveyFromJson(
          {
            "questions": [
              {
                "name": "name",
                "type": "text",
                "defaultValue": defaultValue,
                "inputType": "number"
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

        expect(find.text(defaultValue.toString()), findsOneWidget);
      });

      testWidgets(
          'is reflected when `inputType` is `"number"` and `defaultValue` is a string-representation of a double',
          (widgetTester) async {
        const String defaultValue = "3.14159";
        final s = surveyFromJson(
          {
            "questions": [
              {
                "name": "name",
                "type": "text",
                "defaultValue": defaultValue,
                "inputType": "number"
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

        expect(find.text(defaultValue), findsOneWidget);
      });
    });

    testWidgets(
        'is reflected when `inputType` is `"password"` and text is obscured',
        (widgetTester) async {
      const String defaultValue = 'p@ssw0rd123';
      final s = surveyFromJson(
        {
          "questions": [
            {
              "name": "name",
              "type": "text",
              "defaultValue": defaultValue,
              "inputType": "password"
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

      final Finder reactiveTextFieldFinder = find.byType(ReactiveTextField);
      expect(reactiveTextFieldFinder, findsOneWidget);
      final TextField textField = widgetTester.widget<TextField>(
          find.descendant(
              of: reactiveTextFieldFinder, matching: find.byType(TextField)));
      expect(textField.controller!.text, defaultValue);
      expect(textField.obscureText, true);
    });

    testWidgets('is reflected when `inputType` is `"range"`',
        (widgetTester) async {
      // Not sure how the behavior of an element with an inputType of "range" is supposed to be different from that of an element with an inputType of "text"
    });

    testWidgets(
        'is reflected when `inputType` is `"tel"` and TextField.keyboardType is TextInputType.phone',
        (widgetTester) async {
      const String defaultValue = '314-123-4567';
      final s = surveyFromJson(
        {
          "questions": [
            {
              "name": "name",
              "type": "text",
              "defaultValue": defaultValue,
              "inputType": "tel"
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

      final Finder reactiveTextFieldFinder = find.byType(ReactiveTextField);
      expect(reactiveTextFieldFinder, findsOneWidget);
      final TextField textField = widgetTester.widget<TextField>(
          find.descendant(
              of: reactiveTextFieldFinder, matching: find.byType(TextField)));
      expect(textField.controller!.text, defaultValue);
      expect(textField.keyboardType, TextInputType.phone);
    });

    testWidgets('is reflected when `inputType` is `"text"`',
        (widgetTester) async {
      const String defaultValue = 'Hello world!';
      final s = surveyFromJson(
        {
          "questions": [
            {
              "name": "name",
              "type": "text",
              "defaultValue": defaultValue,
              "inputType": "text"
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

      expect(find.text(defaultValue), findsOneWidget);
    });

    testWidgets('is reflected when `inputType` is `"time"`',
        (widgetTester) async {
      // Not sure how the behavior of an element with an inputType of "time" is supposed to be different from that of an element with an inputType of "text" or "date"
    });
    testWidgets('is reflected when `inputType` is `"url"`',
        (widgetTester) async {
      // Not sure how the behavior of an element with an inputType of "url" is supposed to be different from that of an element with an inputType of "text"
    });
    testWidgets('is reflected when `inputType` is `"week"`',
        (widgetTester) async {
      // Not sure how the behavior of an element with an inputType of "week" is supposed to be different from that of an element with an inputType of "text" or "date"
    });
  });
}
