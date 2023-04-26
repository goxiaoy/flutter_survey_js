import 'dart:convert';
import 'dart:core';

import 'package:device_preview/device_preview.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:flutter_survey_js/survey.dart' as s;
import 'package:json_editor/json_editor.dart';

import 'answer.dart';

void main() {
  runApp(
    DevicePreview(
      enabled: true,
      builder: (context) => MyApp(), // Wrap your app
    ),
  );
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      locale: DevicePreview.locale(context),
      // Add the locale here
      builder: DevicePreview.appBuilder,
      // Add the builder here
      localizationsDelegates: [
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
        s.MultiAppLocalizationsDelegate(),
      ],
      title: 'Survey Demo',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.blue,
      ),
      supportedLocales: [
        const Locale('en', ''), // English, no country code
        const Locale('zh', ''), // Spanish, no country code
      ],
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key? key}) : super(key: key);

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  String survey = "";

  late Future<List> assetLoader;
  Map<TestJsonType, String> _surveyMap = {};

  TestJsonType? selected;

  @override
  void initState() {
    assetLoader = Future.wait(
      TestJsonType.values.map((e) => rootBundle
          .loadString(e.fileLocation)
          .then((value) => _surveyMap[e] = JsonElement.format(value))),
    ).then((value) {
      setState(() {
        selected = TestJsonType.complex;
        survey = _surveyMap[selected!]!;
      });
      return value;
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Survey json test'),
          actions: [
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => AnswerPage(
                            survey: toSurvey(survey),
                          )),
                );
              },
              child: Text("Next Step"),
            )
          ],
        ),
        body: SafeArea(
            child: FutureBuilder(
          future: this.assetLoader,
          builder: (BuildContext context, AsyncSnapshot<List> snapshot) {
            if (!snapshot.hasData) {
              return CircularProgressIndicator();
            }
            return Column(children: [
              Text("Choose or edit survey"),
              DropdownButton<TestJsonType>(
                value: selected,
                icon: const Icon(Icons.arrow_downward),
                elevation: 16,
                underline: Container(
                  height: 2,
                  color: Colors.deepPurpleAccent,
                ),
                onChanged: (TestJsonType? value) {
                  // This is called when the user selects an item.
                  setState(() {
                    selected = value;
                    survey = _surveyMap[selected!]!;
                  });
                },
                items:
                    _surveyMap.entries.map<DropdownMenuItem<TestJsonType>>((p) {
                  return DropdownMenuItem<TestJsonType>(
                      value: p.key,
                      child: Text(
                        p.key.buttonName,
                      ));
                }).toList(),
              ),
              Expanded(
                  child: JsonEditor.string(
                jsonString: survey,
                onValueChanged: (value) {
                  if (value.toString() !=
                          JsonElement.fromString(survey).toString() &&
                      mounted) {
                    setState(() {
                      survey = value.toString();
                      selected = null;
                    });
                  }
                },
              ))
            ]);
          },
        )));
  }

  toSurvey(String value) {
    final j = json.decode(value);
    return s.surveyFromJson(j);
  }
}

enum TestJsonType { complex, multiPage, pageOnly }

extension TestJsonTypeExtension on TestJsonType {
  String get buttonName {
    switch (this) {
      case TestJsonType.complex:
        return 'Complex';
      case TestJsonType.multiPage:
        return 'Survey with Multiple Pages';
      case TestJsonType.pageOnly:
        return 'Page without Survey';
    }
  }

  String get fileLocation {
    switch (this) {
      case TestJsonType.complex:
        return 'assets/complex.json';
      case TestJsonType.multiPage:
        return 'assets/multi_page.json';
      case TestJsonType.pageOnly:
        return 'assets/page_without_survey.json';
    }
  }
}
