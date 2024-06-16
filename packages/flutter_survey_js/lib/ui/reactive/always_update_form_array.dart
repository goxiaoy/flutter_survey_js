import 'package:reactive_forms/reactive_forms.dart';

class AlwaysUpdateFormArray<T> extends FormArray<T> {
  AlwaysUpdateFormArray(
    List<AbstractControl<T>> controls, {
    List<Validator> validators = const [],
    List<AsyncValidator> asyncValidators = const [],
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

