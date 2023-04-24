//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'surveytrigger_all_of.g.dart';

/// SurveytriggerAllOf
///
/// Properties:
/// * [name] 
@BuiltValue(instantiable: false)
abstract class SurveytriggerAllOf  {
  @BuiltValueField(wireName: r'name')
  String? get name;

  @BuiltValueSerializer(custom: true)
  static Serializer<SurveytriggerAllOf> get serializer => _$SurveytriggerAllOfSerializer();
}

class _$SurveytriggerAllOfSerializer implements PrimitiveSerializer<SurveytriggerAllOf> {
  @override
  final Iterable<Type> types = const [SurveytriggerAllOf];

  @override
  final String wireName = r'SurveytriggerAllOf';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    SurveytriggerAllOf object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.name != null) {
      yield r'name';
      yield serializers.serialize(
        object.name,
        specifiedType: const FullType(String),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    SurveytriggerAllOf object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  @override
  SurveytriggerAllOf deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return serializers.deserialize(serialized, specifiedType: FullType($SurveytriggerAllOf)) as $SurveytriggerAllOf;
  }
}

/// a concrete implementation of [SurveytriggerAllOf], since [SurveytriggerAllOf] is not instantiable
@BuiltValue(instantiable: true)
abstract class $SurveytriggerAllOf implements SurveytriggerAllOf, Built<$SurveytriggerAllOf, $SurveytriggerAllOfBuilder> {
  $SurveytriggerAllOf._();

  factory $SurveytriggerAllOf([void Function($SurveytriggerAllOfBuilder)? updates]) = _$$SurveytriggerAllOf;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults($SurveytriggerAllOfBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<$SurveytriggerAllOf> get serializer => _$$SurveytriggerAllOfSerializer();
}

class _$$SurveytriggerAllOfSerializer implements PrimitiveSerializer<$SurveytriggerAllOf> {
  @override
  final Iterable<Type> types = const [$SurveytriggerAllOf, _$$SurveytriggerAllOf];

  @override
  final String wireName = r'$SurveytriggerAllOf';

  @override
  Object serialize(
    Serializers serializers,
    $SurveytriggerAllOf object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return serializers.serialize(object, specifiedType: FullType(SurveytriggerAllOf))!;
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required SurveytriggerAllOfBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'name':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.name = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  $SurveytriggerAllOf deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = $SurveytriggerAllOfBuilder();
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

