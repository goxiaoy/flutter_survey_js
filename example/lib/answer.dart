import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter_survey_js_model/flutter_survey_js_model.dart' as s;
import 'package:json_editor/json_editor.dart';

import 'components/custom_layout.dart';
import 'components/simple.dart';

class AnswerPage extends StatefulWidget {
  final s.Survey? survey;

  const AnswerPage({Key? key, this.survey}) : super(key: key);

  @override
  State<StatefulWidget> createState() => AnswerPageState();
}

class AnswerPageState extends State<AnswerPage> {
  JsonElement answer = JsonElement.fromString("{}");

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Input your answer'),
      ),
      body: SafeArea(
        child: Column(children: [
          Text("Choose layout to continue"),
          Wrap(
            direction: Axis.horizontal,
            children: [
              ElevatedButton(
                onPressed: () => {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => Simple(
                              survey: widget.survey,
                              answer: toAnswer(answer.toString()),
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
                              survey: widget.survey,
                              answer: toAnswer(answer.toString()),
                            )),
                  )
                },
                child: Text(
                  'Customize',
                ),
              ),
            ],
          ),
          Expanded(
              child: JsonEditor.element(
            element: answer,
            onValueChanged: (value) {
              if (value.toString() != answer.toString() && mounted) {
                setState(() {
                  answer = value;
                });
              }
            },
          ))
        ]),
      ),
    );
  }
}

Map<String, Object?>? toAnswer(String value) {
  if (value.isEmpty) {
    return null;
  }
  final j = json.decode(value);
  return j;
}
