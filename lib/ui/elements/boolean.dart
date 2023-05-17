import 'package:flutter/material.dart';
import 'package:flutter_survey_js/ui/survey_configuration.dart';
import 'package:flutter_survey_js_model/flutter_survey_js_model.dart' as s;
import 'package:reactive_forms/reactive_forms.dart';

Widget booleanBuilder(context, element, {ElementConfiguration? configuration}) {
  //TODO ReactiveSwitch is not safe
  s.Boolean booleanElement = element as s.Boolean;
  String? labelFalse = booleanElement.labelFalse;
  String? labelTrue = booleanElement.labelTrue;
  const labelPadding = 8.0;
  return Row(
    children: [
      if (labelFalse != null)
        Padding(
          padding: const EdgeInsets.only(right: labelPadding),
          child: Text(labelFalse),
        ),
      Flexible(
        child: ReactiveSwitch(
          formControlName: element.name!,
        ),
      ),
      if (labelTrue != null)
        Padding(
          padding: const EdgeInsets.only(left: labelPadding),
          child: Text(labelTrue),
        ),
    ],
  ).wrapQuestionTitle(context, element, configuration: configuration);
}
