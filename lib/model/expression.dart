part of 'survey.dart';

@JsonSerializable(includeIfNull: false)
class Expression extends Question {
  static const $type = "expression";
  @override
  String? get type => $type;
  String? expression;
  String? format;
  //"none",  "decimal","currency","percent","date"
  String? displayStyle;
  String? currency;
  int? maximumFractionDigits;
  int? minimumFractionDigits;
  bool? useGrouping;
  @override
  String? enableIf;
  @override
  bool? isRequired;
  // String? readOnly;
  @override
  String? requiredErrorText;

  @override
  String? correctAnswer;
  @override
  String? requiredIf;

  Expression();

  factory Expression.fromJson(Map<String, dynamic> json) =>
      _$ExpressionFromJson(json);
  @override
  Map<String, dynamic> toJson() => _$ExpressionToJson(this);
}
