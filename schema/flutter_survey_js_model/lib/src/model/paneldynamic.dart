//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:flutter_survey_js_model/src/model/paneldynamic_template_title_location.dart';
import 'package:flutter_survey_js_model/src/model/paneldynamic_panel_count.dart';
import 'package:flutter_survey_js_model/src/model/question_title_location.dart';
import 'package:flutter_survey_js_model/src/model/question_state.dart';
import 'package:flutter_survey_js_model/src/model/question_all_of_validators_inner.dart';
import 'package:flutter_survey_js_model/src/model/question_clear_if_invisible.dart';
import 'package:flutter_survey_js_model/src/model/question_description_location.dart';
import 'package:flutter_survey_js_model/src/model/paneldynamic_all_of.dart';
import 'package:flutter_survey_js_model/src/model/question_indent.dart';
import 'package:flutter_survey_js_model/src/model/question.dart';
import 'package:flutter_survey_js_model/src/model/paneldynamic_panels_state.dart';
import 'package:flutter_survey_js_model/src/model/survey_logo_width.dart';
import 'package:built_collection/built_collection.dart';
import 'package:flutter_survey_js_model/src/model/paneldynamic_panel_remove_button_location.dart';
import 'package:flutter_survey_js_model/src/model/paneldynamic_show_question_numbers.dart';
import 'package:flutter_survey_js_model/src/model/paneldynamic_tab_align.dart';
import 'package:flutter_survey_js_model/src/model/survey_questions_inner.dart';
import 'package:built_value/json_object.dart';
import 'package:flutter_survey_js_model/src/model/paneldynamic_render_mode.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'paneldynamic.g.dart';

/// Paneldynamic
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
/// * [keyName] 
/// * [keyDuplicationError] 
/// * [confirmDelete] 
/// * [confirmDeleteText] 
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
@BuiltValue()
abstract class Paneldynamic implements PaneldynamicAllOf, Question, Built<Paneldynamic, PaneldynamicBuilder> {
  Paneldynamic._();

  factory Paneldynamic([void updates(PaneldynamicBuilder b)]) = _$Paneldynamic;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(PaneldynamicBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<Paneldynamic> get serializer => _$PaneldynamicSerializer();
}

class _$PaneldynamicSerializer implements PrimitiveSerializer<Paneldynamic> {
  @override
  final Iterable<Type> types = const [Paneldynamic, _$Paneldynamic];

  @override
  final String wireName = r'Paneldynamic';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    Paneldynamic object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.panelPrevText != null) {
      yield r'panelPrevText';
      yield serializers.serialize(
        object.panelPrevText,
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
    if (object.allowRemovePanel != null) {
      yield r'allowRemovePanel';
      yield serializers.serialize(
        object.allowRemovePanel,
        specifiedType: const FullType(bool),
      );
    }
    if (object.defaultPanelValue != null) {
      yield r'defaultPanelValue';
      yield serializers.serialize(
        object.defaultPanelValue,
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
    if (object.keyDuplicationError != null) {
      yield r'keyDuplicationError';
      yield serializers.serialize(
        object.keyDuplicationError,
        specifiedType: const FullType(String),
      );
    }
    if (object.maxPanelCount != null) {
      yield r'maxPanelCount';
      yield serializers.serialize(
        object.maxPanelCount,
        specifiedType: const FullType(num),
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
    if (object.panelsState != null) {
      yield r'panelsState';
      yield serializers.serialize(
        object.panelsState,
        specifiedType: const FullType(PaneldynamicPanelsState),
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
    if (object.templateTabTitle != null) {
      yield r'templateTabTitle';
      yield serializers.serialize(
        object.templateTabTitle,
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
    if (object.requiredErrorText != null) {
      yield r'requiredErrorText';
      yield serializers.serialize(
        object.requiredErrorText,
        specifiedType: const FullType(String),
      );
    }
    if (object.tabAlign != null) {
      yield r'tabAlign';
      yield serializers.serialize(
        object.tabAlign,
        specifiedType: const FullType(PaneldynamicTabAlign),
      );
    }
    if (object.templateElements != null) {
      yield r'templateElements';
      yield serializers.serialize(
        object.templateElements,
        specifiedType: const FullType(BuiltList, [FullType(SurveyQuestionsInner)]),
      );
    }
    if (object.templateDescription != null) {
      yield r'templateDescription';
      yield serializers.serialize(
        object.templateDescription,
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
    if (object.page != null) {
      yield r'page';
      yield serializers.serialize(
        object.page,
        specifiedType: const FullType(String),
      );
    }
    if (object.panelCount != null) {
      yield r'panelCount';
      yield serializers.serialize(
        object.panelCount,
        specifiedType: const FullType(PaneldynamicPanelCount),
      );
    }
    if (object.panelRemoveButtonLocation != null) {
      yield r'panelRemoveButtonLocation';
      yield serializers.serialize(
        object.panelRemoveButtonLocation,
        specifiedType: const FullType(PaneldynamicPanelRemoveButtonLocation),
      );
    }
    if (object.allowAddPanel != null) {
      yield r'allowAddPanel';
      yield serializers.serialize(
        object.allowAddPanel,
        specifiedType: const FullType(bool),
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
    if (object.defaultValueFromLastPanel != null) {
      yield r'defaultValueFromLastPanel';
      yield serializers.serialize(
        object.defaultValueFromLastPanel,
        specifiedType: const FullType(bool),
      );
    }
    if (object.panelRemoveText != null) {
      yield r'panelRemoveText';
      yield serializers.serialize(
        object.panelRemoveText,
        specifiedType: const FullType(String),
      );
    }
    if (object.description != null) {
      yield r'description';
      yield serializers.serialize(
        object.description,
        specifiedType: const FullType(String),
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
    if (object.noEntriesText != null) {
      yield r'noEntriesText';
      yield serializers.serialize(
        object.noEntriesText,
        specifiedType: const FullType(String),
      );
    }
    if (object.minPanelCount != null) {
      yield r'minPanelCount';
      yield serializers.serialize(
        object.minPanelCount,
        specifiedType: const FullType(num),
      );
    }
    if (object.showRangeInProgress != null) {
      yield r'showRangeInProgress';
      yield serializers.serialize(
        object.showRangeInProgress,
        specifiedType: const FullType(bool),
      );
    }
    if (object.clearIfInvisible != null) {
      yield r'clearIfInvisible';
      yield serializers.serialize(
        object.clearIfInvisible,
        specifiedType: const FullType(QuestionClearIfInvisible),
      );
    }
    if (object.templateTitleLocation != null) {
      yield r'templateTitleLocation';
      yield serializers.serialize(
        object.templateTitleLocation,
        specifiedType: const FullType(PaneldynamicTemplateTitleLocation),
      );
    }
    if (object.descriptionLocation != null) {
      yield r'descriptionLocation';
      yield serializers.serialize(
        object.descriptionLocation,
        specifiedType: const FullType(QuestionDescriptionLocation),
      );
    }
    if (object.templateTitle != null) {
      yield r'templateTitle';
      yield serializers.serialize(
        object.templateTitle,
        specifiedType: const FullType(String),
      );
    }
    if (object.hideNumber != null) {
      yield r'hideNumber';
      yield serializers.serialize(
        object.hideNumber,
        specifiedType: const FullType(bool),
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
    if (object.panelNextText != null) {
      yield r'panelNextText';
      yield serializers.serialize(
        object.panelNextText,
        specifiedType: const FullType(String),
      );
    }
    if (object.panelAddText != null) {
      yield r'panelAddText';
      yield serializers.serialize(
        object.panelAddText,
        specifiedType: const FullType(String),
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
    if (object.renderMode != null) {
      yield r'renderMode';
      yield serializers.serialize(
        object.renderMode,
        specifiedType: const FullType(PaneldynamicRenderMode),
      );
    }
    if (object.showQuestionNumbers != null) {
      yield r'showQuestionNumbers';
      yield serializers.serialize(
        object.showQuestionNumbers,
        specifiedType: const FullType(PaneldynamicShowQuestionNumbers),
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
    Paneldynamic object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required PaneldynamicBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'panelPrevText':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.panelPrevText = valueDes;
          break;
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
        case r'allowRemovePanel':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool;
          result.allowRemovePanel = valueDes;
          break;
        case r'defaultPanelValue':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.defaultPanelValue = valueDes;
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
        case r'keyDuplicationError':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.keyDuplicationError = valueDes;
          break;
        case r'maxPanelCount':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(num),
          ) as num;
          result.maxPanelCount = valueDes;
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
        case r'panelsState':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(PaneldynamicPanelsState),
          ) as PaneldynamicPanelsState;
          result.panelsState = valueDes;
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
        case r'templateTabTitle':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.templateTabTitle = valueDes;
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
            specifiedType: const FullType(String),
          ) as String;
          result.requiredErrorText = valueDes;
          break;
        case r'tabAlign':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(PaneldynamicTabAlign),
          ) as PaneldynamicTabAlign;
          result.tabAlign = valueDes;
          break;
        case r'templateElements':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(BuiltList, [FullType(SurveyQuestionsInner)]),
          ) as BuiltList<SurveyQuestionsInner>;
          result.templateElements.replace(valueDes);
          break;
        case r'templateDescription':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.templateDescription = valueDes;
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
        case r'page':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.page = valueDes;
          break;
        case r'panelCount':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(PaneldynamicPanelCount),
          ) as PaneldynamicPanelCount;
          result.panelCount = valueDes;
          break;
        case r'panelRemoveButtonLocation':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(PaneldynamicPanelRemoveButtonLocation),
          ) as PaneldynamicPanelRemoveButtonLocation;
          result.panelRemoveButtonLocation = valueDes;
          break;
        case r'allowAddPanel':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool;
          result.allowAddPanel = valueDes;
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
        case r'defaultValueFromLastPanel':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool;
          result.defaultValueFromLastPanel = valueDes;
          break;
        case r'panelRemoveText':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.panelRemoveText = valueDes;
          break;
        case r'description':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.description = valueDes;
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
        case r'noEntriesText':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.noEntriesText = valueDes;
          break;
        case r'minPanelCount':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(num),
          ) as num;
          result.minPanelCount = valueDes;
          break;
        case r'showRangeInProgress':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool;
          result.showRangeInProgress = valueDes;
          break;
        case r'clearIfInvisible':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(QuestionClearIfInvisible),
          ) as QuestionClearIfInvisible;
          result.clearIfInvisible = valueDes;
          break;
        case r'templateTitleLocation':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(PaneldynamicTemplateTitleLocation),
          ) as PaneldynamicTemplateTitleLocation;
          result.templateTitleLocation = valueDes;
          break;
        case r'descriptionLocation':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(QuestionDescriptionLocation),
          ) as QuestionDescriptionLocation;
          result.descriptionLocation = valueDes;
          break;
        case r'templateTitle':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.templateTitle = valueDes;
          break;
        case r'hideNumber':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool;
          result.hideNumber = valueDes;
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
        case r'panelNextText':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.panelNextText = valueDes;
          break;
        case r'panelAddText':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.panelAddText = valueDes;
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
        case r'renderMode':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(PaneldynamicRenderMode),
          ) as PaneldynamicRenderMode;
          result.renderMode = valueDes;
          break;
        case r'showQuestionNumbers':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(PaneldynamicShowQuestionNumbers),
          ) as PaneldynamicShowQuestionNumbers;
          result.showQuestionNumbers = valueDes;
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
  Paneldynamic deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = PaneldynamicBuilder();
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

