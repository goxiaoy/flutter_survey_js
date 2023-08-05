//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:flutter_survey_js_model/src/model/rating_display_mode.dart';
import 'package:flutter_survey_js_model/src/model/question_title_location.dart';
import 'package:flutter_survey_js_model/src/model/text_update_mode.dart';
import 'package:flutter_survey_js_model/src/model/matrixdropdownbase_all_of_choices_inner.dart';
import 'package:flutter_survey_js_model/src/model/matrixdropdowncolumn_cell_type.dart';
import 'package:flutter_survey_js_model/src/model/question_state.dart';
import 'package:flutter_survey_js_model/src/model/question_all_of_validators_inner.dart';
import 'package:flutter_survey_js_model/src/model/question_clear_if_invisible.dart';
import 'package:flutter_survey_js_model/src/model/autocomplete.dart';
import 'package:flutter_survey_js_model/src/model/question_description_location.dart';
import 'package:flutter_survey_js_model/src/model/comment.dart';
import 'package:flutter_survey_js_model/src/model/rating_scale_color_mode.dart';
import 'package:flutter_survey_js_model/src/model/question_indent.dart';
import 'package:flutter_survey_js_model/src/model/text.dart';
import 'package:flutter_survey_js_model/src/model/boolean.dart';
import 'package:flutter_survey_js_model/src/model/string_or_num.dart';
import 'package:flutter_survey_js_model/src/model/rating.dart';
import 'package:flutter_survey_js_model/src/model/expression_currency.dart';
import 'package:flutter_survey_js_model/src/model/checkboxbase_col_count.dart';
import 'package:flutter_survey_js_model/src/model/radiogroup.dart';
import 'package:flutter_survey_js_model/src/model/selectbase_choices_from_question_mode.dart';
import 'package:flutter_survey_js_model/src/model/selectbase_choices_order.dart';
import 'package:flutter_survey_js_model/src/model/tagbox.dart';
import 'package:flutter_survey_js_model/src/model/expression_display_style.dart';
import 'package:flutter_survey_js_model/src/model/expression.dart';
import 'package:flutter_survey_js_model/src/model/matrixdropdowncolumn_total_display_style.dart';
import 'package:flutter_survey_js_model/src/model/rating_auto_generate.dart';
import 'package:flutter_survey_js_model/src/model/choices_by_url.dart';
import 'package:flutter_survey_js_model/src/model/matrixdropdown_all_of_rows_inner.dart';
import 'package:flutter_survey_js_model/src/model/text_input_type.dart';
import 'package:flutter_survey_js_model/src/model/rating_rate_color_mode.dart';
import 'package:flutter_survey_js_model/src/model/rating_rate_type.dart';
import 'package:flutter_survey_js_model/src/model/matrixdropdowncolumn_total_type.dart';
import 'package:built_collection/built_collection.dart';
import 'package:flutter_survey_js_model/src/model/checkbox.dart';
import 'package:flutter_survey_js_model/src/model/survey_title.dart';
import 'package:flutter_survey_js_model/src/model/dropdown.dart';
import 'package:built_value/json_object.dart';
import 'package:flutter_survey_js_model/src/model/matrixdropdowncolumn_total_currency.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'matrixdropdowncolumn.g.dart';

/// Matrixdropdowncolumn
///
/// Properties:
/// * [type] 
/// * [name] 
/// * [state] 
/// * [visible] 
/// * [useDisplayValuesInDynamicTexts] 
/// * [visibleIf] 
/// * [width] 
/// * [minWidth] 
/// * [maxWidth] 
/// * [startWithNewLine] 
/// * [indent] 
/// * [page] 
/// * [title] 
/// * [titleLocation] 
/// * [description] 
/// * [descriptionLocation] 
/// * [hideNumber] 
/// * [valueName] 
/// * [enableIf] 
/// * [defaultValue] 
/// * [defaultValueExpression] 
/// * [correctAnswer] 
/// * [clearIfInvisible] 
/// * [isRequired] 
/// * [requiredIf] 
/// * [requiredErrorText] 
/// * [readOnly] 
/// * [validators] 
/// * [bindings] 
/// * [renderAs] 
/// * [showCommentArea] 
/// * [commentText] 
/// * [commentPlaceholder] 
/// * [choicesFromQuestion] 
/// * [choices] 
/// * [choicesFromQuestionMode] 
/// * [choicesOrder] 
/// * [choicesByUrl] 
/// * [hideIfChoicesEmpty] 
/// * [choicesVisibleIf] 
/// * [choicesEnableIf] 
/// * [separateSpecialChoices] 
/// * [showOtherItem] 
/// * [showNoneItem] 
/// * [otherPlaceholder] 
/// * [noneText] 
/// * [otherText] 
/// * [otherErrorText] 
/// * [storeOthersAsComment] 
/// * [placeholder] 
/// * [allowClear] 
/// * [choicesMin] 
/// * [choicesMax] 
/// * [choicesStep] 
/// * [autocomplete] 
/// * [searchEnabled] 
/// * [choicesLazyLoadEnabled] 
/// * [choicesLazyLoadPageSize] 
/// * [inputFieldComponent] 
/// * [itemComponent] 
/// * [colCount] 
/// * [showSelectAllItem] 
/// * [maxSelectedChoices] 
/// * [minSelectedChoices] 
/// * [selectAllText] 
/// * [valuePropertyName] 
/// * [showClearButton] 
/// * [hideSelectedItems] 
/// * [closeOnSelect] 
/// * [inputType] 
/// * [size] 
/// * [textUpdateMode] 
/// * [min] 
/// * [max] 
/// * [minValueExpression] 
/// * [maxValueExpression] 
/// * [minErrorText] 
/// * [maxErrorText] 
/// * [step] 
/// * [maxLength] 
/// * [dataList] 
/// * [cols] 
/// * [rows] 
/// * [autoGrow] 
/// * [allowResize] 
/// * [acceptCarriageReturn] 
/// * [label] 
/// * [labelTrue] 
/// * [labelFalse] 
/// * [valueTrue] 
/// * [valueFalse] 
/// * [expression] 
/// * [format] 
/// * [displayStyle] 
/// * [currency] 
/// * [maximumFractionDigits] 
/// * [minimumFractionDigits] 
/// * [useGrouping] 
/// * [precision] 
/// * [rateType] 
/// * [scaleColorMode] 
/// * [rateColorMode] 
/// * [autoGenerate] 
/// * [rateCount] 
/// * [rateValues] 
/// * [rateMin] 
/// * [rateMax] 
/// * [rateStep] 
/// * [minRateDescription] 
/// * [maxRateDescription] 
/// * [displayRateDescriptionsAsExtremeItems] 
/// * [displayMode] 
/// * [cellHint] 
/// * [cellType] 
/// * [isUnique] 
/// * [showInMultipleColumns] 
/// * [totalType] 
/// * [totalExpression] 
/// * [totalFormat] 
/// * [totalDisplayStyle] 
/// * [totalCurrency] 
/// * [totalMaximumFractionDigits] 
/// * [totalMinimumFractionDigits] 
@BuiltValue()
abstract class Matrixdropdowncolumn implements Boolean, Checkbox, Comment, Dropdown, Expression, Radiogroup, Rating, Tagbox, Text, Built<Matrixdropdowncolumn, MatrixdropdowncolumnBuilder> {
  @BuiltValueField(wireName: r'cellHint')
  SurveyTitle? get cellHint;

  @BuiltValueField(wireName: r'totalExpression')
  String? get totalExpression;

  @BuiltValueField(wireName: r'cellType')
  MatrixdropdowncolumnCellType? get cellType;
  // enum cellTypeEnum {  default,  dropdown,  checkbox,  radiogroup,  tagbox,  text,  comment,  boolean,  expression,  rating,  };

  @BuiltValueField(wireName: r'totalMaximumFractionDigits')
  num? get totalMaximumFractionDigits;

  @BuiltValueField(wireName: r'totalMinimumFractionDigits')
  num? get totalMinimumFractionDigits;

  @BuiltValueField(wireName: r'showInMultipleColumns')
  bool? get showInMultipleColumns;

  @BuiltValueField(wireName: r'isUnique')
  bool? get isUnique;

  @BuiltValueField(wireName: r'totalFormat')
  SurveyTitle? get totalFormat;

  @BuiltValueField(wireName: r'totalType')
  MatrixdropdowncolumnTotalType? get totalType;
  // enum totalTypeEnum {  none,  sum,  count,  min,  max,  avg,  };

  @BuiltValueField(wireName: r'totalCurrency')
  MatrixdropdowncolumnTotalCurrency? get totalCurrency;
  // enum totalCurrencyEnum {  AED,  AFN,  ALL,  AMD,  ANG,  AOA,  ARS,  AUD,  AWG,  AZN,  BAM,  BBD,  BDT,  BGN,  BHD,  BIF,  BMD,  BND,  BOB,  BOV,  BRL,  BSD,  BTN,  BWP,  BYN,  BZD,  CAD,  CDF,  CHE,  CHF,  CHW,  CLF,  CLP,  CNY,  COP,  COU,  CRC,  CUC,  CUP,  CVE,  CZK,  DJF,  DKK,  DOP,  DZD,  EGP,  ERN,  ETB,  EUR,  FJD,  FKP,  GBP,  GEL,  GHS,  GIP,  GMD,  GNF,  GTQ,  GYD,  HKD,  HNL,  HRK,  HTG,  HUF,  IDR,  ILS,  INR,  IQD,  IRR,  ISK,  JMD,  JOD,  JPY,  KES,  KGS,  KHR,  KMF,  KPW,  KRW,  KWD,  KYD,  KZT,  LAK,  LBP,  LKR,  LRD,  LSL,  LYD,  MAD,  MDL,  MGA,  MKD,  MMK,  MNT,  MOP,  MRO,  MUR,  MVR,  MWK,  MXN,  MXV,  MYR,  MZN,  NAD,  NGN,  NIO,  NOK,  NPR,  NZD,  OMR,  PAB,  PEN,  PGK,  PHP,  PKR,  PLN,  PYG,  QAR,  RON,  RSD,  RUB,  RWF,  SAR,  SBD,  SCR,  SDG,  SEK,  SGD,  SHP,  SLL,  SOS,  SRD,  SSP,  STD,  SVC,  SYP,  SZL,  THB,  TJS,  TMT,  TND,  TOP,  TRY,  TTD,  TWD,  TZS,  UAH,  UGX,  USD,  USN,  UYI,  UYU,  UZS,  VEF,  VND,  VUV,  WST,  XAF,  XAG,  XAU,  XBA,  XBB,  XBC,  XBD,  XCD,  XDR,  XOF,  XPD,  XPF,  XPT,  XSU,  XTS,  XUA,  XXX,  YER,  ZAR,  ZMW,  ZWL,  };

  @BuiltValueField(wireName: r'totalDisplayStyle')
  MatrixdropdowncolumnTotalDisplayStyle? get totalDisplayStyle;
  // enum totalDisplayStyleEnum {  none,  decimal,  currency,  percent,  };

  Matrixdropdowncolumn._();

  factory Matrixdropdowncolumn([void updates(MatrixdropdowncolumnBuilder b)]) = _$Matrixdropdowncolumn;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(MatrixdropdowncolumnBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<Matrixdropdowncolumn> get serializer => _$MatrixdropdowncolumnSerializer();
}

class _$MatrixdropdowncolumnSerializer implements PrimitiveSerializer<Matrixdropdowncolumn> {
  @override
  final Iterable<Type> types = const [Matrixdropdowncolumn, _$Matrixdropdowncolumn];

  @override
  final String wireName = r'Matrixdropdowncolumn';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    Matrixdropdowncolumn object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.showOtherItem != null) {
      yield r'showOtherItem';
      yield serializers.serialize(
        object.showOtherItem,
        specifiedType: const FullType(bool),
      );
    }
    if (object.defaultValue != null) {
      yield r'defaultValue';
      yield serializers.serialize(
        object.defaultValue,
        specifiedType: const FullType.nullable(JsonObject),
      );
    }
    if (object.validators != null) {
      yield r'validators';
      yield serializers.serialize(
        object.validators,
        specifiedType: const FullType(BuiltList, [FullType(QuestionAllOfValidatorsInner)]),
      );
    }
    if (object.totalType != null) {
      yield r'totalType';
      yield serializers.serialize(
        object.totalType,
        specifiedType: const FullType(MatrixdropdowncolumnTotalType),
      );
    }
    if (object.minSelectedChoices != null) {
      yield r'minSelectedChoices';
      yield serializers.serialize(
        object.minSelectedChoices,
        specifiedType: const FullType(num),
      );
    }
    yield r'type';
    yield serializers.serialize(
      object.type,
      specifiedType: const FullType(String),
    );
    if (object.rateType != null) {
      yield r'rateType';
      yield serializers.serialize(
        object.rateType,
        specifiedType: const FullType(RatingRateType),
      );
    }
    if (object.selectAllText != null) {
      yield r'selectAllText';
      yield serializers.serialize(
        object.selectAllText,
        specifiedType: const FullType(SurveyTitle),
      );
    }
    if (object.inputFieldComponent != null) {
      yield r'inputFieldComponent';
      yield serializers.serialize(
        object.inputFieldComponent,
        specifiedType: const FullType(String),
      );
    }
    if (object.startWithNewLine != null) {
      yield r'startWithNewLine';
      yield serializers.serialize(
        object.startWithNewLine,
        specifiedType: const FullType(bool),
      );
    }
    if (object.state != null) {
      yield r'state';
      yield serializers.serialize(
        object.state,
        specifiedType: const FullType(QuestionState),
      );
    }
    if (object.correctAnswer != null) {
      yield r'correctAnswer';
      yield serializers.serialize(
        object.correctAnswer,
        specifiedType: const FullType.nullable(JsonObject),
      );
    }
    if (object.maxWidth != null) {
      yield r'maxWidth';
      yield serializers.serialize(
        object.maxWidth,
        specifiedType: const FullType(StringOrNum),
      );
    }
    if (object.defaultValueExpression != null) {
      yield r'defaultValueExpression';
      yield serializers.serialize(
        object.defaultValueExpression,
        specifiedType: const FullType(String),
      );
    }
    if (object.useGrouping != null) {
      yield r'useGrouping';
      yield serializers.serialize(
        object.useGrouping,
        specifiedType: const FullType(bool),
      );
    }
    if (object.readOnly != null) {
      yield r'readOnly';
      yield serializers.serialize(
        object.readOnly,
        specifiedType: const FullType(bool),
      );
    }
    if (object.totalDisplayStyle != null) {
      yield r'totalDisplayStyle';
      yield serializers.serialize(
        object.totalDisplayStyle,
        specifiedType: const FullType(MatrixdropdowncolumnTotalDisplayStyle),
      );
    }
    if (object.titleLocation != null) {
      yield r'titleLocation';
      yield serializers.serialize(
        object.titleLocation,
        specifiedType: const FullType(QuestionTitleLocation),
      );
    }
    if (object.requiredErrorText != null) {
      yield r'requiredErrorText';
      yield serializers.serialize(
        object.requiredErrorText,
        specifiedType: const FullType(SurveyTitle),
      );
    }
    if (object.size != null) {
      yield r'size';
      yield serializers.serialize(
        object.size,
        specifiedType: const FullType(num),
      );
    }
    if (object.minErrorText != null) {
      yield r'minErrorText';
      yield serializers.serialize(
        object.minErrorText,
        specifiedType: const FullType(SurveyTitle),
      );
    }
    if (object.visibleIf != null) {
      yield r'visibleIf';
      yield serializers.serialize(
        object.visibleIf,
        specifiedType: const FullType(String),
      );
    }
    if (object.acceptCarriageReturn != null) {
      yield r'acceptCarriageReturn';
      yield serializers.serialize(
        object.acceptCarriageReturn,
        specifiedType: const FullType(bool),
      );
    }
    if (object.choices != null) {
      yield r'choices';
      yield serializers.serialize(
        object.choices,
        specifiedType: const FullType(BuiltList, [FullType(MatrixdropdownbaseAllOfChoicesInner)]),
      );
    }
    if (object.cellHint != null) {
      yield r'cellHint';
      yield serializers.serialize(
        object.cellHint,
        specifiedType: const FullType(SurveyTitle),
      );
    }
    if (object.choicesByUrl != null) {
      yield r'choicesByUrl';
      yield serializers.serialize(
        object.choicesByUrl,
        specifiedType: const FullType(ChoicesByUrl),
      );
    }
    if (object.closeOnSelect != null) {
      yield r'closeOnSelect';
      yield serializers.serialize(
        object.closeOnSelect,
        specifiedType: const FullType(bool),
      );
    }
    if (object.maxSelectedChoices != null) {
      yield r'maxSelectedChoices';
      yield serializers.serialize(
        object.maxSelectedChoices,
        specifiedType: const FullType(num),
      );
    }
    if (object.choicesOrder != null) {
      yield r'choicesOrder';
      yield serializers.serialize(
        object.choicesOrder,
        specifiedType: const FullType(SelectbaseChoicesOrder),
      );
    }
    if (object.choicesLazyLoadEnabled != null) {
      yield r'choicesLazyLoadEnabled';
      yield serializers.serialize(
        object.choicesLazyLoadEnabled,
        specifiedType: const FullType(bool),
      );
    }
    if (object.commentText != null) {
      yield r'commentText';
      yield serializers.serialize(
        object.commentText,
        specifiedType: const FullType(SurveyTitle),
      );
    }
    if (object.choicesLazyLoadPageSize != null) {
      yield r'choicesLazyLoadPageSize';
      yield serializers.serialize(
        object.choicesLazyLoadPageSize,
        specifiedType: const FullType(num),
      );
    }
    if (object.clearIfInvisible != null) {
      yield r'clearIfInvisible';
      yield serializers.serialize(
        object.clearIfInvisible,
        specifiedType: const FullType(QuestionClearIfInvisible),
      );
    }
    if (object.rateCount != null) {
      yield r'rateCount';
      yield serializers.serialize(
        object.rateCount,
        specifiedType: const FullType(num),
      );
    }
    if (object.min != null) {
      yield r'min';
      yield serializers.serialize(
        object.min,
        specifiedType: const FullType(StringOrNum),
      );
    }
    if (object.valueFalse != null) {
      yield r'valueFalse';
      yield serializers.serialize(
        object.valueFalse,
        specifiedType: const FullType(String),
      );
    }
    if (object.descriptionLocation != null) {
      yield r'descriptionLocation';
      yield serializers.serialize(
        object.descriptionLocation,
        specifiedType: const FullType(QuestionDescriptionLocation),
      );
    }
    if (object.otherText != null) {
      yield r'otherText';
      yield serializers.serialize(
        object.otherText,
        specifiedType: const FullType(SurveyTitle),
      );
    }
    if (object.currency != null) {
      yield r'currency';
      yield serializers.serialize(
        object.currency,
        specifiedType: const FullType(ExpressionCurrency),
      );
    }
    if (object.hideNumber != null) {
      yield r'hideNumber';
      yield serializers.serialize(
        object.hideNumber,
        specifiedType: const FullType(bool),
      );
    }
    if (object.textUpdateMode != null) {
      yield r'textUpdateMode';
      yield serializers.serialize(
        object.textUpdateMode,
        specifiedType: const FullType(TextUpdateMode),
      );
    }
    if (object.choicesFromQuestion != null) {
      yield r'choicesFromQuestion';
      yield serializers.serialize(
        object.choicesFromQuestion,
        specifiedType: const FullType(String),
      );
    }
    if (object.rateColorMode != null) {
      yield r'rateColorMode';
      yield serializers.serialize(
        object.rateColorMode,
        specifiedType: const FullType(RatingRateColorMode),
      );
    }
    if (object.commentPlaceholder != null) {
      yield r'commentPlaceholder';
      yield serializers.serialize(
        object.commentPlaceholder,
        specifiedType: const FullType(SurveyTitle),
      );
    }
    if (object.valuePropertyName != null) {
      yield r'valuePropertyName';
      yield serializers.serialize(
        object.valuePropertyName,
        specifiedType: const FullType(String),
      );
    }
    if (object.expression != null) {
      yield r'expression';
      yield serializers.serialize(
        object.expression,
        specifiedType: const FullType(String),
      );
    }
    if (object.labelTrue != null) {
      yield r'labelTrue';
      yield serializers.serialize(
        object.labelTrue,
        specifiedType: const FullType(SurveyTitle),
      );
    }
    if (object.max != null) {
      yield r'max';
      yield serializers.serialize(
        object.max,
        specifiedType: const FullType(StringOrNum),
      );
    }
    if (object.separateSpecialChoices != null) {
      yield r'separateSpecialChoices';
      yield serializers.serialize(
        object.separateSpecialChoices,
        specifiedType: const FullType(bool),
      );
    }
    if (object.minWidth != null) {
      yield r'minWidth';
      yield serializers.serialize(
        object.minWidth,
        specifiedType: const FullType(StringOrNum),
      );
    }
    if (object.totalExpression != null) {
      yield r'totalExpression';
      yield serializers.serialize(
        object.totalExpression,
        specifiedType: const FullType(String),
      );
    }
    if (object.width != null) {
      yield r'width';
      yield serializers.serialize(
        object.width,
        specifiedType: const FullType(StringOrNum),
      );
    }
    if (object.colCount != null) {
      yield r'colCount';
      yield serializers.serialize(
        object.colCount,
        specifiedType: const FullType(CheckboxbaseColCount),
      );
    }
    if (object.hideIfChoicesEmpty != null) {
      yield r'hideIfChoicesEmpty';
      yield serializers.serialize(
        object.hideIfChoicesEmpty,
        specifiedType: const FullType(bool),
      );
    }
    if (object.displayRateDescriptionsAsExtremeItems != null) {
      yield r'displayRateDescriptionsAsExtremeItems';
      yield serializers.serialize(
        object.displayRateDescriptionsAsExtremeItems,
        specifiedType: const FullType(bool),
      );
    }
    if (object.allowResize != null) {
      yield r'allowResize';
      yield serializers.serialize(
        object.allowResize,
        specifiedType: const FullType(bool),
      );
    }
    if (object.minValueExpression != null) {
      yield r'minValueExpression';
      yield serializers.serialize(
        object.minValueExpression,
        specifiedType: const FullType(String),
      );
    }
    if (object.useDisplayValuesInDynamicTexts != null) {
      yield r'useDisplayValuesInDynamicTexts';
      yield serializers.serialize(
        object.useDisplayValuesInDynamicTexts,
        specifiedType: const FullType(bool),
      );
    }
    if (object.noneText != null) {
      yield r'noneText';
      yield serializers.serialize(
        object.noneText,
        specifiedType: const FullType(SurveyTitle),
      );
    }
    if (object.totalMinimumFractionDigits != null) {
      yield r'totalMinimumFractionDigits';
      yield serializers.serialize(
        object.totalMinimumFractionDigits,
        specifiedType: const FullType(num),
      );
    }
    if (object.hideSelectedItems != null) {
      yield r'hideSelectedItems';
      yield serializers.serialize(
        object.hideSelectedItems,
        specifiedType: const FullType(bool),
      );
    }
    if (object.bindings != null) {
      yield r'bindings';
      yield serializers.serialize(
        object.bindings,
        specifiedType: const FullType(String),
      );
    }
    if (object.precision != null) {
      yield r'precision';
      yield serializers.serialize(
        object.precision,
        specifiedType: const FullType(num),
      );
    }
    if (object.isUnique != null) {
      yield r'isUnique';
      yield serializers.serialize(
        object.isUnique,
        specifiedType: const FullType(bool),
      );
    }
    if (object.choicesFromQuestionMode != null) {
      yield r'choicesFromQuestionMode';
      yield serializers.serialize(
        object.choicesFromQuestionMode,
        specifiedType: const FullType(SelectbaseChoicesFromQuestionMode),
      );
    }
    if (object.displayStyle != null) {
      yield r'displayStyle';
      yield serializers.serialize(
        object.displayStyle,
        specifiedType: const FullType(ExpressionDisplayStyle),
      );
    }
    if (object.storeOthersAsComment != null) {
      yield r'storeOthersAsComment';
      yield serializers.serialize(
        object.storeOthersAsComment,
        specifiedType: const FullType(bool),
      );
    }
    if (object.totalMaximumFractionDigits != null) {
      yield r'totalMaximumFractionDigits';
      yield serializers.serialize(
        object.totalMaximumFractionDigits,
        specifiedType: const FullType(num),
      );
    }
    if (object.showInMultipleColumns != null) {
      yield r'showInMultipleColumns';
      yield serializers.serialize(
        object.showInMultipleColumns,
        specifiedType: const FullType(bool),
      );
    }
    if (object.minRateDescription != null) {
      yield r'minRateDescription';
      yield serializers.serialize(
        object.minRateDescription,
        specifiedType: const FullType(SurveyTitle),
      );
    }
    if (object.minimumFractionDigits != null) {
      yield r'minimumFractionDigits';
      yield serializers.serialize(
        object.minimumFractionDigits,
        specifiedType: const FullType(num),
      );
    }
    if (object.choicesEnableIf != null) {
      yield r'choicesEnableIf';
      yield serializers.serialize(
        object.choicesEnableIf,
        specifiedType: const FullType(String),
      );
    }
    if (object.itemComponent != null) {
      yield r'itemComponent';
      yield serializers.serialize(
        object.itemComponent,
        specifiedType: const FullType(String),
      );
    }
    if (object.inputType != null) {
      yield r'inputType';
      yield serializers.serialize(
        object.inputType,
        specifiedType: const FullType(TextInputType),
      );
    }
    if (object.otherErrorText != null) {
      yield r'otherErrorText';
      yield serializers.serialize(
        object.otherErrorText,
        specifiedType: const FullType(SurveyTitle),
      );
    }
    if (object.showSelectAllItem != null) {
      yield r'showSelectAllItem';
      yield serializers.serialize(
        object.showSelectAllItem,
        specifiedType: const FullType(bool),
      );
    }
    if (object.showCommentArea != null) {
      yield r'showCommentArea';
      yield serializers.serialize(
        object.showCommentArea,
        specifiedType: const FullType(bool),
      );
    }
    if (object.maxErrorText != null) {
      yield r'maxErrorText';
      yield serializers.serialize(
        object.maxErrorText,
        specifiedType: const FullType(SurveyTitle),
      );
    }
    if (object.isRequired != null) {
      yield r'isRequired';
      yield serializers.serialize(
        object.isRequired,
        specifiedType: const FullType(bool),
      );
    }
    if (object.visible != null) {
      yield r'visible';
      yield serializers.serialize(
        object.visible,
        specifiedType: const FullType(bool),
      );
    }
    if (object.showClearButton != null) {
      yield r'showClearButton';
      yield serializers.serialize(
        object.showClearButton,
        specifiedType: const FullType(bool),
      );
    }
    if (object.format != null) {
      yield r'format';
      yield serializers.serialize(
        object.format,
        specifiedType: const FullType(SurveyTitle),
      );
    }
    if (object.totalCurrency != null) {
      yield r'totalCurrency';
      yield serializers.serialize(
        object.totalCurrency,
        specifiedType: const FullType(MatrixdropdowncolumnTotalCurrency),
      );
    }
    if (object.displayMode != null) {
      yield r'displayMode';
      yield serializers.serialize(
        object.displayMode,
        specifiedType: const FullType(RatingDisplayMode),
      );
    }
    if (object.choicesVisibleIf != null) {
      yield r'choicesVisibleIf';
      yield serializers.serialize(
        object.choicesVisibleIf,
        specifiedType: const FullType(String),
      );
    }
    yield r'name';
    yield serializers.serialize(
      object.name,
      specifiedType: const FullType(String),
    );
    if (object.maxRateDescription != null) {
      yield r'maxRateDescription';
      yield serializers.serialize(
        object.maxRateDescription,
        specifiedType: const FullType(SurveyTitle),
      );
    }
    if (object.page != null) {
      yield r'page';
      yield serializers.serialize(
        object.page,
        specifiedType: const FullType(String),
      );
    }
    if (object.showNoneItem != null) {
      yield r'showNoneItem';
      yield serializers.serialize(
        object.showNoneItem,
        specifiedType: const FullType(bool),
      );
    }
    if (object.maxLength != null) {
      yield r'maxLength';
      yield serializers.serialize(
        object.maxLength,
        specifiedType: const FullType(num),
      );
    }
    if (object.valueTrue != null) {
      yield r'valueTrue';
      yield serializers.serialize(
        object.valueTrue,
        specifiedType: const FullType(String),
      );
    }
    if (object.indent != null) {
      yield r'indent';
      yield serializers.serialize(
        object.indent,
        specifiedType: const FullType(QuestionIndent),
      );
    }
    if (object.valueName != null) {
      yield r'valueName';
      yield serializers.serialize(
        object.valueName,
        specifiedType: const FullType(String),
      );
    }
    if (object.description != null) {
      yield r'description';
      yield serializers.serialize(
        object.description,
        specifiedType: const FullType(SurveyTitle),
      );
    }
    if (object.labelFalse != null) {
      yield r'labelFalse';
      yield serializers.serialize(
        object.labelFalse,
        specifiedType: const FullType(SurveyTitle),
      );
    }
    if (object.title != null) {
      yield r'title';
      yield serializers.serialize(
        object.title,
        specifiedType: const FullType(SurveyTitle),
      );
    }
    if (object.rateMin != null) {
      yield r'rateMin';
      yield serializers.serialize(
        object.rateMin,
        specifiedType: const FullType(num),
      );
    }
    if (object.autoGenerate != null) {
      yield r'autoGenerate';
      yield serializers.serialize(
        object.autoGenerate,
        specifiedType: const FullType(RatingAutoGenerate),
      );
    }
    if (object.autoGrow != null) {
      yield r'autoGrow';
      yield serializers.serialize(
        object.autoGrow,
        specifiedType: const FullType(bool),
      );
    }
    if (object.placeholder != null) {
      yield r'placeholder';
      yield serializers.serialize(
        object.placeholder,
        specifiedType: const FullType(SurveyTitle),
      );
    }
    if (object.cols != null) {
      yield r'cols';
      yield serializers.serialize(
        object.cols,
        specifiedType: const FullType(num),
      );
    }
    if (object.enableIf != null) {
      yield r'enableIf';
      yield serializers.serialize(
        object.enableIf,
        specifiedType: const FullType(String),
      );
    }
    if (object.autocomplete != null) {
      yield r'autocomplete';
      yield serializers.serialize(
        object.autocomplete,
        specifiedType: const FullType(Autocomplete),
      );
    }
    if (object.otherPlaceholder != null) {
      yield r'otherPlaceholder';
      yield serializers.serialize(
        object.otherPlaceholder,
        specifiedType: const FullType(SurveyTitle),
      );
    }
    if (object.rateStep != null) {
      yield r'rateStep';
      yield serializers.serialize(
        object.rateStep,
        specifiedType: const FullType(num),
      );
    }
    if (object.totalFormat != null) {
      yield r'totalFormat';
      yield serializers.serialize(
        object.totalFormat,
        specifiedType: const FullType(SurveyTitle),
      );
    }
    if (object.requiredIf != null) {
      yield r'requiredIf';
      yield serializers.serialize(
        object.requiredIf,
        specifiedType: const FullType(String),
      );
    }
    if (object.rateValues != null) {
      yield r'rateValues';
      yield serializers.serialize(
        object.rateValues,
        specifiedType: const FullType(BuiltList, [FullType(MatrixdropdownAllOfRowsInner)]),
      );
    }
    if (object.renderAs != null) {
      yield r'renderAs';
      yield serializers.serialize(
        object.renderAs,
        specifiedType: const FullType(String),
      );
    }
    if (object.choicesMax != null) {
      yield r'choicesMax';
      yield serializers.serialize(
        object.choicesMax,
        specifiedType: const FullType(num),
      );
    }
    if (object.label != null) {
      yield r'label';
      yield serializers.serialize(
        object.label,
        specifiedType: const FullType(SurveyTitle),
      );
    }
    if (object.rows != null) {
      yield r'rows';
      yield serializers.serialize(
        object.rows,
        specifiedType: const FullType(num),
      );
    }
    if (object.scaleColorMode != null) {
      yield r'scaleColorMode';
      yield serializers.serialize(
        object.scaleColorMode,
        specifiedType: const FullType(RatingScaleColorMode),
      );
    }
    if (object.maximumFractionDigits != null) {
      yield r'maximumFractionDigits';
      yield serializers.serialize(
        object.maximumFractionDigits,
        specifiedType: const FullType(num),
      );
    }
    if (object.cellType != null) {
      yield r'cellType';
      yield serializers.serialize(
        object.cellType,
        specifiedType: const FullType(MatrixdropdowncolumnCellType),
      );
    }
    if (object.choicesStep != null) {
      yield r'choicesStep';
      yield serializers.serialize(
        object.choicesStep,
        specifiedType: const FullType(num),
      );
    }
    if (object.dataList != null) {
      yield r'dataList';
      yield serializers.serialize(
        object.dataList,
        specifiedType: const FullType(SurveyTitle),
      );
    }
    if (object.choicesMin != null) {
      yield r'choicesMin';
      yield serializers.serialize(
        object.choicesMin,
        specifiedType: const FullType(num),
      );
    }
    if (object.rateMax != null) {
      yield r'rateMax';
      yield serializers.serialize(
        object.rateMax,
        specifiedType: const FullType(num),
      );
    }
    if (object.step != null) {
      yield r'step';
      yield serializers.serialize(
        object.step,
        specifiedType: const FullType(num),
      );
    }
    if (object.allowClear != null) {
      yield r'allowClear';
      yield serializers.serialize(
        object.allowClear,
        specifiedType: const FullType(bool),
      );
    }
    if (object.maxValueExpression != null) {
      yield r'maxValueExpression';
      yield serializers.serialize(
        object.maxValueExpression,
        specifiedType: const FullType(String),
      );
    }
    if (object.searchEnabled != null) {
      yield r'searchEnabled';
      yield serializers.serialize(
        object.searchEnabled,
        specifiedType: const FullType(bool),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    Matrixdropdowncolumn object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required MatrixdropdowncolumnBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'showOtherItem':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool;
          result.showOtherItem = valueDes;
          break;
        case r'defaultValue':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(JsonObject),
          ) as JsonObject?;
          if (valueDes == null) continue;
          result.defaultValue = valueDes;
          break;
        case r'validators':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(BuiltList, [FullType(QuestionAllOfValidatorsInner)]),
          ) as BuiltList<QuestionAllOfValidatorsInner>;
          result.validators.replace(valueDes);
          break;
        case r'totalType':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(MatrixdropdowncolumnTotalType),
          ) as MatrixdropdowncolumnTotalType;
          result.totalType = valueDes;
          break;
        case r'minSelectedChoices':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(num),
          ) as num;
          result.minSelectedChoices = valueDes;
          break;
        case r'type':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.type = valueDes;
          break;
        case r'rateType':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(RatingRateType),
          ) as RatingRateType;
          result.rateType = valueDes;
          break;
        case r'selectAllText':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(SurveyTitle),
          ) as SurveyTitle;
          result.selectAllText.replace(valueDes);
          break;
        case r'inputFieldComponent':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.inputFieldComponent = valueDes;
          break;
        case r'startWithNewLine':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool;
          result.startWithNewLine = valueDes;
          break;
        case r'state':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(QuestionState),
          ) as QuestionState;
          result.state = valueDes;
          break;
        case r'correctAnswer':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(JsonObject),
          ) as JsonObject?;
          if (valueDes == null) continue;
          result.correctAnswer = valueDes;
          break;
        case r'maxWidth':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(StringOrNum),
          ) as StringOrNum;
          result.maxWidth.replace(valueDes);
          break;
        case r'defaultValueExpression':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.defaultValueExpression = valueDes;
          break;
        case r'useGrouping':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool;
          result.useGrouping = valueDes;
          break;
        case r'readOnly':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool;
          result.readOnly = valueDes;
          break;
        case r'totalDisplayStyle':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(MatrixdropdowncolumnTotalDisplayStyle),
          ) as MatrixdropdowncolumnTotalDisplayStyle;
          result.totalDisplayStyle = valueDes;
          break;
        case r'titleLocation':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(QuestionTitleLocation),
          ) as QuestionTitleLocation;
          result.titleLocation = valueDes;
          break;
        case r'requiredErrorText':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(SurveyTitle),
          ) as SurveyTitle;
          result.requiredErrorText.replace(valueDes);
          break;
        case r'size':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(num),
          ) as num;
          result.size = valueDes;
          break;
        case r'minErrorText':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(SurveyTitle),
          ) as SurveyTitle;
          result.minErrorText.replace(valueDes);
          break;
        case r'visibleIf':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.visibleIf = valueDes;
          break;
        case r'acceptCarriageReturn':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool;
          result.acceptCarriageReturn = valueDes;
          break;
        case r'choices':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(BuiltList, [FullType(MatrixdropdownbaseAllOfChoicesInner)]),
          ) as BuiltList<MatrixdropdownbaseAllOfChoicesInner>;
          result.choices.replace(valueDes);
          break;
        case r'cellHint':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(SurveyTitle),
          ) as SurveyTitle;
          result.cellHint.replace(valueDes);
          break;
        case r'choicesByUrl':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(ChoicesByUrl),
          ) as ChoicesByUrl;
          result.choicesByUrl.replace(valueDes);
          break;
        case r'closeOnSelect':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool;
          result.closeOnSelect = valueDes;
          break;
        case r'maxSelectedChoices':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(num),
          ) as num;
          result.maxSelectedChoices = valueDes;
          break;
        case r'choicesOrder':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(SelectbaseChoicesOrder),
          ) as SelectbaseChoicesOrder;
          result.choicesOrder = valueDes;
          break;
        case r'choicesLazyLoadEnabled':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool;
          result.choicesLazyLoadEnabled = valueDes;
          break;
        case r'commentText':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(SurveyTitle),
          ) as SurveyTitle;
          result.commentText.replace(valueDes);
          break;
        case r'choicesLazyLoadPageSize':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(num),
          ) as num;
          result.choicesLazyLoadPageSize = valueDes;
          break;
        case r'clearIfInvisible':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(QuestionClearIfInvisible),
          ) as QuestionClearIfInvisible;
          result.clearIfInvisible = valueDes;
          break;
        case r'rateCount':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(num),
          ) as num;
          result.rateCount = valueDes;
          break;
        case r'min':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(StringOrNum),
          ) as StringOrNum;
          result.min.replace(valueDes);
          break;
        case r'valueFalse':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.valueFalse = valueDes;
          break;
        case r'descriptionLocation':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(QuestionDescriptionLocation),
          ) as QuestionDescriptionLocation;
          result.descriptionLocation = valueDes;
          break;
        case r'otherText':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(SurveyTitle),
          ) as SurveyTitle;
          result.otherText.replace(valueDes);
          break;
        case r'currency':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(ExpressionCurrency),
          ) as ExpressionCurrency;
          result.currency = valueDes;
          break;
        case r'hideNumber':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool;
          result.hideNumber = valueDes;
          break;
        case r'textUpdateMode':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(TextUpdateMode),
          ) as TextUpdateMode;
          result.textUpdateMode = valueDes;
          break;
        case r'choicesFromQuestion':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.choicesFromQuestion = valueDes;
          break;
        case r'rateColorMode':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(RatingRateColorMode),
          ) as RatingRateColorMode;
          result.rateColorMode = valueDes;
          break;
        case r'commentPlaceholder':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(SurveyTitle),
          ) as SurveyTitle;
          result.commentPlaceholder.replace(valueDes);
          break;
        case r'valuePropertyName':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.valuePropertyName = valueDes;
          break;
        case r'expression':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.expression = valueDes;
          break;
        case r'labelTrue':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(SurveyTitle),
          ) as SurveyTitle;
          result.labelTrue.replace(valueDes);
          break;
        case r'max':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(StringOrNum),
          ) as StringOrNum;
          result.max.replace(valueDes);
          break;
        case r'separateSpecialChoices':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool;
          result.separateSpecialChoices = valueDes;
          break;
        case r'minWidth':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(StringOrNum),
          ) as StringOrNum;
          result.minWidth.replace(valueDes);
          break;
        case r'totalExpression':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.totalExpression = valueDes;
          break;
        case r'width':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(StringOrNum),
          ) as StringOrNum;
          result.width.replace(valueDes);
          break;
        case r'colCount':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(CheckboxbaseColCount),
          ) as CheckboxbaseColCount;
          result.colCount = valueDes;
          break;
        case r'hideIfChoicesEmpty':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool;
          result.hideIfChoicesEmpty = valueDes;
          break;
        case r'displayRateDescriptionsAsExtremeItems':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool;
          result.displayRateDescriptionsAsExtremeItems = valueDes;
          break;
        case r'allowResize':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool;
          result.allowResize = valueDes;
          break;
        case r'minValueExpression':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.minValueExpression = valueDes;
          break;
        case r'useDisplayValuesInDynamicTexts':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool;
          result.useDisplayValuesInDynamicTexts = valueDes;
          break;
        case r'noneText':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(SurveyTitle),
          ) as SurveyTitle;
          result.noneText.replace(valueDes);
          break;
        case r'totalMinimumFractionDigits':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(num),
          ) as num;
          result.totalMinimumFractionDigits = valueDes;
          break;
        case r'hideSelectedItems':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool;
          result.hideSelectedItems = valueDes;
          break;
        case r'bindings':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.bindings = valueDes;
          break;
        case r'precision':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(num),
          ) as num;
          result.precision = valueDes;
          break;
        case r'isUnique':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool;
          result.isUnique = valueDes;
          break;
        case r'choicesFromQuestionMode':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(SelectbaseChoicesFromQuestionMode),
          ) as SelectbaseChoicesFromQuestionMode;
          result.choicesFromQuestionMode = valueDes;
          break;
        case r'displayStyle':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(ExpressionDisplayStyle),
          ) as ExpressionDisplayStyle;
          result.displayStyle = valueDes;
          break;
        case r'storeOthersAsComment':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool;
          result.storeOthersAsComment = valueDes;
          break;
        case r'totalMaximumFractionDigits':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(num),
          ) as num;
          result.totalMaximumFractionDigits = valueDes;
          break;
        case r'showInMultipleColumns':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool;
          result.showInMultipleColumns = valueDes;
          break;
        case r'minRateDescription':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(SurveyTitle),
          ) as SurveyTitle;
          result.minRateDescription.replace(valueDes);
          break;
        case r'minimumFractionDigits':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(num),
          ) as num;
          result.minimumFractionDigits = valueDes;
          break;
        case r'choicesEnableIf':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.choicesEnableIf = valueDes;
          break;
        case r'itemComponent':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.itemComponent = valueDes;
          break;
        case r'inputType':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(TextInputType),
          ) as TextInputType;
          result.inputType = valueDes;
          break;
        case r'otherErrorText':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(SurveyTitle),
          ) as SurveyTitle;
          result.otherErrorText.replace(valueDes);
          break;
        case r'showSelectAllItem':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool;
          result.showSelectAllItem = valueDes;
          break;
        case r'showCommentArea':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool;
          result.showCommentArea = valueDes;
          break;
        case r'maxErrorText':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(SurveyTitle),
          ) as SurveyTitle;
          result.maxErrorText.replace(valueDes);
          break;
        case r'isRequired':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool;
          result.isRequired = valueDes;
          break;
        case r'visible':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool;
          result.visible = valueDes;
          break;
        case r'showClearButton':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool;
          result.showClearButton = valueDes;
          break;
        case r'format':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(SurveyTitle),
          ) as SurveyTitle;
          result.format.replace(valueDes);
          break;
        case r'totalCurrency':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(MatrixdropdowncolumnTotalCurrency),
          ) as MatrixdropdowncolumnTotalCurrency;
          result.totalCurrency = valueDes;
          break;
        case r'displayMode':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(RatingDisplayMode),
          ) as RatingDisplayMode;
          result.displayMode = valueDes;
          break;
        case r'choicesVisibleIf':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.choicesVisibleIf = valueDes;
          break;
        case r'name':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.name = valueDes;
          break;
        case r'maxRateDescription':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(SurveyTitle),
          ) as SurveyTitle;
          result.maxRateDescription.replace(valueDes);
          break;
        case r'page':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.page = valueDes;
          break;
        case r'showNoneItem':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool;
          result.showNoneItem = valueDes;
          break;
        case r'maxLength':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(num),
          ) as num;
          result.maxLength = valueDes;
          break;
        case r'valueTrue':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.valueTrue = valueDes;
          break;
        case r'indent':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(QuestionIndent),
          ) as QuestionIndent;
          result.indent = valueDes;
          break;
        case r'valueName':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.valueName = valueDes;
          break;
        case r'description':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(SurveyTitle),
          ) as SurveyTitle;
          result.description.replace(valueDes);
          break;
        case r'labelFalse':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(SurveyTitle),
          ) as SurveyTitle;
          result.labelFalse.replace(valueDes);
          break;
        case r'title':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(SurveyTitle),
          ) as SurveyTitle;
          result.title.replace(valueDes);
          break;
        case r'rateMin':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(num),
          ) as num;
          result.rateMin = valueDes;
          break;
        case r'autoGenerate':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(RatingAutoGenerate),
          ) as RatingAutoGenerate;
          result.autoGenerate = valueDes;
          break;
        case r'autoGrow':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool;
          result.autoGrow = valueDes;
          break;
        case r'placeholder':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(SurveyTitle),
          ) as SurveyTitle;
          result.placeholder.replace(valueDes);
          break;
        case r'cols':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(num),
          ) as num;
          result.cols = valueDes;
          break;
        case r'enableIf':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.enableIf = valueDes;
          break;
        case r'autocomplete':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(Autocomplete),
          ) as Autocomplete;
          result.autocomplete = valueDes;
          break;
        case r'otherPlaceholder':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(SurveyTitle),
          ) as SurveyTitle;
          result.otherPlaceholder.replace(valueDes);
          break;
        case r'rateStep':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(num),
          ) as num;
          result.rateStep = valueDes;
          break;
        case r'totalFormat':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(SurveyTitle),
          ) as SurveyTitle;
          result.totalFormat.replace(valueDes);
          break;
        case r'requiredIf':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.requiredIf = valueDes;
          break;
        case r'rateValues':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(BuiltList, [FullType(MatrixdropdownAllOfRowsInner)]),
          ) as BuiltList<MatrixdropdownAllOfRowsInner>;
          result.rateValues.replace(valueDes);
          break;
        case r'renderAs':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.renderAs = valueDes;
          break;
        case r'choicesMax':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(num),
          ) as num;
          result.choicesMax = valueDes;
          break;
        case r'label':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(SurveyTitle),
          ) as SurveyTitle;
          result.label.replace(valueDes);
          break;
        case r'rows':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(num),
          ) as num;
          result.rows = valueDes;
          break;
        case r'scaleColorMode':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(RatingScaleColorMode),
          ) as RatingScaleColorMode;
          result.scaleColorMode = valueDes;
          break;
        case r'maximumFractionDigits':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(num),
          ) as num;
          result.maximumFractionDigits = valueDes;
          break;
        case r'cellType':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(MatrixdropdowncolumnCellType),
          ) as MatrixdropdowncolumnCellType;
          result.cellType = valueDes;
          break;
        case r'choicesStep':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(num),
          ) as num;
          result.choicesStep = valueDes;
          break;
        case r'dataList':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(SurveyTitle),
          ) as SurveyTitle;
          result.dataList.replace(valueDes);
          break;
        case r'choicesMin':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(num),
          ) as num;
          result.choicesMin = valueDes;
          break;
        case r'rateMax':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(num),
          ) as num;
          result.rateMax = valueDes;
          break;
        case r'step':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(num),
          ) as num;
          result.step = valueDes;
          break;
        case r'allowClear':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool;
          result.allowClear = valueDes;
          break;
        case r'maxValueExpression':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.maxValueExpression = valueDes;
          break;
        case r'searchEnabled':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool;
          result.searchEnabled = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  Matrixdropdowncolumn deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = MatrixdropdowncolumnBuilder();
    final serializedList = (serialized as Iterable<Object?>).toList();
    final unhandled = <Object?>[];
    _deserializeProperties(
      serializers,
      serialized,
      specifiedType: specifiedType,
      serializedList: serializedList,
      unhandled: unhandled,
      result: result,
    );
    return result.build();
  }
}

