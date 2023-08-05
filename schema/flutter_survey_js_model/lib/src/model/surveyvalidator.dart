//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:flutter_survey_js_model/src/model/survey_title.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'surveyvalidator.g.dart';

/// Surveyvalidator
///
/// Properties:
/// * [text] 
/// * [type] 
@BuiltValue(instantiable: false)
abstract class Surveyvalidator  {
  @BuiltValueField(wireName: r'text')
  SurveyTitle? get text;

  @BuiltValueField(wireName: r'type')
  String? get type;

  @BuiltValueSerializer(custom: true)
  static Serializer<Surveyvalidator> get serializer => _$SurveyvalidatorSerializer();
}

class _$SurveyvalidatorSerializer implements PrimitiveSerializer<Surveyvalidator> {
  @override
  final Iterable<Type> types = const [Surveyvalidator];

  @override
  final String wireName = r'Surveyvalidator';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    Surveyvalidator object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.text != null) {
      yield r'text';
      yield serializers.serialize(
        object.text,
        specifiedType: const FullType(SurveyTitle),
      );
    }
    if (object.type != null) {
      yield r'type';
      yield serializers.serialize(
        object.type,
        specifiedType: const FullType(String),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    Surveyvalidator object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  @override
  Surveyvalidator deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return serializers.deserialize(serialized, specifiedType: FullType($Surveyvalidator)) as $Surveyvalidator;
  }
}

/// a concrete implementation of [Surveyvalidator], since [Surveyvalidator] is not instantiable
@BuiltValue(instantiable: true)
abstract class $Surveyvalidator implements Surveyvalidator, Built<$Surveyvalidator, $SurveyvalidatorBuilder> {
  $Surveyvalidator._();

  factory $Surveyvalidator([void Function($SurveyvalidatorBuilder)? updates]) = _$$Surveyvalidator;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults($SurveyvalidatorBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<$Surveyvalidator> get serializer => _$$SurveyvalidatorSerializer();
}

class _$$SurveyvalidatorSerializer implements PrimitiveSerializer<$Surveyvalidator> {
  @override
  final Iterable<Type> types = const [$Surveyvalidator, _$$Surveyvalidator];

  @override
  final String wireName = r'$Surveyvalidator';

  @override
  Object serialize(
    Serializers serializers,
    $Surveyvalidator object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return serializers.serialize(object, specifiedType: FullType(Surveyvalidator))!;
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required SurveyvalidatorBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'text':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(SurveyTitle),
          ) as SurveyTitle;
          result.text.replace(valueDes);
          break;
        case r'type':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.type = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  $Surveyvalidator deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = $SurveyvalidatorBuilder();
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

