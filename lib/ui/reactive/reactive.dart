import 'package:reactive_forms/reactive_forms.dart';

class NumStringValueAccessor extends ControlValueAccessor<num, String> {
  @override
  String? modelToViewValue(num? modelValue) {
    return modelValue?.toString();
  }

  @override
  num? viewToModelValue(String? viewValue) {
    return viewValue == null ? null : num.tryParse(viewValue);
  }
}

/// Validator that validates if control's value is a numeric value.
class NullableNumberValidator extends Validator<dynamic> {
  /// The regex expression of a numeric string value.
  static final RegExp numberRegex = RegExp(r'^-?[0-9]+$');

  @override
  Map<String, dynamic>? validate(AbstractControl<dynamic> control) {
    return (control.value != null) &&
            !numberRegex.hasMatch(control.value.toString())
        ? <String, dynamic>{ValidationMessage.number: true}
        : null;
  }
}
