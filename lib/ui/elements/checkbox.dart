import 'package:flutter/material.dart';
import 'package:flutter_survey_js_model/flutter_survey_js_model.dart' as s;
import 'package:reactive_forms/reactive_forms.dart';

import 'question_title.dart';

Widget checkBoxBuilder(context, element, {bool hasTitle = true}) {
  return CheckBoxElement(
    formControlName: element.name!,
    element: element as s.Checkbox,
  ).wrapQuestionTitle(element, hasTitle: hasTitle);
}

class CheckBoxElement extends StatelessWidget {
  final String formControlName;
  final s.Checkbox element;

  const CheckBoxElement({Key? key, required this.formControlName, required this.element}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ReactiveFormArray(
        formArrayName: formControlName,
        builder: (context, formArray, child) {
          final list = <Widget>[];
          for (var element in (element.choices?.map((p0) => p0.castToItemvalue()).toList() ?? [])) {
            list.add(CheckboxListTile(
              value: formArray.controls.any((c) => c.value?.toString() == element.value?.toString()),
              title: Text(element.text ?? element.value?.toString() ?? ''),
              onChanged: (v) {
                if (v == true) {
                  formArray.add(FormControl<Object>(value: element.value?.toString()));
                } else {
                  final rs = formArray.controls.where((c) => c.value?.toString() == element.value?.toString()).toList();
                  if (rs.isNotEmpty) {
                    for (var r in rs) {
                      formArray.remove(r);
                    }
                  }
                }
              },
            ));
          }
          return Column(
            children: list,
          );
        });
  }
}
