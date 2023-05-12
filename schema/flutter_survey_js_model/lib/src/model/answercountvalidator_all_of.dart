//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'answercountvalidator_all_of.g.dart';

/// AnswercountvalidatorAllOf
///
/// Properties:
/// * [minCount] 
/// * [maxCount] 
@BuiltValue(instantiable: false)
abstract class AnswercountvalidatorAllOf  {
  @BuiltValueField(wireName: r'minCount')
  num? get minCount;

  @BuiltValueField(wireName: r'maxCount')
  num? get maxCount;

  @BuiltValueSerializer(custom: true)
  static Serializer<AnswercountvalidatorAllOf> get serializer => _$AnswercountvalidatorAllOfSerializer();
}

class _$AnswercountvalidatorAllOfSerializer implements PrimitiveSerializer<AnswercountvalidatorAllOf> {
  @override
  final Iterable<Type> types = const [AnswercountvalidatorAllOf];

  @override
  final String wireName = r'AnswercountvalidatorAllOf';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    AnswercountvalidatorAllOf object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.minCount != null) {
      yield r'minCount';
      yield serializers.serialize(
        object.minCount,
        specifiedType: const FullType(num),
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
    AnswercountvalidatorAllOf object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  @override
  AnswercountvalidatorAllOf deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return serializers.deserialize(serialized, specifiedType: FullType($AnswercountvalidatorAllOf)) as $AnswercountvalidatorAllOf;
  }
}

/// a concrete implementation of [AnswercountvalidatorAllOf], since [AnswercountvalidatorAllOf] is not instantiable
@BuiltValue(instantiable: true)
abstract class $AnswercountvalidatorAllOf implements AnswercountvalidatorAllOf, Built<$AnswercountvalidatorAllOf, $AnswercountvalidatorAllOfBuilder> {
  $AnswercountvalidatorAllOf._();

  factory $AnswercountvalidatorAllOf([void Function($AnswercountvalidatorAllOfBuilder)? updates]) = _$$AnswercountvalidatorAllOf;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults($AnswercountvalidatorAllOfBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<$AnswercountvalidatorAllOf> get serializer => _$$AnswercountvalidatorAllOfSerializer();
}

class _$$AnswercountvalidatorAllOfSerializer implements PrimitiveSerializer<$AnswercountvalidatorAllOf> {
  @override
  final Iterable<Type> types = const [$AnswercountvalidatorAllOf, _$$AnswercountvalidatorAllOf];

  @override
  final String wireName = r'$AnswercountvalidatorAllOf';

  @override
  Object serialize(
    Serializers serializers,
    $AnswercountvalidatorAllOf object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return serializers.serialize(object, specifiedType: FullType(AnswercountvalidatorAllOf))!;
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required AnswercountvalidatorAllOfBuilder result,
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
  $AnswercountvalidatorAllOf deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = $AnswercountvalidatorAllOfBuilder();
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

