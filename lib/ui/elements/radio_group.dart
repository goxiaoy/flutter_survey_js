import 'package:flutter/material.dart';
import 'package:flutter_survey_js/ui/survey_configuration.dart';
import 'package:flutter_survey_js_model/flutter_survey_js_model.dart' as s;
import 'package:flutter_survey_js/ui/reactive/reactive_group_button.dart';
import 'package:group_button/group_button.dart';

Widget radioGroupBuilder(context, element,
    {ElementConfiguration? configuration}) {
  final e = element as s.Radiogroup;
  return ReactiveGroupButton(
    options: const GroupButtonOptions(spacing: 0, runSpacing: 0),
    isRadio: true,
    formControlName: element.name!,
    buttons: (e.choices?.toList() ?? []),
  ).wrapQuestionTitle(context, element, configuration: configuration);
}
