import 'dart:convert';

import 'package:example/storage.dart';
import 'package:flutter/material.dart';
import 'package:flutter_survey_js/flutter_survey_js.dart' as s;
import 'package:json_editor/json_editor.dart';

class Simple extends StatelessWidget {
  final s.Survey? survey;
  final Map<String, Object?>? answer;

  const Simple({Key? key, this.survey, this.answer}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Survey test'),
        ),
        body: SafeArea(
            child: survey == null
                ? const Center(
                    child: CircularProgressIndicator(),
                  )
                : s.SurveyWidget(
                    survey: survey!,
                    answer: answer,
                    onChange: (v) async {
                      print(v);
                      storeAnswer(jsonEncode(v));
                    },
                    onSubmit: (v) {
                      print(v);
                      showModalBottomSheet<void>(
                        context: context,
                        builder: (BuildContext context) {
                          return SizedBox(
                            height: 400,
                            child: Center(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.stretch,
                                children: [
                                  Expanded(child: JsonEditor.object(object: v)),
                                  ElevatedButton(
                                    child: const Text('Close'),
                                    onPressed: () => Navigator.pop(context),
                                  )
                                ],
                              ),
                            ),
                          );
                        },
                      );
                    },
                  )));
  }
}
