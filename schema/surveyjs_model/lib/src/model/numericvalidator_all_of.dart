//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'numericvalidator_all_of.g.dart';

/// NumericvalidatorAllOf
///
/// Properties:
/// * [minValue] 
/// * [maxValue] 
@BuiltValue(instantiable: false)
abstract class NumericvalidatorAllOf  {
  @BuiltValueField(wireName: r'minValue')
  num? get minValue;

  @BuiltValueField(wireName: r'maxValue')
  num? get maxValue;

  @BuiltValueSerializer(custom: true)
  static Serializer<NumericvalidatorAllOf> get serializer => _$NumericvalidatorAllOfSerializer();
}

class _$NumericvalidatorAllOfSerializer implements PrimitiveSerializer<NumericvalidatorAllOf> {
  @override
  final Iterable<Type> types = const [NumericvalidatorAllOf];

  @override
  final String wireName = r'NumericvalidatorAllOf';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    NumericvalidatorAllOf object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.minValue != null) {
      yield r'minValue';
      yield serializers.serialize(
        object.minValue,
        specifiedType: const FullType(num),
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
    NumericvalidatorAllOf object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  @override
  NumericvalidatorAllOf deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return serializers.deserialize(serialized, specifiedType: FullType($NumericvalidatorAllOf)) as $NumericvalidatorAllOf;
  }
}

/// a concrete implementation of [NumericvalidatorAllOf], since [NumericvalidatorAllOf] is not instantiable
@BuiltValue(instantiable: true)
abstract class $NumericvalidatorAllOf implements NumericvalidatorAllOf, Built<$NumericvalidatorAllOf, $NumericvalidatorAllOfBuilder> {
  $NumericvalidatorAllOf._();

  factory $NumericvalidatorAllOf([void Function($NumericvalidatorAllOfBuilder)? updates]) = _$$NumericvalidatorAllOf;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults($NumericvalidatorAllOfBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<$NumericvalidatorAllOf> get serializer => _$$NumericvalidatorAllOfSerializer();
}

class _$$NumericvalidatorAllOfSerializer implements PrimitiveSerializer<$NumericvalidatorAllOf> {
  @override
  final Iterable<Type> types = const [$NumericvalidatorAllOf, _$$NumericvalidatorAllOf];

  @override
  final String wireName = r'$NumericvalidatorAllOf';

  @override
  Object serialize(
    Serializers serializers,
    $NumericvalidatorAllOf object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return serializers.serialize(object, specifiedType: FullType(NumericvalidatorAllOf))!;
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required NumericvalidatorAllOfBuilder result,
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
  $NumericvalidatorAllOf deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = $NumericvalidatorAllOfBuilder();
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

