part of 'survey.dart';

@JsonSerializable(includeIfNull: false)
class Expression extends Question {
  static const $type = "expression";
  String? get type => $type;
  String? expression;
  String? format;
  //"none",  "decimal","currency","percent","date"
  String? displayStyle;
  String? currency;
  int? maximumFractionDigits;
  int? minimumFractionDigits;
  bool? useGrouping;
  String? enableIf;
  bool? isRequired;
  // String? readOnly;
  String? requiredErrorText;

  String? correctAnswer;
  String? requiredIf;

  Expression();

  factory Expression.fromJson(Map<String, dynamic> json) =>
      _$ExpressionFromJson(json);
  Map<String, dynamic> toJson() => _$ExpressionToJson(this);
}
