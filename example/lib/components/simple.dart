import 'package:flutter/material.dart';
import 'package:flutter_survey_js/survey.dart' as s;

class Simple extends StatelessWidget {
  final s.Survey? survey;
  final Map<String, Object?>? answer;

  Simple({Key? key, this.survey, this.answer}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Survey test'),
        ),
        body: SafeArea(
            child: survey == null
                ? Center(
                    child: CircularProgressIndicator(),
                  )
                : s.SurveyWidget(
                    survey: survey!,
                    answer: answer,
                    onChange: (v) {
                      print(v);
                    },
                    onSubmit: (v) {
                      print(v);
                      showModalBottomSheet<void>(
                        context: context,
                        builder: (BuildContext context) {
                          return Container(
                            height: 400,
                            child: Center(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.stretch,
                                children: [
                                  Expanded(
                                      child: Container(
                                          child: SingleChildScrollView(
                                              child: Text(v.toString())))),
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
