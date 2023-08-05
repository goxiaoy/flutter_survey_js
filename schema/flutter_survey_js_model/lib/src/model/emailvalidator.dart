//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:flutter_survey_js_model/src/model/surveyvalidator.dart';
import 'package:flutter_survey_js_model/src/model/survey_title.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'emailvalidator.g.dart';

/// Emailvalidator
///
/// Properties:
/// * [text] 
/// * [type] 
@BuiltValue()
abstract class Emailvalidator implements Surveyvalidator, Built<Emailvalidator, EmailvalidatorBuilder> {
  Emailvalidator._();

  factory Emailvalidator([void updates(EmailvalidatorBuilder b)]) = _$Emailvalidator;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(EmailvalidatorBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<Emailvalidator> get serializer => _$EmailvalidatorSerializer();
}

class _$EmailvalidatorSerializer implements PrimitiveSerializer<Emailvalidator> {
  @override
  final Iterable<Type> types = const [Emailvalidator, _$Emailvalidator];

  @override
  final String wireName = r'Emailvalidator';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    Emailvalidator object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.type != null) {
      yield r'type';
      yield serializers.serialize(
        object.type,
        specifiedType: const FullType(String),
      );
    }
    if (object.text != null) {
      yield r'text';
      yield serializers.serialize(
        object.text,
        specifiedType: const FullType(SurveyTitle),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    Emailvalidator object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required EmailvalidatorBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'type':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.type = valueDes;
          break;
        case r'text':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(SurveyTitle),
          ) as SurveyTitle;
          result.text.replace(valueDes);
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  Emailvalidator deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = EmailvalidatorBuilder();
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

