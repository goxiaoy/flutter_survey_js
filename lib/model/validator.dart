part of 'survey.dart';

final surveyValidatorMap =
    <String, SurveyValidator Function(Map<String, dynamic> json)>{
  NumericValidator.$type: (d) => NumericValidator.fromJson(d),
  TextValidator.$type: (d) => TextValidator.fromJson(d),
  AnswerCountValidator.$type: (d) => AnswerCountValidator.fromJson(d),
  RegexValidator.$type: (d) => RegexValidator.fromJson(d),
  EmailValidator.$type: (d) => EmailValidator.fromJson(d),
  ExpressionValidator.$type: (d) => ExpressionValidator.fromJson(d),
};

abstract class SurveyValidator {
  String? type;
  SurveyValidator();
  factory SurveyValidator.fromJson(Map<String, dynamic> json) {
    final type = json['type'] as String?;
    final f = surveyValidatorMap[type];
    if (f != null) {
      return f(json);
    }
    throw UnsupportedError('SurveyValidator $type');
  }
  Map<String, dynamic> toJson();
}

@JsonSerializable(includeIfNull: false)
class NumericValidator extends SurveyValidator {
  static const $type = "numeric";
  String? get type => $type;

  num? minValue;
  num? maxValue;

  NumericValidator();

  factory NumericValidator.fromJson(Map<String, dynamic> json) =>
      _$NumericValidatorFromJson(json);
  Map<String, dynamic> toJson() => _$NumericValidatorToJson(this);
}

@JsonSerializable(includeIfNull: false)
class TextValidator extends SurveyValidator {
  static const $type = "text";
  String? get type => $type;
  int? minLength;
  int? maxLength;
  bool? allowDigits;
  TextValidator();
  factory TextValidator.fromJson(Map<String, dynamic> json) =>
      _$TextValidatorFromJson(json);
  Map<String, dynamic> toJson() => _$TextValidatorToJson(this);
}

@JsonSerializable(includeIfNull: false)
class AnswerCountValidator extends SurveyValidator {
  static const $type = "answercount";
  String? get type => $type;
  int? minCount;
  int? maxCount;
  AnswerCountValidator();

  factory AnswerCountValidator.fromJson(Map<String, dynamic> json) =>
      _$AnswerCountValidatorFromJson(json);
  Map<String, dynamic> toJson() => _$AnswerCountValidatorToJson(this);
}

@JsonSerializable(includeIfNull: false)
class RegexValidator extends SurveyValidator {
  static const $type = "regex";
  String? get type => $type;
  String? regex;
  RegexValidator();
  factory RegexValidator.fromJson(Map<String, dynamic> json) =>
      _$RegexValidatorFromJson(json);
  Map<String, dynamic> toJson() => _$RegexValidatorToJson(this);
}

@JsonSerializable(includeIfNull: false)
class EmailValidator extends SurveyValidator {
  static const $type = "email";
  String? get type => $type;
  EmailValidator();
  factory EmailValidator.fromJson(Map<String, dynamic> json) =>
      _$EmailValidatorFromJson(json);
  Map<String, dynamic> toJson() => _$EmailValidatorToJson(this);
}

@JsonSerializable(includeIfNull: false)
class ExpressionValidator extends SurveyValidator {
  static const $type = "expression";
  String? get type => $type;
  ExpressionValidator();
  String? expression;

  factory ExpressionValidator.fromJson(Map<String, dynamic> json) =>
      _$ExpressionValidatorFromJson(json);
  Map<String, dynamic> toJson() => _$ExpressionValidatorToJson(this);
}
