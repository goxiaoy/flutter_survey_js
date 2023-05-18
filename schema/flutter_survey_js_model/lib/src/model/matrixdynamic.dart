//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:flutter_survey_js_model/src/model/matrixdynamic_add_row_location.dart';
import 'package:flutter_survey_js_model/src/model/matrixdropdownbase_cell_type.dart';
import 'package:flutter_survey_js_model/src/model/question_title_location.dart';
import 'package:flutter_survey_js_model/src/model/question_state.dart';
import 'package:flutter_survey_js_model/src/model/matrixdropdownbase_column_col_count.dart';
import 'package:flutter_survey_js_model/src/model/matrixbase_vertical_align.dart';
import 'package:flutter_survey_js_model/src/model/question_all_of_validators_inner.dart';
import 'package:flutter_survey_js_model/src/model/question_clear_if_invisible.dart';
import 'package:flutter_survey_js_model/src/model/question_description_location.dart';
import 'package:flutter_survey_js_model/src/model/matrixdropdownbase_column_layout.dart';
import 'package:flutter_survey_js_model/src/model/question_indent.dart';
import 'package:flutter_survey_js_model/src/model/survey_logo_width.dart';
import 'package:flutter_survey_js_model/src/model/matrixdynamic_all_of.dart';
import 'package:built_collection/built_collection.dart';
import 'package:flutter_survey_js_model/src/model/selectbase_all_of_choices_inner.dart';
import 'package:flutter_survey_js_model/src/model/matrixdropdownbase_detail_panel_mode.dart';
import 'package:flutter_survey_js_model/src/model/matrixdropdowncolumn.dart';
import 'package:flutter_survey_js_model/src/model/matrixdropdownbase.dart';
import 'package:built_value/json_object.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'matrixdynamic.g.dart';

/// Matrixdynamic
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
/// * [choices] 
/// * [placeholder] 
/// * [keyDuplicationError] 
/// * [cellType] 
/// * [columnColCount] 
/// * [allowAdaptiveActions] 
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
@BuiltValue()
abstract class Matrixdynamic implements Matrixdropdownbase, MatrixdynamicAllOf, Built<Matrixdynamic, MatrixdynamicBuilder> {
  Matrixdynamic._();

  factory Matrixdynamic([void updates(MatrixdynamicBuilder b)]) = _$Matrixdynamic;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(MatrixdynamicBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<Matrixdynamic> get serializer => _$MatrixdynamicSerializer();
}

class _$MatrixdynamicSerializer implements PrimitiveSerializer<Matrixdynamic> {
  @override
  final Iterable<Type> types = const [Matrixdynamic, _$Matrixdynamic];

  @override
  final String wireName = r'Matrixdynamic';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    Matrixdynamic object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.useDisplayValuesInDynamicTexts != null) {
      yield r'useDisplayValuesInDynamicTexts';
      yield serializers.serialize(
        object.useDisplayValuesInDynamicTexts,
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
    if (object.bindings != null) {
      yield r'bindings';
      yield serializers.serialize(
        object.bindings,
        specifiedType: const FullType(String),
      );
    }
    if (object.type != null) {
      yield r'type';
      yield serializers.serialize(
        object.type,
        specifiedType: const FullType(String),
      );
    }
    if (object.columnLayout != null) {
      yield r'columnLayout';
      yield serializers.serialize(
        object.columnLayout,
        specifiedType: const FullType(MatrixdropdownbaseColumnLayout),
      );
    }
    if (object.emptyRowsText != null) {
      yield r'emptyRowsText';
      yield serializers.serialize(
        object.emptyRowsText,
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
    if (object.confirmDeleteText != null) {
      yield r'confirmDeleteText';
      yield serializers.serialize(
        object.confirmDeleteText,
        specifiedType: const FullType(String),
      );
    }
    if (object.horizontalScroll != null) {
      yield r'horizontalScroll';
      yield serializers.serialize(
        object.horizontalScroll,
        specifiedType: const FullType(bool),
      );
    }
    if (object.minRowCount != null) {
      yield r'minRowCount';
      yield serializers.serialize(
        object.minRowCount,
        specifiedType: const FullType(num),
      );
    }
    if (object.keyDuplicationError != null) {
      yield r'keyDuplicationError';
      yield serializers.serialize(
        object.keyDuplicationError,
        specifiedType: const FullType(String),
      );
    }
    if (object.columnMinWidth != null) {
      yield r'columnMinWidth';
      yield serializers.serialize(
        object.columnMinWidth,
        specifiedType: const FullType(SurveyLogoWidth),
      );
    }
    if (object.detailPanelShowOnAdding != null) {
      yield r'detailPanelShowOnAdding';
      yield serializers.serialize(
        object.detailPanelShowOnAdding,
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
    if (object.allowAdaptiveActions != null) {
      yield r'allowAdaptiveActions';
      yield serializers.serialize(
        object.allowAdaptiveActions,
        specifiedType: const FullType(bool),
      );
    }
    if (object.correctAnswer != null) {
      yield r'correctAnswer';
      yield serializers.serialize(
        object.correctAnswer,
        specifiedType: const FullType.nullable(JsonObject),
      );
    }
    if (object.showCommentArea != null) {
      yield r'showCommentArea';
      yield serializers.serialize(
        object.showCommentArea,
        specifiedType: const FullType(String),
      );
    }
    if (object.maxWidth != null) {
      yield r'maxWidth';
      yield serializers.serialize(
        object.maxWidth,
        specifiedType: const FullType(SurveyLogoWidth),
      );
    }
    if (object.verticalAlign != null) {
      yield r'verticalAlign';
      yield serializers.serialize(
        object.verticalAlign,
        specifiedType: const FullType(MatrixbaseVerticalAlign),
      );
    }
    if (object.isRequired != null) {
      yield r'isRequired';
      yield serializers.serialize(
        object.isRequired,
        specifiedType: const FullType(bool),
      );
    }
    if (object.hideColumnsIfEmpty != null) {
      yield r'hideColumnsIfEmpty';
      yield serializers.serialize(
        object.hideColumnsIfEmpty,
        specifiedType: const FullType(bool),
      );
    }
    if (object.alternateRows != null) {
      yield r'alternateRows';
      yield serializers.serialize(
        object.alternateRows,
        specifiedType: const FullType(bool),
      );
    }
    if (object.defaultValueFromLastRow != null) {
      yield r'defaultValueFromLastRow';
      yield serializers.serialize(
        object.defaultValueFromLastRow,
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
    if (object.addRowText != null) {
      yield r'addRowText';
      yield serializers.serialize(
        object.addRowText,
        specifiedType: const FullType(String),
      );
    }
    if (object.defaultValueExpression != null) {
      yield r'defaultValueExpression';
      yield serializers.serialize(
        object.defaultValueExpression,
        specifiedType: const FullType(String),
      );
    }
    if (object.readOnly != null) {
      yield r'readOnly';
      yield serializers.serialize(
        object.readOnly,
        specifiedType: const FullType(String),
      );
    }
    if (object.titleLocation != null) {
      yield r'titleLocation';
      yield serializers.serialize(
        object.titleLocation,
        specifiedType: const FullType(QuestionTitleLocation),
      );
    }
    if (object.defaultRowValue != null) {
      yield r'defaultRowValue';
      yield serializers.serialize(
        object.defaultRowValue,
        specifiedType: const FullType(String),
      );
    }
    if (object.requiredErrorText != null) {
      yield r'requiredErrorText';
      yield serializers.serialize(
        object.requiredErrorText,
        specifiedType: const FullType(String),
      );
    }
    if (object.name != null) {
      yield r'name';
      yield serializers.serialize(
        object.name,
        specifiedType: const FullType(String),
      );
    }
    if (object.visibleIf != null) {
      yield r'visibleIf';
      yield serializers.serialize(
        object.visibleIf,
        specifiedType: const FullType(String),
      );
    }
    if (object.allowRemoveRows != null) {
      yield r'allowRemoveRows';
      yield serializers.serialize(
        object.allowRemoveRows,
        specifiedType: const FullType(bool),
      );
    }
    if (object.page != null) {
      yield r'page';
      yield serializers.serialize(
        object.page,
        specifiedType: const FullType(String),
      );
    }
    if (object.columnsVisibleIf != null) {
      yield r'columnsVisibleIf';
      yield serializers.serialize(
        object.columnsVisibleIf,
        specifiedType: const FullType(String),
      );
    }
    if (object.detailElements != null) {
      yield r'detailElements';
      yield serializers.serialize(
        object.detailElements,
        specifiedType: const FullType(String),
      );
    }
    if (object.choices != null) {
      yield r'choices';
      yield serializers.serialize(
        object.choices,
        specifiedType: const FullType(BuiltList, [FullType(SelectbaseAllOfChoicesInner)]),
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
    if (object.columns != null) {
      yield r'columns';
      yield serializers.serialize(
        object.columns,
        specifiedType: const FullType(BuiltList, [FullType(Matrixdropdowncolumn)]),
      );
    }
    if (object.description != null) {
      yield r'description';
      yield serializers.serialize(
        object.description,
        specifiedType: const FullType(String),
      );
    }
    if (object.detailPanelMode != null) {
      yield r'detailPanelMode';
      yield serializers.serialize(
        object.detailPanelMode,
        specifiedType: const FullType(MatrixdropdownbaseDetailPanelMode),
      );
    }
    if (object.title != null) {
      yield r'title';
      yield serializers.serialize(
        object.title,
        specifiedType: const FullType(String),
      );
    }
    if (object.commentText != null) {
      yield r'commentText';
      yield serializers.serialize(
        object.commentText,
        specifiedType: const FullType(String),
      );
    }
    if (object.columnColCount != null) {
      yield r'columnColCount';
      yield serializers.serialize(
        object.columnColCount,
        specifiedType: const FullType(MatrixdropdownbaseColumnColCount),
      );
    }
    if (object.clearIfInvisible != null) {
      yield r'clearIfInvisible';
      yield serializers.serialize(
        object.clearIfInvisible,
        specifiedType: const FullType(QuestionClearIfInvisible),
      );
    }
    if (object.allowRowsDragAndDrop != null) {
      yield r'allowRowsDragAndDrop';
      yield serializers.serialize(
        object.allowRowsDragAndDrop,
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
    if (object.rowCount != null) {
      yield r'rowCount';
      yield serializers.serialize(
        object.rowCount,
        specifiedType: const FullType(num),
      );
    }
    if (object.hideNumber != null) {
      yield r'hideNumber';
      yield serializers.serialize(
        object.hideNumber,
        specifiedType: const FullType(bool),
      );
    }
    if (object.placeholder != null) {
      yield r'placeholder';
      yield serializers.serialize(
        object.placeholder,
        specifiedType: const FullType(String),
      );
    }
    if (object.rowsVisibleIf != null) {
      yield r'rowsVisibleIf';
      yield serializers.serialize(
        object.rowsVisibleIf,
        specifiedType: const FullType(String),
      );
    }
    if (object.addRowLocation != null) {
      yield r'addRowLocation';
      yield serializers.serialize(
        object.addRowLocation,
        specifiedType: const FullType(MatrixdynamicAddRowLocation),
      );
    }
    if (object.enableIf != null) {
      yield r'enableIf';
      yield serializers.serialize(
        object.enableIf,
        specifiedType: const FullType(String),
      );
    }
    if (object.commentPlaceholder != null) {
      yield r'commentPlaceholder';
      yield serializers.serialize(
        object.commentPlaceholder,
        specifiedType: const FullType(String),
      );
    }
    if (object.removeRowText != null) {
      yield r'removeRowText';
      yield serializers.serialize(
        object.removeRowText,
        specifiedType: const FullType(String),
      );
    }
    if (object.showHeader != null) {
      yield r'showHeader';
      yield serializers.serialize(
        object.showHeader,
        specifiedType: const FullType(bool),
      );
    }
    if (object.maxRowCount != null) {
      yield r'maxRowCount';
      yield serializers.serialize(
        object.maxRowCount,
        specifiedType: const FullType(num),
      );
    }
    if (object.keyName != null) {
      yield r'keyName';
      yield serializers.serialize(
        object.keyName,
        specifiedType: const FullType(String),
      );
    }
    if (object.requiredIf != null) {
      yield r'requiredIf';
      yield serializers.serialize(
        object.requiredIf,
        specifiedType: const FullType(String),
      );
    }
    if (object.renderAs != null) {
      yield r'renderAs';
      yield serializers.serialize(
        object.renderAs,
        specifiedType: const FullType(String),
      );
    }
    if (object.minWidth != null) {
      yield r'minWidth';
      yield serializers.serialize(
        object.minWidth,
        specifiedType: const FullType(SurveyLogoWidth),
      );
    }
    if (object.confirmDelete != null) {
      yield r'confirmDelete';
      yield serializers.serialize(
        object.confirmDelete,
        specifiedType: const FullType(bool),
      );
    }
    if (object.allowAddRows != null) {
      yield r'allowAddRows';
      yield serializers.serialize(
        object.allowAddRows,
        specifiedType: const FullType(bool),
      );
    }
    if (object.cellType != null) {
      yield r'cellType';
      yield serializers.serialize(
        object.cellType,
        specifiedType: const FullType(MatrixdropdownbaseCellType),
      );
    }
    if (object.width != null) {
      yield r'width';
      yield serializers.serialize(
        object.width,
        specifiedType: const FullType(SurveyLogoWidth),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    Matrixdynamic object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required MatrixdynamicBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'useDisplayValuesInDynamicTexts':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool;
          result.useDisplayValuesInDynamicTexts = valueDes;
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
        case r'bindings':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.bindings = valueDes;
          break;
        case r'type':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.type = valueDes;
          break;
        case r'columnLayout':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(MatrixdropdownbaseColumnLayout),
          ) as MatrixdropdownbaseColumnLayout;
          result.columnLayout = valueDes;
          break;
        case r'emptyRowsText':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.emptyRowsText = valueDes;
          break;
        case r'startWithNewLine':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool;
          result.startWithNewLine = valueDes;
          break;
        case r'confirmDeleteText':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.confirmDeleteText = valueDes;
          break;
        case r'horizontalScroll':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool;
          result.horizontalScroll = valueDes;
          break;
        case r'minRowCount':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(num),
          ) as num;
          result.minRowCount = valueDes;
          break;
        case r'keyDuplicationError':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.keyDuplicationError = valueDes;
          break;
        case r'columnMinWidth':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(SurveyLogoWidth),
          ) as SurveyLogoWidth;
          result.columnMinWidth.replace(valueDes);
          break;
        case r'detailPanelShowOnAdding':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool;
          result.detailPanelShowOnAdding = valueDes;
          break;
        case r'state':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(QuestionState),
          ) as QuestionState;
          result.state = valueDes;
          break;
        case r'allowAdaptiveActions':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool;
          result.allowAdaptiveActions = valueDes;
          break;
        case r'correctAnswer':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(JsonObject),
          ) as JsonObject?;
          if (valueDes == null) continue;
          result.correctAnswer = valueDes;
          break;
        case r'showCommentArea':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.showCommentArea = valueDes;
          break;
        case r'maxWidth':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(SurveyLogoWidth),
          ) as SurveyLogoWidth;
          result.maxWidth.replace(valueDes);
          break;
        case r'verticalAlign':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(MatrixbaseVerticalAlign),
          ) as MatrixbaseVerticalAlign;
          result.verticalAlign = valueDes;
          break;
        case r'isRequired':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool;
          result.isRequired = valueDes;
          break;
        case r'hideColumnsIfEmpty':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool;
          result.hideColumnsIfEmpty = valueDes;
          break;
        case r'alternateRows':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool;
          result.alternateRows = valueDes;
          break;
        case r'defaultValueFromLastRow':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool;
          result.defaultValueFromLastRow = valueDes;
          break;
        case r'visible':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool;
          result.visible = valueDes;
          break;
        case r'addRowText':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.addRowText = valueDes;
          break;
        case r'defaultValueExpression':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.defaultValueExpression = valueDes;
          break;
        case r'readOnly':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.readOnly = valueDes;
          break;
        case r'titleLocation':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(QuestionTitleLocation),
          ) as QuestionTitleLocation;
          result.titleLocation = valueDes;
          break;
        case r'defaultRowValue':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.defaultRowValue = valueDes;
          break;
        case r'requiredErrorText':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.requiredErrorText = valueDes;
          break;
        case r'name':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.name = valueDes;
          break;
        case r'visibleIf':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.visibleIf = valueDes;
          break;
        case r'allowRemoveRows':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool;
          result.allowRemoveRows = valueDes;
          break;
        case r'page':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.page = valueDes;
          break;
        case r'columnsVisibleIf':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.columnsVisibleIf = valueDes;
          break;
        case r'detailElements':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.detailElements = valueDes;
          break;
        case r'choices':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(BuiltList, [FullType(SelectbaseAllOfChoicesInner)]),
          ) as BuiltList<SelectbaseAllOfChoicesInner>;
          result.choices.replace(valueDes);
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
        case r'columns':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(BuiltList, [FullType(Matrixdropdowncolumn)]),
          ) as BuiltList<Matrixdropdowncolumn>;
          result.columns.replace(valueDes);
          break;
        case r'description':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.description = valueDes;
          break;
        case r'detailPanelMode':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(MatrixdropdownbaseDetailPanelMode),
          ) as MatrixdropdownbaseDetailPanelMode;
          result.detailPanelMode = valueDes;
          break;
        case r'title':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.title = valueDes;
          break;
        case r'commentText':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.commentText = valueDes;
          break;
        case r'columnColCount':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(MatrixdropdownbaseColumnColCount),
          ) as MatrixdropdownbaseColumnColCount;
          result.columnColCount = valueDes;
          break;
        case r'clearIfInvisible':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(QuestionClearIfInvisible),
          ) as QuestionClearIfInvisible;
          result.clearIfInvisible = valueDes;
          break;
        case r'allowRowsDragAndDrop':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.allowRowsDragAndDrop = valueDes;
          break;
        case r'descriptionLocation':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(QuestionDescriptionLocation),
          ) as QuestionDescriptionLocation;
          result.descriptionLocation = valueDes;
          break;
        case r'rowCount':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(num),
          ) as num;
          result.rowCount = valueDes;
          break;
        case r'hideNumber':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool;
          result.hideNumber = valueDes;
          break;
        case r'placeholder':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.placeholder = valueDes;
          break;
        case r'rowsVisibleIf':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.rowsVisibleIf = valueDes;
          break;
        case r'addRowLocation':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(MatrixdynamicAddRowLocation),
          ) as MatrixdynamicAddRowLocation;
          result.addRowLocation = valueDes;
          break;
        case r'enableIf':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.enableIf = valueDes;
          break;
        case r'commentPlaceholder':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.commentPlaceholder = valueDes;
          break;
        case r'removeRowText':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.removeRowText = valueDes;
          break;
        case r'showHeader':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool;
          result.showHeader = valueDes;
          break;
        case r'maxRowCount':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(num),
          ) as num;
          result.maxRowCount = valueDes;
          break;
        case r'keyName':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.keyName = valueDes;
          break;
        case r'requiredIf':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.requiredIf = valueDes;
          break;
        case r'renderAs':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.renderAs = valueDes;
          break;
        case r'minWidth':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(SurveyLogoWidth),
          ) as SurveyLogoWidth;
          result.minWidth.replace(valueDes);
          break;
        case r'confirmDelete':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool;
          result.confirmDelete = valueDes;
          break;
        case r'allowAddRows':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool;
          result.allowAddRows = valueDes;
          break;
        case r'cellType':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(MatrixdropdownbaseCellType),
          ) as MatrixdropdownbaseCellType;
          result.cellType = valueDes;
          break;
        case r'width':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(SurveyLogoWidth),
          ) as SurveyLogoWidth;
          result.width.replace(valueDes);
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  Matrixdynamic deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = MatrixdynamicBuilder();
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

