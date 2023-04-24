//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:flutter_survey_js_model/src/model/boolean.dart';
import 'package:flutter_survey_js_model/src/model/buttongroup.dart';
import 'package:flutter_survey_js_model/src/model/checkbox.dart';
import 'package:flutter_survey_js_model/src/model/comment.dart';
import 'package:flutter_survey_js_model/src/model/dropdown.dart';
import 'package:flutter_survey_js_model/src/model/empty.dart';
import 'package:flutter_survey_js_model/src/model/expression.dart';
import 'package:flutter_survey_js_model/src/model/file.dart';
import 'package:flutter_survey_js_model/src/model/html.dart';
import 'package:flutter_survey_js_model/src/model/image.dart';
import 'package:flutter_survey_js_model/src/model/imagepicker.dart';
import 'package:flutter_survey_js_model/src/model/matrix.dart';
import 'package:flutter_survey_js_model/src/model/matrixdropdown.dart';
import 'package:flutter_survey_js_model/src/model/matrixdropdownbase.dart';
import 'package:flutter_survey_js_model/src/model/matrixdynamic.dart';
import 'package:flutter_survey_js_model/src/model/multipletext.dart';
import 'package:flutter_survey_js_model/src/model/nonvalue.dart';
import 'package:flutter_survey_js_model/src/model/panel.dart';
import 'package:flutter_survey_js_model/src/model/paneldynamic.dart';
import 'package:flutter_survey_js_model/src/model/radiogroup.dart';
import 'package:flutter_survey_js_model/src/model/ranking.dart';
import 'package:flutter_survey_js_model/src/model/rating.dart';
import 'package:flutter_survey_js_model/src/model/signaturepad.dart';
import 'package:flutter_survey_js_model/src/model/tagbox.dart';
import 'package:flutter_survey_js_model/src/model/text.dart';
import 'package:flutter_survey_js_model/src/model/textbase.dart';
import 'package:one_of/any_of.dart';

part 'survey_questions_inner.g.dart';

/// SurveyQuestionsInner
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
/// * [colCount]
/// * [showSelectAllItem]
/// * [maxSelectedChoices]
/// * [selectAllText]
/// * [valuePropertyName]
/// * [itemComponent]
/// * [placeholder]
/// * [allowClear]
/// * [searchEnabled]
/// * [choicesLazyLoadEnabled]
/// * [choicesLazyLoadPageSize]
/// * [hideSelectedItems]
/// * [closeOnSelect]
/// * [longTap]
/// * [showClearButton]
/// * [optionsCaption]
/// * [contentMode]
/// * [imageFit]
/// * [imageHeight]
/// * [imageWidth]
/// * [minImageWidth]
/// * [minImageHeight]
/// * [maxImageWidth]
/// * [maxImageHeight]
/// * [showLabel]
/// * [multiSelect]
/// * [choicesMin]
/// * [choicesMax]
/// * [choicesStep]
/// * [autocomplete]
/// * [inputFieldComponent]
/// * [columnsVisibleIf]
/// * [rowsVisibleIf]
/// * [columnMinWidth]
/// * [showHeader]
/// * [verticalAlign]
/// * [alternateRows]
/// * [columns]
/// * [columnLayout]
/// * [detailElements]
/// * [detailPanelMode]
/// * [horizontalScroll]
/// * [keyDuplicationError]
/// * [cellType]
/// * [columnColCount]
/// * [allowAdaptiveActions]
/// * [rows]
/// * [rowTitleWidth]
/// * [totalText]
/// * [hideIfRowsEmpty]
/// * [allowAddRows]
/// * [allowRemoveRows]
/// * [rowCount]
/// * [minRowCount]
/// * [maxRowCount]
/// * [keyName]
/// * [defaultRowValue]
/// * [defaultValueFromLastRow]
/// * [confirmDelete]
/// * [confirmDeleteText]
/// * [addRowLocation]
/// * [addRowText]
/// * [removeRowText]
/// * [hideColumnsIfEmpty]
/// * [emptyRowsText]
/// * [detailPanelShowOnAdding]
/// * [allowRowsDragAndDrop]
/// * [cells]
/// * [rowsOrder]
/// * [isAllRowRequired]
/// * [expression]
/// * [format]
/// * [displayStyle]
/// * [currency]
/// * [maximumFractionDigits]
/// * [minimumFractionDigits]
/// * [useGrouping]
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
/// * [autoGrow]
/// * [acceptCarriageReturn]
/// * [items]
/// * [itemSize]
/// * [html]
/// * [imageLink]
/// * [altText]
/// * [showPreview]
/// * [allowMultiple]
/// * [allowImagesPreview]
/// * [acceptedTypes]
/// * [storeDataAsText]
/// * [waitForUpload]
/// * [maxSize]
/// * [needConfirmRemoveFile]
/// * [rateDisplayMode]
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
/// * [label]
/// * [labelTrue]
/// * [labelFalse]
/// * [valueTrue]
/// * [valueFalse]
/// * [signatureWidth]
/// * [signatureHeight]
/// * [height]
/// * [penColor]
/// * [backgroundColor]
/// * [dataFormat]
/// * [templateElements]
/// * [templateTitle]
/// * [templateTabTitle]
/// * [templateDescription]
/// * [noEntriesText]
/// * [allowAddPanel]
/// * [allowRemovePanel]
/// * [panelCount]
/// * [minPanelCount]
/// * [maxPanelCount]
/// * [defaultPanelValue]
/// * [defaultValueFromLastPanel]
/// * [panelsState]
/// * [panelAddText]
/// * [panelRemoveText]
/// * [panelPrevText]
/// * [panelNextText]
/// * [showQuestionNumbers]
/// * [showRangeInProgress]
/// * [renderMode]
/// * [tabAlign]
/// * [templateTitleLocation]
/// * [panelRemoveButtonLocation]
/// * [elements]
/// * [questionTitleLocation]
/// * [questionsOrder]
/// * [innerIndent]
/// * [showNumber]
/// * [questionStartIndex]
@BuiltValue()
abstract class SurveyQuestionsInner
    implements Built<SurveyQuestionsInner, SurveyQuestionsInnerBuilder> {
  /// Any Of [Boolean], [Buttongroup], [Checkbox], [Comment], [Dropdown], [Empty], [Expression], [File], [Html], [Image], [Imagepicker], [Matrix], [Matrixdropdown], [Matrixdropdownbase], [Matrixdynamic], [Multipletext], [Nonvalue], [Panel], [Paneldynamic], [Radiogroup], [Ranking], [Rating], [Signaturepad], [Tagbox], [Text], [Textbase]
  AnyOf get anyOf;

  SurveyQuestionsInner._();

  factory SurveyQuestionsInner([void updates(SurveyQuestionsInnerBuilder b)]) =
      _$SurveyQuestionsInner;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(SurveyQuestionsInnerBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<SurveyQuestionsInner> get serializer =>
      _$SurveyQuestionsInnerSerializer();
}

class _$SurveyQuestionsInnerSerializer
    implements PrimitiveSerializer<SurveyQuestionsInner> {
  @override
  final Iterable<Type> types = const [
    SurveyQuestionsInner,
    _$SurveyQuestionsInner
  ];

  @override
  final String wireName = r'SurveyQuestionsInner';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    SurveyQuestionsInner object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {}

  @override
  Object serialize(
    Serializers serializers,
    SurveyQuestionsInner object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final anyOf = object.anyOf;
    return serializers.serialize(anyOf,
        specifiedType: FullType(
            AnyOf, anyOf.valueTypes.map((type) => FullType(type)).toList()))!;
  }

  @override
  SurveyQuestionsInner deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = SurveyQuestionsInnerBuilder();
    Object? anyOfDataSrc;
    final targetType = const FullType(AnyOf, [
      FullType(Checkbox),
      FullType(Tagbox),
      FullType(Ranking),
      FullType(Radiogroup),
      FullType(Imagepicker),
      FullType(Buttongroup),
      FullType(Dropdown),
      FullType(Matrixdropdownbase),
      FullType(Matrixdropdown),
      FullType(Matrixdynamic),
      FullType(Matrix),
      FullType(Expression),
      FullType(Textbase),
      FullType(Text),
      FullType(Comment),
      FullType(Multipletext),
      FullType(Nonvalue),
      FullType(Html),
      FullType(Image),
      FullType(Empty),
      FullType(File),
      FullType(Rating),
      FullType(bool),
      FullType(Signaturepad),
      FullType(Paneldynamic),
      FullType(Panel),
    ]);
    anyOfDataSrc = serialized;
    result.anyOf = serializers.deserialize(anyOfDataSrc,
        specifiedType: targetType) as AnyOf;
    return result.build();
  }
}
