import 'package:flutter/material.dart';
import 'package:flutter_colorpicker/flutter_colorpicker.dart';
import 'package:reactive_forms/reactive_forms.dart';

class ReactiveColorPicker extends ReactiveFormField<String, Color> {
  ReactiveColorPicker({
    Key? key,
    String? formControlName,
    FormControl<String>? formControl,
    Map<String, ValidationMessageFunction>? validationMessages,
    ShowErrorsFunction? showErrors,
  }) : super(
            key: key,
            formControl: formControl,
            formControlName: formControlName,
            valueAccessor: ColorValueAccessor(),
            validationMessages: validationMessages,
            showErrors: showErrors,
            builder: (ReactiveFormFieldState<String, Color> field) {
              return ColorPicker(
                pickerColor: field.value ?? Colors.black,
                onColorChanged: (color) {
                  field.didChange(color);
                },
              );
            });
}

class ColorValueAccessor extends ControlValueAccessor<String, Color> {
  @override
  Color? modelToViewValue(String? modelValue) {
    return modelValue == null ? null : colorFromHex(modelValue);
  }

  @override
  String? viewToModelValue(Color? viewValue) {
    return viewValue == null ? null : colorToHex(viewValue);
  }
}
