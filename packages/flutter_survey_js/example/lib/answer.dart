import 'dart:convert';

import 'package:example/storage.dart';
import 'package:flutter/material.dart';
import 'package:flutter_survey_js/survey.dart' as s;
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

  late Future<void> loader;

  @override
  void initState() {
    super.initState();
    loader = getAnswer().then((value) {
      if (value != null) {
        setState(() {
          answer = JsonElement.fromString(value);
        });
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Input your answer'),
      ),
      body: SafeArea(
        child: FutureBuilder(
          future: loader,
          builder: (BuildContext context, AsyncSnapshot<void> snapshot) {
            if (snapshot.connectionState != ConnectionState.done) {
              return const CircularProgressIndicator();
            }
            return Column(children: [
              const Text("Choose layout to continue"),
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
                    child: const Text(
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
                    child: const Text(
                      'Customize',
                    ),
                  ),
                ],
              ),
              Expanded(
                  child: JsonEditor.element(
                element: answer,
                onValueChanged: (value) async {
                  if (value.toString() != answer.toString() && mounted) {
                    storeAnswer(value.toString());
                    setState(() {
                      answer = value;
                    });
                  }
                },
              ))
            ]);
          },
        ),
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
