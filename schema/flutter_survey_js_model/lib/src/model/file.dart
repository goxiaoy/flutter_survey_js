//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:flutter_survey_js_model/src/model/question_indent.dart';
import 'package:flutter_survey_js_model/src/model/question.dart';
import 'package:flutter_survey_js_model/src/model/survey_logo_width.dart';
import 'package:flutter_survey_js_model/src/model/question_title_location.dart';
import 'package:built_collection/built_collection.dart';
import 'package:flutter_survey_js_model/src/model/question_state.dart';
import 'package:flutter_survey_js_model/src/model/file_all_of.dart';
import 'package:flutter_survey_js_model/src/model/question_all_of_validators_inner.dart';
import 'package:flutter_survey_js_model/src/model/question_clear_if_invisible.dart';
import 'package:flutter_survey_js_model/src/model/question_description_location.dart';
import 'package:built_value/json_object.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'file.g.dart';

/// File
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
/// * [showPreview] 
/// * [allowMultiple] 
/// * [allowImagesPreview] 
/// * [imageHeight] 
/// * [imageWidth] 
/// * [acceptedTypes] 
/// * [storeDataAsText] 
/// * [waitForUpload] 
/// * [maxSize] 
/// * [needConfirmRemoveFile] 
@BuiltValue()
abstract class File implements FileAllOf, Question, Built<File, FileBuilder> {
  File._();

  factory File([void updates(FileBuilder b)]) = _$File;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(FileBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<File> get serializer => _$FileSerializer();
}

class _$FileSerializer implements PrimitiveSerializer<File> {
  @override
  final Iterable<Type> types = const [File, _$File];

  @override
  final String wireName = r'File';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    File object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.useDisplayValuesInDynamicTexts != null) {
      yield r'useDisplayValuesInDynamicTexts';
      yield serializers.serialize(
        object.useDisplayValuesInDynamicTexts,
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
    if (object.description != null) {
      yield r'description';
      yield serializers.serialize(
        object.description,
        specifiedType: const FullType(String),
      );
    }
    if (object.maxSize != null) {
      yield r'maxSize';
      yield serializers.serialize(
        object.maxSize,
        specifiedType: const FullType(num),
      );
    }
    if (object.type != null) {
      yield r'type';
      yield serializers.serialize(
        object.type,
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
    if (object.clearIfInvisible != null) {
      yield r'clearIfInvisible';
      yield serializers.serialize(
        object.clearIfInvisible,
        specifiedType: const FullType(QuestionClearIfInvisible),
      );
    }
    if (object.startWithNewLine != null) {
      yield r'startWithNewLine';
      yield serializers.serialize(
        object.startWithNewLine,
        specifiedType: const FullType(bool),
      );
    }
    if (object.descriptionLocation != null) {
      yield r'descriptionLocation';
      yield serializers.serialize(
        object.descriptionLocation,
        specifiedType: const FullType(QuestionDescriptionLocation),
      );
    }
    if (object.storeDataAsText != null) {
      yield r'storeDataAsText';
      yield serializers.serialize(
        object.storeDataAsText,
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
    if (object.hideNumber != null) {
      yield r'hideNumber';
      yield serializers.serialize(
        object.hideNumber,
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
    if (object.acceptedTypes != null) {
      yield r'acceptedTypes';
      yield serializers.serialize(
        object.acceptedTypes,
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
    if (object.showCommentArea != null) {
      yield r'showCommentArea';
      yield serializers.serialize(
        object.showCommentArea,
        specifiedType: const FullType(String),
      );
    }
    if (object.showPreview != null) {
      yield r'showPreview';
      yield serializers.serialize(
        object.showPreview,
        specifiedType: const FullType(bool),
      );
    }
    if (object.imageWidth != null) {
      yield r'imageWidth';
      yield serializers.serialize(
        object.imageWidth,
        specifiedType: const FullType(SurveyLogoWidth),
      );
    }
    if (object.enableIf != null) {
      yield r'enableIf';
      yield serializers.serialize(
        object.enableIf,
        specifiedType: const FullType(String),
      );
    }
    if (object.isRequired != null) {
      yield r'isRequired';
      yield serializers.serialize(
        object.isRequired,
        specifiedType: const FullType(bool),
      );
    }
    if (object.waitForUpload != null) {
      yield r'waitForUpload';
      yield serializers.serialize(
        object.waitForUpload,
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
    if (object.commentPlaceholder != null) {
      yield r'commentPlaceholder';
      yield serializers.serialize(
        object.commentPlaceholder,
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
    if (object.requiredIf != null) {
      yield r'requiredIf';
      yield serializers.serialize(
        object.requiredIf,
        specifiedType: const FullType(String),
      );
    }
    if (object.needConfirmRemoveFile != null) {
      yield r'needConfirmRemoveFile';
      yield serializers.serialize(
        object.needConfirmRemoveFile,
        specifiedType: const FullType(bool),
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
    if (object.readOnly != null) {
      yield r'readOnly';
      yield serializers.serialize(
        object.readOnly,
        specifiedType: const FullType(String),
      );
    }
    if (object.imageHeight != null) {
      yield r'imageHeight';
      yield serializers.serialize(
        object.imageHeight,
        specifiedType: const FullType(SurveyLogoWidth),
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
    if (object.allowMultiple != null) {
      yield r'allowMultiple';
      yield serializers.serialize(
        object.allowMultiple,
        specifiedType: const FullType(bool),
      );
    }
    if (object.allowImagesPreview != null) {
      yield r'allowImagesPreview';
      yield serializers.serialize(
        object.allowImagesPreview,
        specifiedType: const FullType(bool),
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
    if (object.width != null) {
      yield r'width';
      yield serializers.serialize(
        object.width,
        specifiedType: const FullType(SurveyLogoWidth),
      );
    }
    if (object.page != null) {
      yield r'page';
      yield serializers.serialize(
        object.page,
        specifiedType: const FullType(String),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    File object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required FileBuilder result,
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
        case r'description':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.description = valueDes;
          break;
        case r'maxSize':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(num),
          ) as num;
          result.maxSize = valueDes;
          break;
        case r'type':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.type = valueDes;
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
        case r'clearIfInvisible':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(QuestionClearIfInvisible),
          ) as QuestionClearIfInvisible;
          result.clearIfInvisible = valueDes;
          break;
        case r'startWithNewLine':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool;
          result.startWithNewLine = valueDes;
          break;
        case r'descriptionLocation':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(QuestionDescriptionLocation),
          ) as QuestionDescriptionLocation;
          result.descriptionLocation = valueDes;
          break;
        case r'storeDataAsText':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool;
          result.storeDataAsText = valueDes;
          break;
        case r'state':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(QuestionState),
          ) as QuestionState;
          result.state = valueDes;
          break;
        case r'hideNumber':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool;
          result.hideNumber = valueDes;
          break;
        case r'correctAnswer':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(JsonObject),
          ) as JsonObject?;
          if (valueDes == null) continue;
          result.correctAnswer = valueDes;
          break;
        case r'acceptedTypes':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.acceptedTypes = valueDes;
          break;
        case r'maxWidth':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(SurveyLogoWidth),
          ) as SurveyLogoWidth;
          result.maxWidth.replace(valueDes);
          break;
        case r'showCommentArea':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.showCommentArea = valueDes;
          break;
        case r'showPreview':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool;
          result.showPreview = valueDes;
          break;
        case r'imageWidth':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(SurveyLogoWidth),
          ) as SurveyLogoWidth;
          result.imageWidth.replace(valueDes);
          break;
        case r'enableIf':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.enableIf = valueDes;
          break;
        case r'isRequired':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool;
          result.isRequired = valueDes;
          break;
        case r'waitForUpload':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool;
          result.waitForUpload = valueDes;
          break;
        case r'visible':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool;
          result.visible = valueDes;
          break;
        case r'commentPlaceholder':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.commentPlaceholder = valueDes;
          break;
        case r'defaultValueExpression':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.defaultValueExpression = valueDes;
          break;
        case r'requiredIf':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.requiredIf = valueDes;
          break;
        case r'needConfirmRemoveFile':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool;
          result.needConfirmRemoveFile = valueDes;
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
        case r'readOnly':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.readOnly = valueDes;
          break;
        case r'imageHeight':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(SurveyLogoWidth),
          ) as SurveyLogoWidth;
          result.imageHeight.replace(valueDes);
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
        case r'allowMultiple':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool;
          result.allowMultiple = valueDes;
          break;
        case r'allowImagesPreview':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool;
          result.allowImagesPreview = valueDes;
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
        case r'width':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(SurveyLogoWidth),
          ) as SurveyLogoWidth;
          result.width.replace(valueDes);
          break;
        case r'page':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.page = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  File deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = FileBuilder();
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

