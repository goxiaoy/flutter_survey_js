import 'package:flutter/material.dart';
import 'package:reactive_forms/reactive_forms.dart';

import 'always_update_form_array.dart';

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

// Adaptived from reactive_form form_builder.dart
class SurveyFormBuilder {
  FormGroup group(
    Map<String, Object> controls, [
    List<ValidatorFunction> validators = const [],
    List<AsyncValidatorFunction> asyncValidators = const [],
  ]) {
    final map = controls
        .map<String, AbstractControl<Object?>>((String key, Object value) {
      if (value is String) {
        return MapEntry(key, FormControl<String>(value: value));
      } else if (value is int) {
        return MapEntry(key, FormControl<int>(value: value));
      } else if (value is bool) {
        return MapEntry(key, FormControl<bool>(value: value));
      } else if (value is double) {
        return MapEntry(key, FormControl<double>(value: value));
      } else if (value is DateTime) {
        return MapEntry(key, FormControl<DateTime>(value: value));
      } else if (value is TimeOfDay) {
        return MapEntry(key, FormControl<TimeOfDay>(value: value));
      } else if (value is AbstractControl<Object?>) {
        return MapEntry(key, value);
      } else if (value is ValidatorFunction) {
        return MapEntry(key, FormControl(validators: [value]));
      } else if (value is List<ValidatorFunction>) {
        return MapEntry(key, FormControl(validators: value));
      } else if (value is List<Object?>) {
        if (value.isEmpty) {
          return MapEntry(key, FormControl());
        } else {
          final defaultValue = value.first;
          final validators = List.of(value.skip(1));

          if (validators.isNotEmpty &&
              validators.any((validator) => validator is! ValidatorFunction)) {
            throw FormBuilderInvalidInitializationException(
                'Invalid validators initialization');
          }

          if (defaultValue is ValidatorFunction) {
            throw FormBuilderInvalidInitializationException(
                'Expected first value in array to be default value of the control and not a validator.');
          }

          final effectiveValidators = validators
              .map<ValidatorFunction>((v) => v! as ValidatorFunction)
              .toList();
          final control = _control(defaultValue, effectiveValidators);
          return MapEntry(key, control as AbstractControl<Object>);
        }
      }

      return MapEntry(key, FormControl(value: value));
    });

    return FormGroup(
      map,
      validators: validators,
      asyncValidators: asyncValidators,
    );
  }

  FormControl<dynamic> _control(
      dynamic value, List<ValidatorFunction> validators) {
    if (value is AbstractControl) {
      throw FormBuilderInvalidInitializationException(
          'Default value of control must not be an AbstractControl.');
    }

    if (value is String) {
      return FormControl<String>(value: value, validators: validators);
    } else if (value is int) {
      return FormControl<int>(value: value, validators: validators);
    } else if (value is bool) {
      return FormControl<bool>(value: value, validators: validators);
    } else if (value is double) {
      return FormControl<double>(value: value, validators: validators);
    } else if (value is DateTime) {
      return FormControl<DateTime>(value: value);
    } else if (value is TimeOfDay) {
      return FormControl<TimeOfDay>(value: value);
    }

    return FormControl<Object>(value: value, validators: validators);
  }

  FormArray<T> array<T>(
    List<Object> value, [
    List<ValidatorFunction> validators = const [],
    List<AsyncValidatorFunction> asyncValidators = const [],
  ]) {
    return AlwaysUpdateFormArray<T>(
      value.map<AbstractControl<T>>((v) {
        if (v is Map<String, Object>) {
          return surveyfb.group(v) as AbstractControl<T>;
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
}

final surveyfb = SurveyFormBuilder();
