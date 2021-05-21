import 'package:flutter_survey_js/model/survey.dart' as s;
import 'package:reactive_forms/reactive_forms.dart';

List<ValidatorFunction> questionToValidators(s.Question question) {
  return surveyToValidators(
      isRequired: question.isRequired, validators: question.validators);
}

List<ValidatorFunction> surveyToValidators(
    {bool? isRequired, List<s.SurveyValidator>? validators}) {
  final res = <ValidatorFunction>[];
  if (isRequired == true) {
    res.add(Validators.required);
  }
  if (validators != null) {
    for (var value in validators) {
      if (value is s.NumericValidator) {
        res.add(Validators.number);
        if (value.maxValue != null) {
          res.add(Validators.max(value.maxValue));
        }
        if (value.minValue != null) {
          res.add(Validators.min(value.minValue));
        }
      }
      if (value is s.TextValidator) {
        if (value.maxLength != null) {
          res.add(Validators.maxLength(value.maxLength!));
        }
        if (value.minLength != null) {
          res.add(Validators.minLength(value.minLength!));
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

      if (value is s.AnswerCountValidator) {
        if (value.maxCount != null) {
          res.add(Validators.maxLength(value.maxCount!));
        }
        if (value.minCount != null) {
          res.add(Validators.minLength(value.minCount!));
        }
      }
      if (value is s.RegexValidator) {
        if (value.regex != null) {
          res.add(Validators.pattern(value.regex!));
        }
      }
      if (value is s.EmailValidator) {
        res.add(Validators.email);
      }
      if (value is s.ExpressionValidator) {
        //TODO expression
      }
    }
  }
  return res;
}
