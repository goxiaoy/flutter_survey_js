import 'package:reactive_forms/reactive_forms.dart';

class AlwaysUpdateFormArray<T> extends FormArray<T> {
  AlwaysUpdateFormArray(
    List<AbstractControl<T>> controls, {
    List<ValidatorFunction> validators = const [],
    List<AsyncValidatorFunction> asyncValidators = const [],
    int asyncValidatorsDebounceTime = 250,
    bool disabled = false,
  }) : super(controls,
            validators: validators,
            asyncValidators: asyncValidators,
            disabled: disabled,
            asyncValidatorsDebounceTime: asyncValidatorsDebounceTime);

  @override
  void patchValue(
    List<T?>? value, {
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    return updateValue(value, updateParent: updateParent, emitEvent: emitEvent);
  }
}

FormArray<T> alwaysUpdateArray<T>(
  List<Object> value, [
  List<ValidatorFunction> validators = const [],
  List<AsyncValidatorFunction> asyncValidators = const [],
]) {
  return AlwaysUpdateFormArray<T>(
    value.map<AbstractControl<T>>((v) {
      if (v is Map<String, Object>) {
        return fb.group(v) as AbstractControl<T>;
      }
      if (v is AbstractControl<T>) {
        return v;
      }

      return fb.control<T>(v as T);
    }).toList(),
    validators: validators,
    asyncValidators: asyncValidators,
  );
}
