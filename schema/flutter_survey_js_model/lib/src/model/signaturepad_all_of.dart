//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:flutter_survey_js_model/src/model/survey_logo_width.dart';
import 'package:flutter_survey_js_model/src/model/signaturepad_data_format.dart';
import 'package:built_value/json_object.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'signaturepad_all_of.g.dart';

/// SignaturepadAllOf
///
/// Properties:
/// * [signatureWidth] 
/// * [signatureHeight] 
/// * [height] 
/// * [allowClear] 
/// * [penColor] 
/// * [backgroundColor] 
/// * [dataFormat] 
/// * [defaultValue] 
/// * [correctAnswer] 
@BuiltValue(instantiable: false)
abstract class SignaturepadAllOf  {
  @BuiltValueField(wireName: r'signatureWidth')
  SurveyLogoWidth? get signatureWidth;

  @BuiltValueField(wireName: r'signatureHeight')
  SurveyLogoWidth? get signatureHeight;

  @BuiltValueField(wireName: r'height')
  SurveyLogoWidth? get height;

  @BuiltValueField(wireName: r'allowClear')
  bool? get allowClear;

  @BuiltValueField(wireName: r'penColor')
  String? get penColor;

  @BuiltValueField(wireName: r'backgroundColor')
  String? get backgroundColor;

  @BuiltValueField(wireName: r'dataFormat')
  SignaturepadDataFormat? get dataFormat;
  // enum dataFormatEnum {  {"value":"","text":"PNG"},  {"value":"image/jpeg","text":"JPEG"},  {"value":"image/svg+xml","text":"SVG"},  };

  @BuiltValueField(wireName: r'defaultValue')
  JsonObject? get defaultValue;

  @BuiltValueField(wireName: r'correctAnswer')
  JsonObject? get correctAnswer;

  @BuiltValueSerializer(custom: true)
  static Serializer<SignaturepadAllOf> get serializer => _$SignaturepadAllOfSerializer();
}

class _$SignaturepadAllOfSerializer implements PrimitiveSerializer<SignaturepadAllOf> {
  @override
  final Iterable<Type> types = const [SignaturepadAllOf];

  @override
  final String wireName = r'SignaturepadAllOf';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    SignaturepadAllOf object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.signatureWidth != null) {
      yield r'signatureWidth';
      yield serializers.serialize(
        object.signatureWidth,
        specifiedType: const FullType(SurveyLogoWidth),
      );
    }
    if (object.signatureHeight != null) {
      yield r'signatureHeight';
      yield serializers.serialize(
        object.signatureHeight,
        specifiedType: const FullType(SurveyLogoWidth),
      );
    }
    if (object.height != null) {
      yield r'height';
      yield serializers.serialize(
        object.height,
        specifiedType: const FullType(SurveyLogoWidth),
      );
    }
    if (object.allowClear != null) {
      yield r'allowClear';
      yield serializers.serialize(
        object.allowClear,
        specifiedType: const FullType(bool),
      );
    }
    if (object.penColor != null) {
      yield r'penColor';
      yield serializers.serialize(
        object.penColor,
        specifiedType: const FullType(String),
      );
    }
    if (object.backgroundColor != null) {
      yield r'backgroundColor';
      yield serializers.serialize(
        object.backgroundColor,
        specifiedType: const FullType(String),
      );
    }
    if (object.dataFormat != null) {
      yield r'dataFormat';
      yield serializers.serialize(
        object.dataFormat,
        specifiedType: const FullType(SignaturepadDataFormat),
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
  }

  @override
  Object serialize(
    Serializers serializers,
    SignaturepadAllOf object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  @override
  SignaturepadAllOf deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return serializers.deserialize(serialized, specifiedType: FullType($SignaturepadAllOf)) as $SignaturepadAllOf;
  }
}

/// a concrete implementation of [SignaturepadAllOf], since [SignaturepadAllOf] is not instantiable
@BuiltValue(instantiable: true)
abstract class $SignaturepadAllOf implements SignaturepadAllOf, Built<$SignaturepadAllOf, $SignaturepadAllOfBuilder> {
  $SignaturepadAllOf._();

  factory $SignaturepadAllOf([void Function($SignaturepadAllOfBuilder)? updates]) = _$$SignaturepadAllOf;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults($SignaturepadAllOfBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<$SignaturepadAllOf> get serializer => _$$SignaturepadAllOfSerializer();
}

class _$$SignaturepadAllOfSerializer implements PrimitiveSerializer<$SignaturepadAllOf> {
  @override
  final Iterable<Type> types = const [$SignaturepadAllOf, _$$SignaturepadAllOf];

  @override
  final String wireName = r'$SignaturepadAllOf';

  @override
  Object serialize(
    Serializers serializers,
    $SignaturepadAllOf object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return serializers.serialize(object, specifiedType: FullType(SignaturepadAllOf))!;
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required SignaturepadAllOfBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'signatureWidth':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(SurveyLogoWidth),
          ) as SurveyLogoWidth;
          result.signatureWidth.replace(valueDes);
          break;
        case r'signatureHeight':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(SurveyLogoWidth),
          ) as SurveyLogoWidth;
          result.signatureHeight.replace(valueDes);
          break;
        case r'height':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(SurveyLogoWidth),
          ) as SurveyLogoWidth;
          result.height.replace(valueDes);
          break;
        case r'allowClear':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool;
          result.allowClear = valueDes;
          break;
        case r'penColor':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.penColor = valueDes;
          break;
        case r'backgroundColor':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.backgroundColor = valueDes;
          break;
        case r'dataFormat':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(SignaturepadDataFormat),
          ) as SignaturepadDataFormat;
          result.dataFormat = valueDes;
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
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  $SignaturepadAllOf deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = $SignaturepadAllOfBuilder();
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

