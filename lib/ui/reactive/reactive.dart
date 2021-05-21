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
