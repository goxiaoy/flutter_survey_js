//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:flutter_survey_js_model/src/model/numericvalidator_all_of.dart';
import 'package:flutter_survey_js_model/src/model/surveyvalidator.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'numericvalidator.g.dart';

/// Numericvalidator
///
/// Properties:
/// * [text] 
/// * [minValue] 
/// * [maxValue] 
@BuiltValue()
abstract class Numericvalidator implements NumericvalidatorAllOf, Surveyvalidator, Built<Numericvalidator, NumericvalidatorBuilder> {
  Numericvalidator._();

  factory Numericvalidator([void updates(NumericvalidatorBuilder b)]) = _$Numericvalidator;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(NumericvalidatorBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<Numericvalidator> get serializer => _$NumericvalidatorSerializer();
}

class _$NumericvalidatorSerializer implements PrimitiveSerializer<Numericvalidator> {
  @override
  final Iterable<Type> types = const [Numericvalidator, _$Numericvalidator];

  @override
  final String wireName = r'Numericvalidator';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    Numericvalidator object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.minValue != null) {
      yield r'minValue';
      yield serializers.serialize(
        object.minValue,
        specifiedType: const FullType(num),
      );
    }
    if (object.text != null) {
      yield r'text';
      yield serializers.serialize(
        object.text,
        specifiedType: const FullType(String),
      );
    }
    if (object.maxValue != null) {
      yield r'maxValue';
      yield serializers.serialize(
        object.maxValue,
        specifiedType: const FullType(num),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    Numericvalidator object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required NumericvalidatorBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'minValue':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(num),
          ) as num;
          result.minValue = valueDes;
          break;
        case r'text':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.text = valueDes;
          break;
        case r'maxValue':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(num),
          ) as num;
          result.maxValue = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  Numericvalidator deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = NumericvalidatorBuilder();
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

