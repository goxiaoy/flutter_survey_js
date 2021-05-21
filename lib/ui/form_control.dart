import 'package:flutter_survey_js/model/survey.dart' as s;
import 'package:flutter_survey_js/ui/elements/survey_element_factory.dart';
import 'package:reactive_forms/reactive_forms.dart';

import 'validators.dart';

FormGroup elementsToFormGroup(List<s.ElementBase> elements,
    {Map<s.ElementBase, Object>? controlsMap,
    List<ValidatorFunction> validators = const [],
    List<AsyncValidatorFunction> asyncValidators = const []}) {
  final Map<String, Object> controls = <String, Object>{};
  for (var element in elements) {
    if (element.name != null) {
      final obj = element.toFormObject(controlsMap: controlsMap);
      controls[element.name!] = obj;
      if (controlsMap != null) {
        controlsMap[element] = obj;
      }
    }
  }
  return fb.group(controls, validators, asyncValidators);
}

extension ElementExtension on s.ElementBase {
  Object toFormObject({Map<s.ElementBase, Object>? controlsMap}) {
    final formFunc = () {
      if (this is s.Panel) {
        final p = this as s.Panel;
        return elementsToFormGroup(p.elements ?? [],
            validators: p.isRequired == true ? [Validators.required] : [],
            controlsMap: controlsMap);
      }
      if (this is s.PanelDynamic) {
        return fb.array((this as s.PanelDynamic).defaultValue ?? []);
      }
      if (this is s.MatrixDynamic) {
        return fb.array((this as s.MatrixDynamic).defaultValue ?? []);
      }
      if (this is s.Matrix) {
        final m = this as s.Matrix;
        return fb.group(Map.fromEntries((m.rows ?? []).map((e) =>
            MapEntry(e.value.toString(), FormControl<dynamic>(value: null)))));
      }
      if (this is s.MatrixDropdown) {
        final m = this as s.MatrixDropdown;
        return fb.group(Map.fromEntries((m.rows ?? []).map((e) => MapEntry(
            e.value.toString(),
            fb.group(Map.fromEntries((m.columns ?? []).map((e) =>
                MapEntry(e.name!, FormControl<dynamic>(value: null)))))))));
      }
      final validators = <ValidatorFunction>[];
      if (this is s.Question) {
        validators.addAll(questionToValidators(this as s.Question));
      }
      final c = SurveyElementFactory().resolveFormControl(this);

      final res = c?.call(this) ?? FormControl(validators: validators);
      return res;
    };

    final obj = formFunc();
    if (controlsMap != null) {
      controlsMap[this] = obj;
    }
    return obj;
  }
}
