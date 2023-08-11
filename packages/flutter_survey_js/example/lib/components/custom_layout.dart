import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter_survey_js/flutter_survey_js.dart' as s;
import 'package:flutter_survey_js/ui/survey_configuration.dart';
import 'package:flutter_survey_js/ui/survey_widget.dart';
import 'package:json_editor/json_editor.dart';

import 'package:flutter_survey_js/utils.dart';
import 'package:example/storage.dart';

class CustomLayoutPage extends StatelessWidget {
  final s.Survey? survey;
  final Map<String, Object?>? answer;

  const CustomLayoutPage({Key? key, this.survey, this.answer})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    final survey = this.survey;
    return Scaffold(
      appBar: AppBar(
        title: Text(
            'Survey Customize:${survey?.title?.getLocalizedText(context) ?? ''}'),
      ),
      body: SafeArea(
        child: survey == null
            ? const Center(
                child: CircularProgressIndicator(),
              )
            : s.SurveyWidget(
                survey: survey,
                answer: answer,
                onChange: (v) {
                  print(v);
                  storeAnswer(jsonEncode(v));
                },
                builder: (context) => const CustomLayout(),
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
              ),
      ),
    );
  }
}

class CustomLayout extends StatefulWidget {
  const CustomLayout({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() => CustomLayoutState();
}

class CustomLayoutState extends State<CustomLayout> {
  s.Survey get survey => SurveyProvider.of(context).survey;

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final elements = _consolidateQuestions(survey);
    IndexedWidgetBuilder itemBuilder(List<s.Elementbase> elements) {
      return (context, index) {
        if (index < elements.length && index >= 0) {
          return SurveyConfiguration.of(context)!
              .factory
              .resolve(context, elements[index]);
        } else {
          return Container(
            width: double.infinity,
          );
        }
      };
    }

    separatorBuilder(BuildContext context, int index) {
      return SurveyConfiguration.of(context)!.separatorBuilder.call(context);
    }

    return SingleChildScrollView(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Flexible(
            fit: FlexFit.loose,
            child: ListView.separated(
              itemBuilder: itemBuilder(elements),
              separatorBuilder: separatorBuilder,
              itemCount: elements.length,
              physics: const NeverScrollableScrollPhysics(),
              shrinkWrap: true,
            ),
          ),
          Flexible(
            fit: FlexFit.loose,
            child: TextButton(
              onPressed: () => s.SurveyWidgetState.of(context).submit(),
              child: const Text(
                'Submit',
              ),
            ),
          ),
        ],
      ),
    );
  }

  List<s.Elementbase> _consolidateQuestions(s.Survey survey) {
    return (survey.pages?.toList() ?? [])
        .map<List<s.Elementbase>>((e) => e.getElements())
        .fold(<s.Elementbase>[],
            (previousValue, element) => previousValue..addAll(element));
  }
}
