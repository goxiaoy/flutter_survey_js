import 'package:flutter/material.dart';
import 'package:flutter_survey_js/survey.dart' hide Text;
import 'package:flutter_survey_js/ui/elements/selectbase.dart';
import 'package:flutter_survey_js/ui/form_control.dart';
import 'package:flutter_survey_js/ui/reactive/reactive_wrap_form_array.dart';
import 'package:flutter_survey_js_model/flutter_survey_js_model.dart' as s;
import 'package:reactive_forms/reactive_forms.dart';

import '../../generated/l10n.dart';

Widget checkBoxBuilder(BuildContext context, s.Elementbase element,
    {ElementConfiguration? configuration}) {
  return CheckBoxElement(
    formControlName: element.name!,
    element: element as s.Checkbox,
  ).wrapQuestionTitle(context, element, configuration: configuration);
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
  late SelectbaseController otherController;

  void resetOtherItem(List<s.Itemvalue> choices, FormArray<Object?> formArray) {
    Future.microtask(() {
      otherController
          .setShowOther(formArray.controls.any((c) => c.value == otherValue));
      otherController.setShowNone(widget.element.showNoneItem ?? false);
      //set other value
      if (formArray.controls.any((e) => e.value == noneValue)) {
        otherController.clearOtherValue();
        return;
      }
      final validValue = choices.map((e) => e.value?.value);
      //outside choice value. treat as other value
      for (final v in formArray.controls.map((e) => e.value)) {
        if (!validValue.contains(v)) {
          otherController.setOtherValue(v.toString());
          checkOther(formArray);
        }
      }
      //still got no other
      if (!formArray.controls.any((c) => c.value == otherValue)) {
        otherController.clearOtherValue();
      }
    });
  }

  void checkOther(FormArray<Object?> formArray) {
    if (!formArray.controls.any((e) => e.value == otherValue)) {
      //make sure othervalue is checked
      formArray.add(fb.control<dynamic>(otherValue));
    }
  }

  void uncheckOther(FormArray<Object?> formArray) {
    formArray.controls.where((e) => e.value == otherValue).forEach((element) {
      formArray.remove(element);
    });
  }

  @override
  void initState() {
    super.initState();
    otherController = SelectbaseController(element: widget.element);

    var choices =
        widget.element.choices?.map((p0) => p0.castToItemvalue()).toList() ??
            [];
    var formArray =
        (ReactiveForm.of(context, listen: false) as FormControlCollection)
            .control(widget.formControlName) as FormArray<Object?>;
    resetOtherItem(choices, formArray);
    formArray.markAsUntouched();
  }

  @override
  Widget build(BuildContext context) {
    List<s.Itemvalue> choices =
        widget.element.choices?.map((p0) => p0.castToItemvalue()).toList() ??
            [];
    return SelectbaseWidget(
        controller: otherController,
        child: ReactiveWrapFormArray(
          formArrayName: widget.formControlName,
          wrapper: (BuildContext context, FormArray<Object?> formArray,
              Widget child) {
            final effectiveDecoration = const InputDecoration()
                .applyDefaults(Theme.of(context).inputDecorationTheme);

            return InputDecorator(
              decoration: effectiveDecoration.copyWith(
                  errorText: getErrorTextFromFormControl(context, formArray)),
              child: child,
            );
          },
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
                  formArray.clear();
                  otherController.clearOtherValue();
                  resetOtherItem(choices, formArray);
                  if (v == true) {
                    formArray.addAll(choices
                        .map((choice) =>
                            FormControl<Object>(value: choice.value?.value))
                        .toList());
                  }
                  formArray.markAsTouched();
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
                    CheckBoxElement.excludeFrom(formArray, noneValue);
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
                  formArray.markAsTouched();
                },
              ));
            }
            // showNoneItem
            if (otherController.showNone) {
              String? text =
                  widget.element.noneText ?? S.of(context).noneItemText;
              list.add(CheckboxListTile(
                value: formArray.controls.any((c) => c.value == noneValue),
                title: Text(text),
                onChanged: (v) {
                  if (v == true) {
                    formArray.clear();
                    formArray.add(FormControl<Object>(value: noneValue));
                  } else {
                    CheckBoxElement.excludeFrom(formArray, noneValue);
                  }
                  resetOtherItem(choices, formArray);
                  formArray.markAsTouched();
                },
              ));
            }
            // showOtherItem
            if (widget.element.showOtherItem ?? false) {
              String? text = otherController.getOtherLocaledText(context);
              list.add(CheckboxListTile(
                value: formArray.controls.any((c) => c.value == otherValue),
                title: Text(text),
                onChanged: (v) {
                  if (v != null) {
                    otherController.setShowOther(v);
                    if (v) {
                      checkOther(formArray);
                    } else {
                      uncheckOther(formArray);
                    }
                  }
                  formArray.markAsTouched();
                },
              ));
            }

            return Column(
              children: list,
            );
          },
        ));
  }
}
