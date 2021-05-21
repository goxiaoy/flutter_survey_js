part of 'survey.dart';

abstract class SelectBase<T extends ItemValue> extends Question {
  String? hasComment;
  String? commentText;
  String? choicesFromQuestion;
  @JsonKey(fromJson: ItemValue.fromListJson)
  List<T>? choices;
  // "all", "selected","unselected"
  String? choicesFromQuestionMode;
  //  "none","asc", "desc","random"
  String? choicesOrder;
  ChoicesRestful? choicesByUrl;
  bool? hideIfChoicesEmpty;
  String? choicesVisibleIf;
  String? choicesEnableIf;
  bool? hasOther;
  bool? hasNone;
  String? otherPlaceHolder;
  String? noneText;
  String? otherText;
  String? otherErrorText;
  // "default","true","false"
  String? storeOthersAsComment;
}

abstract class CheckBoxBase<T extends ItemValue> extends SelectBase<T> {
  // 0,1,2,3,4,5
  int? colCount;
}
