import 'package:flutter/material.dart';

import 'package:flutter_survey_js/ui/form_control.dart';
import 'package:flutter_survey_js/ui/survey_configuration.dart';
import 'package:flutter_survey_js/ui/survey_widget.dart';
import 'package:flutter_survey_js_model/flutter_survey_js_model.dart' as s;

Widget expressionBuilder(BuildContext context, s.Elementbase element,
    {ElementConfiguration? configuration}) {
  final e = (element as s.Expression);

  return ExpressionWidget(
    element: e,
  ).wrapQuestionTitle(context, e, configuration: configuration);
}

class ExpressionWidget extends StatelessWidget {
  final s.Expression element;

  const ExpressionWidget({Key? key, required this.element}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    final node =
        SurveyProvider.of(context).rootNode.findByElement(element: element)!;

    final effectiveDecoration = const InputDecoration()
        .applyDefaults(Theme.of(context).inputDecorationTheme);
    final decoration = effectiveDecoration.copyWith(
        errorText: getErrorTextFromFormControl(context, node.control!));

    if (node.expressionValue != node.control!.value) {
      node.control!.value = node.expressionValue;
    }
    return InputDecorator(
      decoration: decoration,
      child: Text(node.expressionValue?.toString() ?? ""),
    );
  }
}
