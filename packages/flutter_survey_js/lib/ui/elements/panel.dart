import 'package:flutter/material.dart';
import 'package:flutter_survey_js/flutter_survey_js.dart';
import 'package:flutter_survey_js/ui/panel_title.dart';

import 'package:flutter_survey_js_model/flutter_survey_js_model.dart' as s;

Widget panelBuilder(BuildContext context, s.Elementbase element,
    {ElementConfiguration? configuration}) {
  final surveyConfig = SurveyConfiguration.of(context)!;
  final node =
      SurveyWidgetState.of(context).rootNode.findByElement(element: element)!;
  final panelRealChildren =
      node.children.where((e) => e.element != null).toList();
  return Column(
    children: [
      PanelTitle(panel: element as s.Panelbase),
      ListView.separated(
          shrinkWrap: true,
          physics: const ClampingScrollPhysics(),
          itemBuilder: (context, index) {
            return surveyConfig.factory
                .resolve(context, panelRealChildren[index].element!);
          },
          separatorBuilder: (context, index) =>
              surveyConfig.separatorBuilder(context),
          itemCount: panelRealChildren.length)
    ],
  );
}
