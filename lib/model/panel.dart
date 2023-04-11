part of 'survey.dart';

@JsonSerializable(includeIfNull: false)
class Panel extends PanelBase {
  static const $type = "panel";

  @override
  String? get type => $type;

  //   "default",
  // "collapsed",
  // "expanded"
  String? state;
  bool? isRequired;
  String? requiredErrorText;
  bool? startWithNewLine;
  String? width;
  int? innerIndent;
  int? indent;
  String? page;
  bool? showNumber;
  //   "default",
  // "onpanel",
  // "off"
  String? showQuestionNumbers;
  String? questionStartIndex;
  Panel();
  factory Panel.fromJson(Map<String, dynamic> json) => _$PanelFromJson(json);
  @override
  Map<String, dynamic> toJson() => _$PanelToJson(this);
}

@JsonSerializable(includeIfNull: false)
class PanelDynamic extends Question {
  static const $type = "paneldynamic";

  @override
  String? get type => $type;
  List<ElementBase>? templateElements;
  String? templateTitle;
  String? templateDescription;
  bool? allowAddPanel;
  bool? allowRemovePanel;
  int? panelCount;
  int? minPanelCount;
  int? maxPanelCount;
  dynamic defaultPanelValue;
  bool? defaultValueFromLastPanel;
  //   "default",
  // "collapsed",
  // "expanded",
  // "firstExpanded"
  String? panelsState;
  String? keyName;
  String? keyDuplicationError;
  bool? confirmDelete;
  String? confirmDeleteText;
  String? panelAddText;
  String? panelRemoveText;
  String? panelPrevText;
  String? panelNextText;
  //   "off",
  // "onPanel",
  // "onSurvey"
  String? showQuestionNumbers;
  bool? showRangeInProgress;
  //   "list",
  // "progressTop",
  // "progressBottom",
  // "progressTopBottom"
  String? renderMode;
  //   "default",
  // "top",
  // "bottom",
  // "left"
  String? templateTitleLocation;
  //   "bottom",
  // "right"
  String? panelRemoveButtonLocation;
  PanelDynamic();
  factory PanelDynamic.fromJson(Map<String, dynamic> json) =>
      _$PanelDynamicFromJson(json);
  @override
  Map<String, dynamic> toJson() => _$PanelDynamicToJson(this);
}
