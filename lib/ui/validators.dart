import 'package:flutter_survey_js_model/flutter_survey_js_model.dart' as s;
import 'package:reactive_forms/reactive_forms.dart';

/// Validator that requires the control have a non-empty value.
class NonEmptyValidator extends Validator<dynamic> {
  @override
  Map<String, dynamic>? validate(AbstractControl<dynamic> control) {
    final error = <String, dynamic>{ValidationMessage.required: true};

    if (control.value == null) {
      return error;
    } else if (control.value is String) {
      return (control.value as String).trim().isEmpty ? error : null;
    } else if (control.value is List) {
      return (control.value as List).isEmpty ? error : null;
    } else if (control.value is Map) {
      return (control.value as Map).isEmpty ? error : null;
    }

    return null;
  }

  static ValidatorFunction get get => NonEmptyValidator().validate;
}

class MultipleTextNonEmptyValidator extends Validator<dynamic> {
  @override
  Map<String, dynamic>? validate(AbstractControl<dynamic> control) {
    final error = <String, dynamic>{ValidationMessage.required: true};

    bool hasError = true;

    for (final value in control.value.values) {
      if (value != null && value.toString().trim().isNotEmpty) {
        hasError = false;
      }
    }

    return hasError ? error : null;
  }

  static ValidatorFunction get get => MultipleTextNonEmptyValidator().validate;
}

List<ValidatorFunction> questionToValidators(s.Question question) {
  final res = <ValidatorFunction>[];
  final validators = question.validators?.map((p) => p.realValidator).toList();
  if (question.isRequired == true) {
    if (question is s.Multipletext) {
      res.add(MultipleTextNonEmptyValidator.get);
    } else {
      res.add(NonEmptyValidator.get);
    }
  }
  if (validators != null) {
    for (var value in validators) {
      if (value is s.Numericvalidator) {
        res.add(Validators.number);
        if (value.maxValue != null) {
          res.add(Validators.max(value.maxValue));
        }
        if (value.minValue != null) {
          res.add(Validators.min(value.minValue));
        }
      }
      if (value is s.Textvalidator) {
        if (value.maxLength != null) {
          res.add(Validators.maxLength(value.maxLength!.toInt()));
        }
        if (value.minLength != null) {
          res.add(Validators.minLength(value.minLength!.toInt()));
        }
        if (value.allowDigits != null) {
          res.add((control) {
            if (control.value is String) {
              if (!value.allowDigits! &&
                  (control.value as String).contains('.')) {
                return {'allowDigits': value.allowDigits};
              }
            }
            return null;
          });
        }
      }

      if (value is s.Answercountvalidator) {
        if (value.maxCount != null) {
          res.add(Validators.maxLength(value.maxCount!.toInt()));
        }
        if (value.minCount != null) {
          res.add(Validators.minLength(value.minCount!.toInt()));
        }
      }
      if (value is s.Regexvalidator) {
        if (value.regex != null) {
          res.add(Validators.pattern(value.regex!));
        }
      }
      if (value is s.Emailvalidator) {
        res.add(Validators.email);
      }
      if (value is s.Expressionvalidator) {
        //TODO expression
      }
    }
  }
  return res;
}
