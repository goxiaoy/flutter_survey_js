import 'package:flutter/material.dart';
import 'package:flutter_survey_js/survey.dart';
import 'package:flutter_survey_js_model/flutter_survey_js_model.dart' as s;
import 'package:reactive_forms/reactive_forms.dart';

import 'elements/matrix_dropdown_base.dart';
import 'validators.dart';

// elementsToFormGroup mapping question json elements to FormGroup
FormGroup elementsToFormGroup(
    BuildContext context, List<s.Elementbase> elements,
    {Map<s.Elementbase, Object>? controlsMap,
    List<ValidatorFunction> validators = const [],
    List<AsyncValidatorFunction> asyncValidators = const []}) {
  final Map<String, Object> controls = <String, Object>{};
  for (var element in elements) {
    //the behavior of panel seems different from previous version --2023/04/26 Goxiaoy
    if (element.name != null && element is! s.Panel) {
      final obj = toFormObject(context, element, controlsMap: controlsMap);
      controls[element.name!] = obj;
      if (controlsMap != null) {
        controlsMap[element] = obj;
      }
    } else {
      //patch parent
      final obj = toFormObject(context, element, controlsMap: controlsMap);
      if (obj is FormGroup) {
        controls.addAll(obj.controls);
      }
    }
  }
  return fb.group(controls, validators, asyncValidators);
}

// toFormObject convert question json element to FromControl
Object toFormObject(BuildContext context, s.Elementbase element,
    {Map<s.Elementbase, Object>? controlsMap}) {
  formFunc() {
    if (element is s.Panel) {
      return elementsToFormGroup(context,
          element.elementsOrQuestions?.map((p) => p.realElement).toList() ?? [],
          validators: element.isRequired == true ? [Validators.required] : [],
          controlsMap: controlsMap);
    }
    if (element is s.Paneldynamic) {
      return fb.array((element).defaultValue.tryCastToListObj());
    }
    if (element is s.Matrixdynamic) {
      return fb.array(element.defaultValue.tryCastToListObj());
    }
    if (element is s.Matrix) {
      return fb.group(Map.fromEntries(
          (element.rows?.map((p) => p.castToItemvalue()) ?? []).map((e) =>
              MapEntry(e.value.toString(), FormControl<Object>(value: null)))));
    }
    if (element is s.Matrixdropdown) {
      return fb.group(Map.fromEntries(
          (element.rows?.map((p) => p.castToItemvalue()) ?? []).map((e) =>
              MapEntry(
                  e.value.toString(),
                  elementsToFormGroup(
                      context,
                      (element.columns?.toList() ?? [])
                          .map((column) =>
                              matrixDropdownColumnToQuestion(element, column))
                          .toList())))));
    }
    final validators = <ValidatorFunction>[];
    if (element is s.Question) {
      validators.addAll(questionToValidators(element));
    }
    final c =
        ((SurveyConfiguration.of(context)?.factory) ?? SurveyElementFactory())
            .resolveFormControl(element);

    final res = c?.call(context, element, validators: validators) ??
        FormControl<Object>(
          validators: validators,
        );
    return res;
  }

  final obj = formFunc();
  if (controlsMap != null) {
    controlsMap[element] = obj;
  }
  return obj;
}

String? getErrorTextFromFormControl<T>(
    BuildContext context, AbstractControl<T> control) {
  if (control.hasErrors) {
    final errorKey = control.errors.keys.first;
    final formConfig = ReactiveFormConfig.of(context);

    final validationMessage = formConfig?.validationMessages[errorKey];
    return validationMessage != null
        ? validationMessage(control.getError(errorKey)!)
        : errorKey;
  }
  return null;
}
