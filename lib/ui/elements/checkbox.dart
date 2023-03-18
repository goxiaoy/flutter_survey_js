import 'package:flutter/material.dart';
import 'package:flutter_survey_js/survey.dart' as s;
import 'package:reactive_forms/reactive_forms.dart';

import 'question_title.dart';
import 'survey_element_factory.dart';

final SurveyElementBuilder checkBoxBuilder =
    (context, element, {bool hasTitle = true}) {
  return CheckBoxElement(
    formControlName: element.name!,
    element: element as s.CheckBox,
  ).wrapQuestionTitle(element, hasTitle: hasTitle);
};

class CheckBoxElement extends StatelessWidget {
  final String formControlName;
  final s.CheckBox element;
  const CheckBoxElement(
      {Key? key, required this.formControlName, required this.element})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    return ReactiveFormArray(
        formArrayName: formControlName,
        builder: (context, formArray, child) {
          final list = <Widget>[];
          (element.choices ?? []).forEach((element) {
            list.add(CheckboxListTile(
              value: formArray.controls.any((c) => c.value == element.value),
              title: Text(element.text ?? element.value?.toString() ?? ''),
              onChanged: (v) {
                if (v == true) {
                  formArray.add(FormControl<Object>(value: element.value));
                } else {
                  final rs = formArray.controls
                      .where((c) => c.value == element.value)
                      .toList();
                  if (rs.length > 0) {
                    rs.forEach((r) {
                      formArray.remove(r);
                    });
                  }
                }
              },
            ));
          });
          return Column(
            children: list,
          );
        });
  }
}
