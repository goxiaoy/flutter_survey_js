import 'package:flutter_survey_js/ui/elements/survey_element_factory.dart';
import 'package:flutter_survey_js_model/flutter_survey_js_model.dart' as s;
import 'package:reactive_forms/reactive_forms.dart';

import 'elements/matrix_dropdown_base.dart';
import 'validators.dart';

// elementsToFormGroup mapping question json elements to FormGroup
FormGroup elementsToFormGroup(List<s.Elementbase> elements,
    {Map<s.Elementbase, Object>? controlsMap,
    List<ValidatorFunction> validators = const [],
    List<AsyncValidatorFunction> asyncValidators = const []}) {
  final Map<String, Object> controls = <String, Object>{};
  for (var element in elements) {
    //the behavior of panel seems different from previous version --2023/04/26 Goxiaoy
    if (element.name != null && element is! s.Panel) {
      final obj = element.toFormObject(controlsMap: controlsMap);
      controls[element.name!] = obj;
      if (controlsMap != null) {
        controlsMap[element] = obj;
      }
    } else {
      //patch parent
      final obj = element.toFormObject(controlsMap: controlsMap);
      if (obj is FormGroup) {
        controls.addAll(obj.controls);
      }
    }
  }
  return fb.group(controls, validators, asyncValidators);
}

extension ElementExtension on s.Elementbase {
  // toFormObject convert question json element to FromControl
  Object toFormObject({Map<s.Elementbase, Object>? controlsMap}) {
    formFunc() {
      if (this is s.Panel) {
        final p = this as s.Panel;
        return elementsToFormGroup(
            p.elementsOrQuestions?.map((p) => p.realElement).toList() ?? [],
            validators: p.isRequired == true ? [Validators.required] : [],
            controlsMap: controlsMap);
      }
      if (this is s.Paneldynamic) {
        return fb
            .array((this as s.Paneldynamic).defaultValue.tryCastToListObj());
      }
      if (this is s.Matrixdynamic) {
        return fb
            .array((this as s.Matrixdynamic).defaultValue.tryCastToListObj());
      }
      if (this is s.Matrix) {
        final m = this as s.Matrix;
        return fb.group(Map.fromEntries(
            (m.rows?.map((p) => p.castToItemvalue()) ?? []).map((e) => MapEntry(
                e.value.toString(), FormControl<Object>(value: null)))));
      }
      if (this is s.Matrixdropdown) {
        final m = this as s.Matrixdropdown;
        return fb.group(Map.fromEntries(
            (m.rows?.map((p) => p.castToItemvalue()) ?? []).map((e) => MapEntry(
                e.value.toString(),
                elementsToFormGroup((m.columns?.toList() ?? [])
                    .map((column) => matrixDropdownColumnToQuestion(m, column))
                    .toList())))));
      }
      final validators = <ValidatorFunction>[];
      if (this is s.Question) {
        validators.addAll(questionToValidators(this as s.Question));
      }
      final c = SurveyElementFactory().resolveFormControl(this);

      final res = c?.call(this, validators: validators) ??
          FormControl<Object>(
            validators: validators,
          );
      return res;
    }

    final obj = formFunc();
    if (controlsMap != null) {
      controlsMap[this] = obj;
    }
    return obj;
  }
}
