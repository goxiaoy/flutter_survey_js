part of 'survey.dart';

abstract class Question extends ElementBase {
  String? type;
  // "default",       "collapsed",         "expanded"
  String? state;
  String? name;
  bool? visible;
  bool? useDisplayValuesInTitle;
  String? visibleIf;
  String? width;
  String? minWidth;
  String? maxWidth;
  bool? startWithNewLine;
  // 0,1,2,3
  int? indent;
  String? page;
  String? title;
  // "default","top","bottom","left","hidden"
  String? titleLocation;
  String? description;
  //  "default",    "underInput",  "underTitle"
  String? descriptionLocation;
  bool? hideNumber;
  String? valueName;
  String? enableIf;
  dynamic defaultValue;
  String? defaultValueExpression;
  String? correctAnswer;
  bool? isRequired;
  String? requiredIf;
  String? requiredErrorText;
  bool? readOnly;
  List<SurveyValidator>? validators;
  String? bindings;
  String? renderAs;
}
