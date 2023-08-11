import 'package:flutter/material.dart';
import 'package:reactive_forms/reactive_forms.dart';


String? getErrorTextFromFormControl<T>(
    BuildContext context, AbstractControl<T> control) {
  if (control.touched && control.hasErrors) {
    final errorKey = control.errors.keys.first;
    final formConfig = ReactiveFormConfig.of(context);

    final validationMessage = formConfig?.validationMessages[errorKey];
    return validationMessage != null
        ? validationMessage(control.getError(errorKey)!)
        : errorKey;
  }
  return null;
}
