//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:flutter_survey_js_model/src/model/surveyvalidator.dart';
import 'package:flutter_survey_js_model/src/model/textvalidator_all_of.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'textvalidator.g.dart';

/// Textvalidator
///
/// Properties:
/// * [text] 
/// * [minLength] 
/// * [maxLength] 
/// * [allowDigits] 
@BuiltValue()
abstract class Textvalidator implements Surveyvalidator, TextvalidatorAllOf, Built<Textvalidator, TextvalidatorBuilder> {
  Textvalidator._();

  factory Textvalidator([void updates(TextvalidatorBuilder b)]) = _$Textvalidator;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(TextvalidatorBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<Textvalidator> get serializer => _$TextvalidatorSerializer();
}

class _$TextvalidatorSerializer implements PrimitiveSerializer<Textvalidator> {
  @override
  final Iterable<Type> types = const [Textvalidator, _$Textvalidator];

  @override
  final String wireName = r'Textvalidator';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    Textvalidator object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.text != null) {
      yield r'text';
      yield serializers.serialize(
        object.text,
        specifiedType: const FullType(String),
      );
    }
    if (object.allowDigits != null) {
      yield r'allowDigits';
      yield serializers.serialize(
        object.allowDigits,
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
    if (object.minLength != null) {
      yield r'minLength';
      yield serializers.serialize(
        object.minLength,
        specifiedType: const FullType(num),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    Textvalidator object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required TextvalidatorBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'text':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.text = valueDes;
          break;
        case r'allowDigits':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool;
          result.allowDigits = valueDes;
          break;
        case r'maxLength':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(num),
          ) as num;
          result.maxLength = valueDes;
          break;
        case r'minLength':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(num),
          ) as num;
          result.minLength = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  Textvalidator deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = TextvalidatorBuilder();
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

