import 'package:flutter/material.dart';
import 'package:flutter_survey_js/survey.dart' as s;
import 'package:reactive_forms/reactive_forms.dart';

import 'question_title.dart';
import 'survey_element_factory.dart';

final SurveyElementBuilder radioGroupBuilder =
    (context, element, {bool hasTitle = true}) {
  return RadioGroupElement(
    formControlName: element.name!,
    element: element as s.RadioGroup,
  ).wrapQuestionTitle(element, hasTitle: hasTitle);
};

class RadioGroupElement extends StatelessWidget {
  final String formControlName;
  final s.RadioGroup element;
  const RadioGroupElement(
      {Key? key, required this.formControlName, required this.element})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    final list = <Widget>[];
    (element.choices ?? []).forEach((choice) {
      list.add(ReactiveRadioListTile(
        formControlName: element.name!,
        value: choice.value,
        title: Text(choice.text ?? choice.value?.toString() ?? ''),
      ));
    });
    return Column(
      children: list,
    );
  }
}
