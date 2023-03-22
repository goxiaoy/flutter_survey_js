import 'package:flutter/material.dart';
import 'package:flutter_survey_js/survey.dart' as s;

class WithController extends StatelessWidget {
  final s.Survey? survey;
  final s.SurveyController surveyController = s.SurveyController();

  WithController({Key? key, this.survey}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            appBar: AppBar(
              title: Text('Survey test'),
            ),
            body: survey == null
                ? Center(
                    child: CircularProgressIndicator(),
                  )
                : Column(
                    children: [
                      Expanded(
                        child: s.SurveyWidget(
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
                                      crossAxisAlignment:
                                          CrossAxisAlignment.stretch,
                                      children: [
                                        Expanded(
                                            child: Container(
                                                child: SingleChildScrollView(
                                                    child:
                                                        Text(v.toString())))),
                                        ElevatedButton(
                                          child: const Text('Close'),
                                          onPressed: () =>
                                              Navigator.pop(context),
                                        )
                                      ],
                                    ),
                                  ),
                                );
                              },
                            );
                          },
                          controller: surveyController,
                        ),
                      ),
                      TextButton(
                        onPressed: surveyController.submit,
                        child: Text(
                          'Submit',
                        ),
                      )
                    ],
                  )));
  }
}
