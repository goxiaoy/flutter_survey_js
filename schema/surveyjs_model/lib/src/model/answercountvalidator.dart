//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:surveyjs_model/src/model/surveyvalidator.dart';
import 'package:surveyjs_model/src/model/answercountvalidator_all_of.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'answercountvalidator.g.dart';

/// Answercountvalidator
///
/// Properties:
/// * [text] 
/// * [minCount] 
/// * [maxCount] 
@BuiltValue()
abstract class Answercountvalidator implements AnswercountvalidatorAllOf, Surveyvalidator, Built<Answercountvalidator, AnswercountvalidatorBuilder> {
  Answercountvalidator._();

  factory Answercountvalidator([void updates(AnswercountvalidatorBuilder b)]) = _$Answercountvalidator;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(AnswercountvalidatorBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<Answercountvalidator> get serializer => _$AnswercountvalidatorSerializer();
}

class _$AnswercountvalidatorSerializer implements PrimitiveSerializer<Answercountvalidator> {
  @override
  final Iterable<Type> types = const [Answercountvalidator, _$Answercountvalidator];

  @override
  final String wireName = r'Answercountvalidator';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    Answercountvalidator object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.minCount != null) {
      yield r'minCount';
      yield serializers.serialize(
        object.minCount,
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
    if (object.maxCount != null) {
      yield r'maxCount';
      yield serializers.serialize(
        object.maxCount,
        specifiedType: const FullType(num),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    Answercountvalidator object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required AnswercountvalidatorBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'minCount':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(num),
          ) as num;
          result.minCount = valueDes;
          break;
        case r'text':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.text = valueDes;
          break;
        case r'maxCount':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(num),
          ) as num;
          result.maxCount = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  Answercountvalidator deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = AnswercountvalidatorBuilder();
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

