import 'package:flutter/material.dart';
import 'package:flutter_survey_js/ui/panel_title.dart';
import 'package:flutter_survey_js/ui/survey_configuration.dart';
import 'package:flutter_survey_js_model/flutter_survey_js_model.dart' as s;

Widget panelBuilder(context, element, {ElementConfiguration? configuration}) {
  final surveyConfig = SurveyConfiguration.of(context)!;
  return Column(
    children: [
      PanelTitle(panel: element as s.Panelbase),
      ListView.separated(
          shrinkWrap: true,
          physics: const ClampingScrollPhysics(),
          itemBuilder: (context, index) {
            return surveyConfig.factory.resolve(context,
                (element as s.Panel).elementsOrQuestions![index].realElement);
          },
          separatorBuilder: (context, index) =>
              surveyConfig.separatorBuilder(context),
          itemCount: (element as s.Panel).elementsOrQuestions?.length ?? 0)
    ],
  );
}
