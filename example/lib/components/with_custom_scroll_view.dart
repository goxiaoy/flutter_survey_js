import 'package:flutter/material.dart';
import 'package:flutter_survey_js/survey.dart' as s;

class WithCustomScrollView extends StatelessWidget {
  final s.Survey survey;
  final s.SurveyController surveyController = s.SurveyController();

  WithCustomScrollView({Key? key, required this.survey}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      appBar: AppBar(
        title: Text('Survey test'),
      ),
      body: SingleChildScrollView(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Flexible(
              fit: FlexFit.loose,
              child: s.SurveyWidget(
                isScrollable: false,
                survey: survey,
                onChange: (v) {
                  print(v);
                },
                onSubmit: (v) {
                  print(v);
                  showModalBottomSheet<void>(
                    context: context,
                    builder: (BuildContext context) {
                      return Center(
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
                      );
                    },
                  );
                },
                hideSubmitButton: true,
                controller: surveyController,
              ),
            ),
            Flexible(
              fit: FlexFit.loose,
              child: TextButton(
                onPressed: surveyController.submit,
                child: Text(
                  'Submit',
                ),
              ),
            ),
          ],
        ),
      ),
    ));
  }
}
