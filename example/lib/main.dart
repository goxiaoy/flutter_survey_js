import 'dart:convert';
import 'dart:core';

import 'package:device_preview/device_preview.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:flutter_survey_js/survey.dart' as s;
import 'package:json_editor/json_editor.dart';

import 'components/custom_layout.dart';
import 'components/simple.dart';

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

  late Future<List<Null>> assetLoader;
  Map<String, String> _surveyMap = {};

  @override
  void initState() {
    assetLoader = Future.wait([
      rootBundle.loadString('assets/complex.json').then((value) {
        _surveyMap["Complex"] = JsonElement.format(value);
        //set default as multi page
        setState(() {
          survey = value;
        });
      }),
      rootBundle.loadString('assets/single_page.json').then((value) {
        _surveyMap["Single Page"] = JsonElement.format(value);
      }),
    ]);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            appBar: AppBar(
              title: Text('Survey complete json test'),
            ),
            body: FutureBuilder(
              future: this.assetLoader,
              builder:
                  (BuildContext context, AsyncSnapshot<List<Null>> snapshot) {
                if (!snapshot.hasData) {
                  return CircularProgressIndicator();
                }
                return Column(children: [
                  Wrap(
                    direction: Axis.horizontal,
                    children: [
                      ElevatedButton(
                        onPressed: () => {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => Simple(
                                      survey: toSurvey(survey),
                                    )),
                          )
                        },
                        child: Text(
                          'Simple',
                        ),
                      ),
                      ElevatedButton(
                        onPressed: () => {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => CustomLayoutPage(
                                      survey: toSurvey(survey),
                                    )),
                          )
                        },
                        child: Text(
                          'Customize',
                        ),
                      ),
                    ],
                  ),
                  Divider(),
                  Wrap(
                    direction: Axis.horizontal,
                    children: _surveyMap.entries.map((p) {
                      return ElevatedButton(
                        onPressed: () {
                          setState(() {
                            survey = p.value;
                          });
                        },
                        child: Text(
                          p.key,
                        ),
                      );
                    }).toList(),
                  ),
                  Expanded(
                      child: JsonEditor.string(
                    jsonString: survey,
                    onValueChanged: (value) {
                      if (value.toString() != survey && mounted) {
                        setState(() {
                          survey = value.toString();
                        });
                      }
                    },
                  ))
                ]);
              },
            )));
  }
}

toSurvey(String value) {
  final j = json.decode(value);
  return s.Survey.fromJson(j);
}
