import 'package:flutter/material.dart';
import 'package:flutter_survey_js/survey.dart' as s;

class FromPage extends StatelessWidget {
  final s.Survey? survey;

  const FromPage({Key? key, this.survey}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            appBar: AppBar(
              title: survey?.title != null ? Text(survey!.title!) : null,
            ),
            body: survey == null
                ? Center(
                    child: CircularProgressIndicator(),
                  )
                : s.SurveyWidget(
                    survey: survey!,
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
