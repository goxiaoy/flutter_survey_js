import 'package:flutter/material.dart';
import 'package:flutter_survey_js/survey.dart';
import 'package:flutter_survey_js/ui/reactive/always_update_form_array.dart';
import 'package:flutter_survey_js_model/flutter_survey_js_model.dart' as s;
import 'package:reactive_forms/reactive_forms.dart';

import 'elements/matrix_dropdown_base.dart';
import 'validators.dart';

Object? tryGetValue(String name, Object? value) {
  if (value == null) return null;
  if (value is Map<String, Object?>) {
    return value[name];
  }
  return null;
}

// elementsToFormGroup mapping question json elements to FormGroup
// [value] default value passed down by parent
FormGroup elementsToFormGroup(
    BuildContext context, List<s.Elementbase> elements,
    {Map<s.Elementbase, Object>? controlsMap,
    List<ValidatorFunction> validators = const [],
    List<AsyncValidatorFunction> asyncValidators = const [],
    Object? value}) {
  final Map<String, Object> controls = <String, Object>{};

  for (var element in elements) {
    //the behavior of panel seems different from previous version --2023/04/26 Goxiaoy
    if (element.name != null && element is! s.Panel) {
      final obj = toFormObject(context, element,
          controlsMap: controlsMap, value: tryGetValue(element.name!, value));
      controls[element.name!] = obj;
      if (controlsMap != null) {
        controlsMap[element] = obj;
      }
    } else {
      //patch parent
      final obj = toFormObject(context, element,
          controlsMap: controlsMap, value: value);
      if (obj is FormGroup) {
        controls.addAll(obj.controls);
      }
    }
  }
  return fb.group(controls, validators, asyncValidators);
}

// toFormObject convert question json element to FromControl
// [value] default value passed down by parent
Object toFormObject(BuildContext context, s.Elementbase element,
    {Map<s.Elementbase, Object>? controlsMap, Object? value}) {
  Object? getDefaultValue() {
    if (element is s.Question) {
      return element.defaultValue?.value ?? value;
    }
    return value;
  }

  formFunc() {
    if (element is s.Panel) {
      return elementsToFormGroup(context,
          element.elementsOrQuestions?.map((p) => p.realElement).toList() ?? [],
          validators: element.isRequired == true ? [Validators.required] : [],
          controlsMap: controlsMap,
          value: value);
    }
    if (element is s.Paneldynamic) {
      return alwaysUpdateArray(element.defaultValue.tryCastToListObj() ??
          value.tryCastToList() ??
          []);
    }
    if (element is s.Matrixdynamic) {
      return alwaysUpdateArray(element.defaultValue.tryCastToListObj() ??
          value.tryCastToList() ??
          []);
    }
    if (element is s.Matrix) {
      return fb.group(Map.fromEntries(
          (element.rows?.map((p) => p.castToItemvalue()) ?? []).map((e) =>
              MapEntry(
                  e.value.toString(),
                  fb.control<Object?>(
                      tryGetValue(e.value.toString(), getDefaultValue()))))));
    }
    if (element is s.Matrixdropdown) {
      return fb.group(Map.fromEntries((element.rows
                  ?.map((p) => p.castToItemvalue()) ??
              [])
          .map((e) => MapEntry(
              e.value.toString(),
              elementsToFormGroup(
                  context,
                  (element.columns?.toList() ?? [])
                      .map((column) =>
                          matrixDropdownColumnToQuestion(element, column))
                      .toList(),
                  value:
                      tryGetValue(e.value.toString(), getDefaultValue()))))));
    }
    final validators = <ValidatorFunction>[];
    if (element is s.Question) {
      validators.addAll(questionToValidators(element));
    }
    final c =
        ((SurveyConfiguration.of(context)?.factory) ?? SurveyElementFactory())
            .resolveFormControl(element);
    //find from facotry or fallback to FormControl<Object>
    final res = c?.call(context, element,
            validators: validators, value: value) ??
        FormControl<Object>(validators: validators, value: getDefaultValue());
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
