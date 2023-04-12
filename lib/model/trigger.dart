part of 'survey.dart';

final surveyTriggerMap =
    <String, SurveyTrigger Function(Map<String, dynamic> json)>{
  VisibleTrigger.$type: (d) => VisibleTrigger.fromJson(d),
  CompleteTrigger.$type: (d) => CompleteTrigger.fromJson(d),
  SetvalueTrigger.$type: (d) => SetvalueTrigger.fromJson(d),
  SkipTrigger.$type: (d) => SkipTrigger.fromJson(d),
  RunExpressionTrigger.$type: (d) => RunExpressionTrigger.fromJson(d),
};

abstract class Trigger {
  String? operator;
  String? value;
  String? expression;
  Trigger();
}

abstract class SurveyTrigger extends Trigger {
  String? name;

  SurveyTrigger();
  factory SurveyTrigger.fromJson(Map<String, dynamic> json) {
    final type = json['type'] as String?;
    final f = surveyTriggerMap[type];
    if (f != null) {
      return f(json);
    }
    throw UnsupportedError('SurveyTrigger');
  }
  Map<String, dynamic> toJson();
}

@JsonSerializable(includeIfNull: false)
class VisibleTrigger extends SurveyTrigger {
  static const $type = "visible";
  @override
  String? get name => $type;
  String? pages;
  List<String>? questions;

  VisibleTrigger();
  factory VisibleTrigger.fromJson(Map<String, dynamic> json) =>
      _$VisibleTriggerFromJson(json);
  @override
  Map<String, dynamic> toJson() => _$VisibleTriggerToJson(this);
}

@JsonSerializable(includeIfNull: false)
class CompleteTrigger extends SurveyTrigger {
  static const $type = "complete";
  @override
  String? get name => $type;
  CompleteTrigger();

  factory CompleteTrigger.fromJson(Map<String, dynamic> json) =>
      _$CompleteTriggerFromJson(json);
  @override
  Map<String, dynamic> toJson() => _$CompleteTriggerToJson(this);
}

@JsonSerializable(includeIfNull: false)
class SetvalueTrigger extends SurveyTrigger {
  static const $type = "setvalue";
  @override
  String? get name => $type;
  String? setToName;
  String? setValue;
  bool? isVariable;
  SetvalueTrigger();
  factory SetvalueTrigger.fromJson(Map<String, dynamic> json) =>
      _$SetvalueTriggerFromJson(json);
  @override
  Map<String, dynamic> toJson() => _$SetvalueTriggerToJson(this);
}

@JsonSerializable(includeIfNull: false)
class CopyValueTrigger extends SurveyTrigger {
  static const $type = "visible";
  @override
  String? get name => $type;
  String? setToName;
  String? fromName;
  CopyValueTrigger();
  factory CopyValueTrigger.fromJson(Map<String, dynamic> json) =>
      _$CopyValueTriggerFromJson(json);
  @override
  Map<String, dynamic> toJson() => _$CopyValueTriggerToJson(this);
}

@JsonSerializable(includeIfNull: false)
class SkipTrigger extends SurveyTrigger {
  static const $type = "skip";
  @override
  String? get name => $type;
  String? gotoName;
  SkipTrigger();
  factory SkipTrigger.fromJson(Map<String, dynamic> json) =>
      _$SkipTriggerFromJson(json);
  @override
  Map<String, dynamic> toJson() => _$SkipTriggerToJson(this);
}

@JsonSerializable(includeIfNull: false)
class RunExpressionTrigger extends SurveyTrigger {
  static const $type = "runexpression";
  @override
  String? get name => $type;
  String? setToName;
  String? runExpression;

  RunExpressionTrigger();
  factory RunExpressionTrigger.fromJson(Map<String, dynamic> json) =>
      _$RunExpressionTriggerFromJson(json);
  @override
  Map<String, dynamic> toJson() => _$RunExpressionTriggerToJson(this);
}
