part of 'survey.dart';

@JsonSerializable(includeIfNull: false)
class ExpressionItem {
  String? expression;
}

@JsonSerializable(includeIfNull: false)
class UrlConditionItem extends ExpressionItem {
  String? url;
  UrlConditionItem();
  factory UrlConditionItem.fromJson(Map<String, dynamic> json) =>
      _$UrlConditionItemFromJson(json);
  Map<String, dynamic> toJson() => _$UrlConditionItemToJson(this);
}

@JsonSerializable(includeIfNull: false)
class HtmlConditionItem extends ExpressionItem {
  String? html;
  HtmlConditionItem();
  factory HtmlConditionItem.fromJson(Map<String, dynamic> json) =>
      _$HtmlConditionItemFromJson(json);
  Map<String, dynamic> toJson() => _$HtmlConditionItemToJson(this);
}
