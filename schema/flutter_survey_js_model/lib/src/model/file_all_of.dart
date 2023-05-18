//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:flutter_survey_js_model/src/model/survey_logo_width.dart';
import 'package:built_collection/built_collection.dart';
import 'package:flutter_survey_js_model/src/model/question_all_of_validators_inner.dart';
import 'package:built_value/json_object.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'file_all_of.g.dart';

/// FileAllOf
///
/// Properties:
/// * [showCommentArea] 
/// * [showPreview] 
/// * [allowMultiple] 
/// * [allowImagesPreview] 
/// * [imageHeight] 
/// * [imageWidth] 
/// * [acceptedTypes] 
/// * [storeDataAsText] 
/// * [waitForUpload] 
/// * [maxSize] 
/// * [defaultValue] 
/// * [correctAnswer] 
/// * [validators] 
/// * [needConfirmRemoveFile] 
@BuiltValue(instantiable: false)
abstract class FileAllOf  {
  @BuiltValueField(wireName: r'showCommentArea')
  String? get showCommentArea;

  @BuiltValueField(wireName: r'showPreview')
  bool? get showPreview;

  @BuiltValueField(wireName: r'allowMultiple')
  bool? get allowMultiple;

  @BuiltValueField(wireName: r'allowImagesPreview')
  bool? get allowImagesPreview;

  @BuiltValueField(wireName: r'imageHeight')
  SurveyLogoWidth? get imageHeight;

  @BuiltValueField(wireName: r'imageWidth')
  SurveyLogoWidth? get imageWidth;

  @BuiltValueField(wireName: r'acceptedTypes')
  String? get acceptedTypes;

  @BuiltValueField(wireName: r'storeDataAsText')
  bool? get storeDataAsText;

  @BuiltValueField(wireName: r'waitForUpload')
  bool? get waitForUpload;

  @BuiltValueField(wireName: r'maxSize')
  num? get maxSize;

  @BuiltValueField(wireName: r'defaultValue')
  JsonObject? get defaultValue;

  @BuiltValueField(wireName: r'correctAnswer')
  JsonObject? get correctAnswer;

  @BuiltValueField(wireName: r'validators')
  BuiltList<QuestionAllOfValidatorsInner>? get validators;

  @BuiltValueField(wireName: r'needConfirmRemoveFile')
  bool? get needConfirmRemoveFile;

  @BuiltValueSerializer(custom: true)
  static Serializer<FileAllOf> get serializer => _$FileAllOfSerializer();
}

class _$FileAllOfSerializer implements PrimitiveSerializer<FileAllOf> {
  @override
  final Iterable<Type> types = const [FileAllOf];

  @override
  final String wireName = r'FileAllOf';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    FileAllOf object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
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
    if (object.imageHeight != null) {
      yield r'imageHeight';
      yield serializers.serialize(
        object.imageHeight,
        specifiedType: const FullType(SurveyLogoWidth),
      );
    }
    if (object.imageWidth != null) {
      yield r'imageWidth';
      yield serializers.serialize(
        object.imageWidth,
        specifiedType: const FullType(SurveyLogoWidth),
      );
    }
    if (object.acceptedTypes != null) {
      yield r'acceptedTypes';
      yield serializers.serialize(
        object.acceptedTypes,
        specifiedType: const FullType(String),
      );
    }
    if (object.storeDataAsText != null) {
      yield r'storeDataAsText';
      yield serializers.serialize(
        object.storeDataAsText,
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
    if (object.maxSize != null) {
      yield r'maxSize';
      yield serializers.serialize(
        object.maxSize,
        specifiedType: const FullType(num),
      );
    }
    if (object.defaultValue != null) {
      yield r'defaultValue';
      yield serializers.serialize(
        object.defaultValue,
        specifiedType: const FullType.nullable(JsonObject),
      );
    }
    if (object.correctAnswer != null) {
      yield r'correctAnswer';
      yield serializers.serialize(
        object.correctAnswer,
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
    if (object.needConfirmRemoveFile != null) {
      yield r'needConfirmRemoveFile';
      yield serializers.serialize(
        object.needConfirmRemoveFile,
        specifiedType: const FullType(bool),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    FileAllOf object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  @override
  FileAllOf deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return serializers.deserialize(serialized, specifiedType: FullType($FileAllOf)) as $FileAllOf;
  }
}

/// a concrete implementation of [FileAllOf], since [FileAllOf] is not instantiable
@BuiltValue(instantiable: true)
abstract class $FileAllOf implements FileAllOf, Built<$FileAllOf, $FileAllOfBuilder> {
  $FileAllOf._();

  factory $FileAllOf([void Function($FileAllOfBuilder)? updates]) = _$$FileAllOf;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults($FileAllOfBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<$FileAllOf> get serializer => _$$FileAllOfSerializer();
}

class _$$FileAllOfSerializer implements PrimitiveSerializer<$FileAllOf> {
  @override
  final Iterable<Type> types = const [$FileAllOf, _$$FileAllOf];

  @override
  final String wireName = r'$FileAllOf';

  @override
  Object serialize(
    Serializers serializers,
    $FileAllOf object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return serializers.serialize(object, specifiedType: FullType(FileAllOf))!;
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required FileAllOfBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
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
        case r'imageHeight':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(SurveyLogoWidth),
          ) as SurveyLogoWidth;
          result.imageHeight.replace(valueDes);
          break;
        case r'imageWidth':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(SurveyLogoWidth),
          ) as SurveyLogoWidth;
          result.imageWidth.replace(valueDes);
          break;
        case r'acceptedTypes':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.acceptedTypes = valueDes;
          break;
        case r'storeDataAsText':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool;
          result.storeDataAsText = valueDes;
          break;
        case r'waitForUpload':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool;
          result.waitForUpload = valueDes;
          break;
        case r'maxSize':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(num),
          ) as num;
          result.maxSize = valueDes;
          break;
        case r'defaultValue':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(JsonObject),
          ) as JsonObject?;
          if (valueDes == null) continue;
          result.defaultValue = valueDes;
          break;
        case r'correctAnswer':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(JsonObject),
          ) as JsonObject?;
          if (valueDes == null) continue;
          result.correctAnswer = valueDes;
          break;
        case r'validators':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(BuiltList, [FullType(QuestionAllOfValidatorsInner)]),
          ) as BuiltList<QuestionAllOfValidatorsInner>;
          result.validators.replace(valueDes);
          break;
        case r'needConfirmRemoveFile':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool;
          result.needConfirmRemoveFile = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  $FileAllOf deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = $FileAllOfBuilder();
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

