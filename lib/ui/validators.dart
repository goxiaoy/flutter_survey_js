import 'package:flutter_survey_js_model/flutter_survey_js_model.dart' as s;
import 'package:reactive_forms/reactive_forms.dart';

List<ValidatorFunction> questionToValidators(s.Question question) {
  return surveyToValidators(
      isRequired: question.isRequired,
      validators: question.validators?.map((p) => p.realValidator).toList());
}

List<ValidatorFunction> surveyToValidators(
    {bool? isRequired, List<s.Surveyvalidator>? validators}) {
  final res = <ValidatorFunction>[];
  if (isRequired == true) {
    res.add(Validators.required);
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
