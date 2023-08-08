import 'dart:convert';
import 'dart:core';

import 'package:device_preview/device_preview.dart';
import 'package:example/storage.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:flutter_survey_js/survey.dart' as s;
import 'package:json_editor/json_editor.dart';

import 'answer.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await s.getRunner().init();
  runApp(
    DevicePreview(
      enabled: true,
      builder: (context) => const MyApp(), // Wrap your app
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      locale: DevicePreview.locale(context),
      // Add the locale here
      builder: DevicePreview.appBuilder,
      // Add the builder here
      localizationsDelegates: const [
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
      supportedLocales: const [
        Locale('en', ''), // English, no country code
        Locale('zh', ''), // Spanish, no country code
      ],
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  String survey = "";

  late Future<List<String?>> loader;
  final Map<TestJsonType, String> _surveyMap = {};

  TestJsonType? selected;

  @override
  void initState() {
    loader = Future.wait<String?>(
      [
        ...TestJsonType.values.map((e) => rootBundle
            .loadString(e.fileLocation)
            .then((value) => _surveyMap[e] = JsonElement.format(value))),
        getSurvey(),
      ],
    ).then((value) {
      setState(() {
        if (value.last == null) {
          selected = TestJsonType.complex;
          survey = _surveyMap[selected!]!;
        } else {
          selected = null;
          survey = value.last!;
        }
      });
      return value;
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Survey json test'),
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
              child: const Text("Next Step"),
            )
          ],
        ),
        body: SafeArea(
            child: FutureBuilder(
          future: loader,
          builder: (BuildContext context, AsyncSnapshot<List> snapshot) {
            if (!snapshot.hasData) {
              return const CircularProgressIndicator();
            }
            return Column(children: [
              const Text("Choose or edit survey"),
              DropdownButton<TestJsonType>(
                value: selected,
                icon: const Icon(Icons.arrow_downward),
                elevation: 16,
                underline: Container(
                  height: 2,
                  color: Colors.deepPurpleAccent,
                ),
                onChanged: (TestJsonType? value) async {
                  // This is called when the user selects an item.
                  await clearSurvey();
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
                onValueChanged: (value) async {
                  if (value.toString() !=
                          JsonElement.fromString(survey).toString() &&
                      mounted) {
                    await storeSurvey(value.toString());
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
