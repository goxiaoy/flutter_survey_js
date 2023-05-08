import 'package:flutter/material.dart';
import 'package:flutter_survey_js_model/flutter_survey_js_model.dart' as s;
import 'package:reactive_forms/reactive_forms.dart';

import '../../generated/l10n.dart';
import 'question_title.dart';

Widget checkBoxBuilder(context, element, {bool hasTitle = true}) {
  return CheckBoxElement(
    formControlName: element.name!,
    element: element as s.Checkbox,
  ).wrapQuestionTitle(element, hasTitle: hasTitle);
}

class CheckBoxElement extends StatefulWidget {
  final String formControlName;
  final s.Checkbox element;

  const CheckBoxElement(
      {Key? key, required this.formControlName, required this.element})
      : super(key: key);

  static bool allChecked(
      List<s.Itemvalue> choices, List<AbstractControl<Object?>> selected) {
    for (var choice in choices) {
      if (!selected.any((c) => c.value == choice.value?.value)) {
        return false;
      }
    }
    return true;
  }

  static void excludeFrom(FormArray<Object?> formArray, Object obj) {
    final rs = formArray.controls.where((c) => c.value == obj).toList();
    if (rs.isNotEmpty) {
      for (var r in rs) {
        formArray.remove(r);
      }
    }
  }

  @override
  State<CheckBoxElement> createState() => _CheckBoxElementState();
}

class _CheckBoxElementState extends State<CheckBoxElement> {
  bool showOtherTextField = false;
  @override
  Widget build(BuildContext context) {
    List<s.Itemvalue> choices =
        widget.element.choices?.map((p0) => p0.castToItemvalue()).toList() ??
            [];
    return ReactiveFormArray(
        formArrayName: widget.formControlName,
        builder: (context, formArray, child) {
          final list = <Widget>[];
          // showSelectAllItem
          if (widget.element.showSelectAllItem ?? false) {
            String? text =
                widget.element.selectAllText ?? S.of(context).selectAllText;
            list.add(CheckboxListTile(
              value: CheckBoxElement.allChecked(choices, formArray.controls),
              title: Text(text),
              onChanged: (v) {
                if (v == true) {
                  formArray.clear();
                  formArray.addAll(choices
                      .map((choice) =>
                          FormControl<Object>(value: choice.value?.value))
                      .toList());
                } else {
                  formArray.clear();
                }
                setState(() {
                  showOtherTextField =
                      formArray.controls.any((c) => c.value == 'other');
                });
              },
            ));
          }
          for (s.Itemvalue element in (widget.element.choices
                  ?.map((p0) => p0.castToItemvalue())
                  .toList() ??
              [])) {
            list.add(CheckboxListTile(
              value: formArray.controls
                  .any((c) => c.value == element.value?.value),
              title: Text(element.text ?? element.value?.toString() ?? ''),
              onChanged: (v) {
                if (v == true) {
                  CheckBoxElement.excludeFrom(formArray, 'none');
                  formArray
                      .add(FormControl<Object>(value: element.value?.value));
                } else {
                  final rs = formArray.controls
                      .where((c) => c.value == element.value?.value)
                      .toList();
                  if (rs.isNotEmpty) {
                    for (var r in rs) {
                      formArray.remove(r);
                    }
                  }
                }
                setState(() {
                  showOtherTextField =
                      formArray.controls.any((c) => c.value == 'other');
                });
              },
            ));
          }
          // showNoneItem
          if (widget.element.showNoneItem ?? false) {
            String? text =
                widget.element.noneText ?? S.of(context).noneItemText;
            list.add(CheckboxListTile(
              value: formArray.controls.any((c) => c.value == 'none'),
              title: Text(text),
              onChanged: (v) {
                if (v == true) {
                  formArray.clear();
                  formArray.add(FormControl<Object>(value: 'none'));
                } else {
                  CheckBoxElement.excludeFrom(formArray, 'none');
                }
                setState(() {
                  showOtherTextField =
                      formArray.controls.any((c) => c.value == 'other');
                });
              },
            ));
          }
          // showOtherItem
          if (widget.element.showOtherItem ?? false) {
            String? text =
                widget.element.otherText ?? S.of(context).otherItemText;
            list.add(CheckboxListTile(
              value: formArray.controls.any((c) => c.value == 'other'),
              title: Text(text),
              onChanged: (v) {
                if (v == true) {
                  formArray.add(FormControl<Object>(value: 'other'));
                } else {
                  CheckBoxElement.excludeFrom(formArray, 'other');
                }
                setState(() {
                  showOtherTextField =
                      formArray.controls.any((c) => c.value == 'other');
                });
              },
            ));
          }
          return Column(
            children: [
              ...list,
              if (showOtherTextField)
                ReactiveTextField(
                  keyboardType: TextInputType.multiline,
                  maxLines: null,
                  formControl: FormControl<String?>(), // TODO form logic
                  decoration: InputDecoration(
                    border: const OutlineInputBorder(),
                    hintText: widget.element.otherPlaceholder,
                  ),
                ),
            ],
          );
        });
  }
}
