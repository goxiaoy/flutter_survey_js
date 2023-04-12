import 'package:json_annotation/json_annotation.dart';

part 'element.dart';
part 'expression.dart';
part 'expression_item.dart';
part 'matrix.dart';
part 'page.dart';
part 'panel.dart';
part 'question.dart';
part 'select_base.dart';
part 'survey.g.dart';
part 'trigger.dart';
part 'validator.dart';

@JsonSerializable(includeIfNull: false)
class Survey {
  String? locale;
  String? title;
  String? description;
  String? logo;
  String? logoWidth;
  String? logoFit;
  String? logoPosition;
  bool? focusFirstQuestionAutomatic;
  bool? focusOnFirstError;
  String? completedHtml;
  String? completedBeforeHtml;
  List<HtmlConditionItem>? completedHtmlOnCondition;
  String? loadingHtml;
  List<Page>? pages;
  List<ElementBase>? questions;
  List<SurveyTrigger>? triggers;
  List<CalculatedValue>? calculatedValues;
  String? surveyId;
  String? surveyPostId;
  bool? surveyShowDataSaving;
  String? cookieName;
  bool? sendResultOnPageNext;
  // "none",
  // "top",
  // "bottom",
  // "both"
  String? showNavigationButtons;
  bool? showPrevButton;
  bool? showTitle;
  bool? showPageTitles;
  bool? showCompletedPage;
  String? navigateToUrl;
  List<UrlConditionItem>? navigateToUrlOnCondition;
  //  "initial","random"
  String? questionsOrder;
  bool? showPageNumbers;
  // "on","onPage",    "off"
  @JsonKey(fromJson: _boolToString)
  String? showQuestionNumbers;
  // "top",     "bottom",       "left"
  String? questionTitleLocation;
  // "underInput",  "underTitle"
  String? questionDescriptionLocation;
  //"top",    "bottom"
  String? questionErrorLocation;
  //    "off",  "top",        "bottom",   "both"
  String? showProgressBar;
  //     "pages",  "questions", "requiredQuestions",  "correctQuestions",   "buttons"
  String? progressBarType;
  //   "edit",      "display"
  String? mode;
  bool? storeOthersAsComment;
  num? maxTextLength;
  num? maxOthersLength;
  bool? goNextPageAutomatic;
  //     "none", "onComplete",    "onHidden",       "onHiddenContainer"
  String? clearInvisibleValues;
  //        "onNextPage",     "onValueChanged",  "onValueChanging", "onComplete"
  String? checkErrorsMode;
  //       "onBlur",       "onTyping"
  String? textUpdateMode;
  String? startSurveyText;
  String? pagePrevText;
  String? pageNextText;
  String? completeText;
  String? previewText;
  String? editText;
  String? requiredText;
  String? questionStartIndex;
  String? questionTitlePattern;
  String? questionTitleTemplate;
  bool? firstPageIsStarted;
  bool? isSinglePage;
  //      "singlePage",     "standard",    "questionPerPage"
  String? questionsOnPageMode;
  //     "noPreview",   "showAllQuestions", "showAnsweredQuestions"
  String? showPreviewBeforeComplete;
  int? maxTimeToFinish;
  int? maxTimeToFinishPage;
  //  "none",   "top",       "bottom"
  String? showTimerPanel;
  //     "all",       "page",     "survey"
  String? showTimerPanelMode;
  Survey();
  factory Survey.fromJson(Map<String, dynamic> json) => _$SurveyFromJson(json);
  Map<String, dynamic> toJson() => _$SurveyToJson(this);

  static String? _boolToString(dynamic inputValue) {
    if (inputValue is bool) {
      return inputValue ? 'on' : 'off';
    }
    return inputValue;
  }
}

@JsonSerializable(includeIfNull: false)
class ChoicesRestful {
  ChoicesRestful();
  factory ChoicesRestful.fromJson(Map<String, dynamic> json) =>
      _$ChoicesRestfulFromJson(json);
  Map<String, dynamic> toJson() => _$ChoicesRestfulToJson(this);
}

@JsonSerializable(includeIfNull: false)
class CheckBox extends CheckBoxBase {
  static const $type = "checkbox";
  @override
  String? get type => $type;
  bool? hasSelectAll;
  int? maxSelectedChoices;
  String? selectAllText;
  CheckBox();
  factory CheckBox.fromJson(Map<String, dynamic> json) =>
      _$CheckBoxFromJson(json);
  @override
  Map<String, dynamic> toJson() => _$CheckBoxToJson(this);
}

@JsonSerializable(includeIfNull: false)
class Ranking extends CheckBox {
  static const $type = "ranking";
  @override
  String? get type => $type;
  // String? hasOther;
  @override
  String? otherText;
  @override
  String? otherErrorText;
  @override
  String? storeOthersAsComment;
  // String? hasNone;
  @override
  String? noneText;
  // String? hasSelectAll;
  @override
  String? selectAllText;
  @override
  int? colCount;
  // String? maxSelectedChoices;
  Ranking();
  factory Ranking.fromJson(Map<String, dynamic> json) =>
      _$RankingFromJson(json);
  @override
  Map<String, dynamic> toJson() => _$RankingToJson(this);
}

@JsonSerializable(includeIfNull: false)
class RadioGroup extends CheckBoxBase {
  static const $type = "radiogroup";
  @override
  String? get type => $type;
  bool? showClearButton;
  RadioGroup();
  factory RadioGroup.fromJson(Map<String, dynamic> json) =>
      _$RadioGroupFromJson(json);
  @override
  Map<String, dynamic> toJson() => _$RadioGroupToJson(this);
}

@JsonSerializable(includeIfNull: false)
class ImagePicker extends CheckBoxBase<ImageItemValue> {
  static const $type = "imagepicker";
  @override
  String? get type => $type;
  // String? hasOther;
  @override
  String? otherText;
  // String? hasNone;
  @override
  String? noneText;
  String? optionsCaption;
  @override
  String? otherErrorText;
  @override
  String? storeOthersAsComment;
  // "image", "video"
  String? contentMode;
  // "none","contain","cover", "fill"
  String? imageFit;
  int? imageHeight;
  int? imageWidth;
  bool? showLabel;
  @override
  int? colCount;
  bool? multiSelect;
  @override
  @JsonKey(fromJson: ImageItemValue.fromListJson)
  List<ImageItemValue>? choices;
  ImagePicker();
  factory ImagePicker.fromJson(Map<String, dynamic> json) =>
      _$ImagePickerFromJson(json);
  @override
  Map<String, dynamic> toJson() => _$ImagePickerToJson(this);
}

@JsonSerializable(includeIfNull: false)
class Dropdown extends SelectBase {
  static const $type = "dropdown";
  @override
  String? get type => $type;
  String? optionsCaption;
  bool? showOptionsCaption;
  num? choicesMin;
  num? choicesMax;
  num? choicesStep;
  String? autoComplete;
  String? placeholder;
  Dropdown();
  factory Dropdown.fromJson(Map<String, dynamic> json) =>
      _$DropdownFromJson(json);
  @override
  Map<String, dynamic> toJson() => _$DropdownToJson(this);
}

@JsonSerializable(includeIfNull: false)
class Text extends Question {
  static const $type = "text";
  @override
  String? get type => $type;
  //   "color",
  // "date",
  // "datetime",
  // "datetime-local",
  // "email",
  // "month",
  // "number",
  // "password",
  // "range",
  // "tel",
  // "text",
  // "time",
  // "url",
  // "week"
  String? inputType;
  int? size;
  //   "default",
  // "onBlur",
  // "onTyping"
  String? textUpdateMode;
  String? autoComplete;
  String? min;
  String? max;
  String? minValueExpression;
  String? maxValueExpression;
  String? minErrorText;
  String? maxErrorText;
  int? step;
  int? maxLength;
  String? placeholder;
  List<String>? dataList;
  Text();
  factory Text.fromJson(Map<String, dynamic> json) => _$TextFromJson(json);
  @override
  Map<String, dynamic> toJson() => _$TextToJson(this);
}

@JsonSerializable(includeIfNull: false)
class MultipleText extends Question {
  static const $type = "multipletext";
  @override
  String? get type => $type;
  List<MultipleTextItem>? items;
  int? itemSize;
  int? colCount;
  MultipleText();
  factory MultipleText.fromJson(Map<String, dynamic> json) =>
      _$MultipleTextFromJson(json);
  @override
  Map<String, dynamic> toJson() => _$MultipleTextToJson(this);
}

@JsonSerializable(includeIfNull: false)
class MultipleTextItem {
  String? name;
  bool? isRequired;
  //   "color",
  // "date",
  // "datetime",
  // "datetime-local",
  // "email",
  // "month",
  // "number",
  // "password",
  // "range",
  // "tel",
  // "text",
  // "time",
  // "url",
  // "week"
  String? inputType;
  String? title;
  int? maxLength;
  int? size;
  String? requiredErrorText;
  List<SurveyValidator>? validators;
  MultipleTextItem();
  factory MultipleTextItem.fromJson(Map<String, dynamic> json) =>
      _$MultipleTextItemFromJson(json);
  Map<String, dynamic> toJson() => _$MultipleTextItemToJson(this);
}

@JsonSerializable(includeIfNull: false)
class NonValue extends Question {
  static const $type = "nonvalue";
  @override
  String? get type => $type;
  @override
  String? title;
  @override
  String? description;
  @override
  String? valueName;
  @override
  String? enableIf;
  @override
  String? correctAnswer;
  @override
  bool? isRequired;
  @override
  String? requiredErrorText;
  // String? readOnly;
  @override
  String? requiredIf;
  // String? validators;
  @override
  String? titleLocation;
  // String? useDisplayValuesInTitle;
  NonValue();
  factory NonValue.fromJson(Map<String, dynamic> json) =>
      _$NonValueFromJson(json);
  @override
  Map<String, dynamic> toJson() => _$NonValueToJson(this);
}

@JsonSerializable(includeIfNull: false)
class Html extends NonValue {
  static const $type = "html";
  @override
  String? get type => $type;
  String? html;
  Html();
  factory Html.fromJson(Map<String, dynamic> json) => _$HtmlFromJson(json);
  @override
  Map<String, dynamic> toJson() => _$HtmlToJson(this);
}

@JsonSerializable(includeIfNull: false)
class Image extends NonValue {
  static const $type = "image";
  @override
  String? get type => $type;
  String? imageLink;
  String? text;
  //"image" "video"
  String? contentMode;
  // "none","contain","cover", "fill"
  String? imageFit;
  int? imageHeight;
  int? imageWidth;
  Image();
  factory Image.fromJson(Map<String, dynamic> json) => _$ImageFromJson(json);
  @override
  Map<String, dynamic> toJson() => _$ImageToJson(this);
}

@JsonSerializable(includeIfNull: false)
class Empty extends Question {
  static const $type = "empty";
  @override
  String? get type => $type;
  Empty();
  factory Empty.fromJson(Map<String, dynamic> json) => _$EmptyFromJson(json);
  @override
  Map<String, dynamic> toJson() => _$EmptyToJson(this);
}

@JsonSerializable(includeIfNull: false)
class Comment extends Question {
  static const $type = "comment";
  @override
  String? get type => $type;
  int? maxLength;
  int? cols;
  int? rows;
  String? placeholder;
  //   "default",
  // "onBlur",
  // "onTyping"
  String? textUpdateMode;
  Comment();
  factory Comment.fromJson(Map<String, dynamic> json) =>
      _$CommentFromJson(json);
  @override
  Map<String, dynamic> toJson() => _$CommentToJson(this);
}

@JsonSerializable(includeIfNull: false)
class File extends Question {
  static const $type = "file";
  @override
  String? get type => $type;
  String? hasComment;
  String? commentText;
  bool? showPreview;
  bool? allowMultiple;
  bool? allowImagesPreview;
  int? imageHeight;
  int? imageWidth;
  String? acceptedTypes;
  bool? storeDataAsText;
  bool? waitForUpload;
  int? maxSize;
  @override
  String? correctAnswer;
  // String? validators;
  bool? needConfirmRemoveFile;
  File();
  factory File.fromJson(Map<String, dynamic> json) => _$FileFromJson(json);
  @override
  Map<String, dynamic> toJson() => _$FileToJson(this);
}

@JsonSerializable(includeIfNull: false)
class Rating extends Question {
  static const $type = "rating";
  @override
  String? get type => $type;
  String? hasComment;
  String? commentText;
  List<ItemValue>? rateValues;
  int? rateMin;
  int? rateMax;
  int? rateStep;
  String? minRateDescription;
  String? maxRateDescription;
  Rating();
  factory Rating.fromJson(Map<String, dynamic> json) => _$RatingFromJson(json);
  @override
  Map<String, dynamic> toJson() => _$RatingToJson(this);
}

@JsonSerializable(includeIfNull: false)
class Boolean extends Question {
  static const $type = "boolean";
  @override
  String? get type => $type;
  String? label;
  String? labelTrue;
  String? labelFalse;
  bool? showTitle;
  String? valueTrue;
  String? valueFalse;
  @override
  String? renderAs;
  Boolean();
  factory Boolean.fromJson(Map<String, dynamic> json) =>
      _$BooleanFromJson(json);
  @override
  Map<String, dynamic> toJson() => _$BooleanToJson(this);
}

@JsonSerializable(includeIfNull: false)
class SignaturePad extends Question {
  static const $type = "signaturepad";
  @override
  String? get type => $type;
  // int? width;
  int? height;
  bool? allowClear;
  String? penColor;
  String? backgroundColor;
  //   {
  //   "value": "",
  //   "text": "PNG"
  // },
  // {
  //   "value": "image/jpeg",
  //   "text": "JPEG"
  // },
  // {
  //   "value": "image/svg+xml",
  //   "text": "SVG"
  // }
  String? dataFormat;
  @override
  String? correctAnswer;
  SignaturePad();
  factory SignaturePad.fromJson(Map<String, dynamic> json) =>
      _$SignaturePadFromJson(json);
  @override
  Map<String, dynamic> toJson() => _$SignaturePadToJson(this);
}

@JsonSerializable(includeIfNull: false)
class CalculatedValue {
  String? name;
  String? expression;
  bool? includeIntoResult;
  CalculatedValue();
  factory CalculatedValue.fromJson(Map<String, dynamic> json) =>
      _$CalculatedValueFromJson(json);
  Map<String, dynamic> toJson() => _$CalculatedValueToJson(this);
}

@JsonSerializable(includeIfNull: false)
class ButtonGroup extends CheckBoxBase<ButtonGroupItemValue> {
  static const $type = "buttongroup";
  @override
  String? get type => $type;
  @override
  @JsonKey(fromJson: ButtonGroupItemValue.fromListJson)
  List<ButtonGroupItemValue>? choices;
  ButtonGroup();
  factory ButtonGroup.fromJson(Map<String, dynamic> json) =>
      _$ButtonGroupFromJson(json);
  @override
  Map<String, dynamic> toJson() => _$ButtonGroupToJson(this);
}

@JsonSerializable(includeIfNull: false)
class ItemValue {
  dynamic value;
  String? text;
  String? visibleIf;
  String? enableIf;
  ItemValue();
  factory ItemValue.fromJson(Map<String, dynamic> json) =>
      _$ItemValueFromJson(json);
  Map<String, dynamic> toJson() => _$ItemValueToJson(this);

  factory ItemValue.single(dynamic data) {
    return ItemValue()
      ..value = data
      ..text = data.toString();
  }

  factory ItemValue.fromDynamic(dynamic d) {
    if (d is Map<String, dynamic>) {
      return ItemValue.fromJson(d);
    }
    return ItemValue.single(d);
  }

  static List<ItemValue>? fromListJson(List<dynamic>? json) {
    if (json == null) {
      return null;
    }
    return json.map((e) {
      return ItemValue.fromDynamic(e);
    }).toList();
  }
}

@JsonSerializable(includeIfNull: false)
class ImageItemValue extends ItemValue {
  String? imageLink;
  ImageItemValue();
  factory ImageItemValue.fromJson(Map<String, dynamic> json) =>
      _$ImageItemValueFromJson(json);
  @override
  Map<String, dynamic> toJson() => _$ImageItemValueToJson(this);

  factory ImageItemValue.single(dynamic data) {
    return ImageItemValue()
      ..value = data
      ..text = data.toString();
  }

  factory ImageItemValue.fromDynamic(dynamic d) {
    if (d is Map<String, dynamic>) {
      return ImageItemValue.fromJson(d);
    }
    return ImageItemValue.single(d);
  }

  static List<ImageItemValue>? fromListJson(List<dynamic>? json) {
    if (json == null) {
      return null;
    }
    return json.map((e) {
      return ImageItemValue.fromDynamic(e);
    }).toList();
  }
}

@JsonSerializable(includeIfNull: false)
class ButtonGroupItemValue extends ItemValue {
  bool? showCaption;
  String? iconName;
  int? iconSize;
  ButtonGroupItemValue();
  factory ButtonGroupItemValue.fromJson(Map<String, dynamic> json) =>
      _$ButtonGroupItemValueFromJson(json);
  @override
  Map<String, dynamic> toJson() => _$ButtonGroupItemValueToJson(this);

  factory ButtonGroupItemValue.single(dynamic data) {
    return ButtonGroupItemValue()
      ..value = data
      ..text = data.toString();
  }

  factory ButtonGroupItemValue.fromDynamic(dynamic d) {
    if (d is Map<String, dynamic>) {
      return ButtonGroupItemValue.fromJson(d);
    }
    return ButtonGroupItemValue.single(d);
  }

  static List<ButtonGroupItemValue>? fromListJson(List<dynamic>? json) {
    if (json == null) {
      return null;
    }
    return json.map((e) {
      return ButtonGroupItemValue.fromDynamic(e);
    }).toList();
  }
}
