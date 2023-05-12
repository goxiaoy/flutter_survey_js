//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'skiptrigger_all_of.g.dart';

/// SkiptriggerAllOf
///
/// Properties:
/// * [gotoName] 
@BuiltValue(instantiable: false)
abstract class SkiptriggerAllOf  {
  @BuiltValueField(wireName: r'gotoName')
  String? get gotoName;

  @BuiltValueSerializer(custom: true)
  static Serializer<SkiptriggerAllOf> get serializer => _$SkiptriggerAllOfSerializer();
}

class _$SkiptriggerAllOfSerializer implements PrimitiveSerializer<SkiptriggerAllOf> {
  @override
  final Iterable<Type> types = const [SkiptriggerAllOf];

  @override
  final String wireName = r'SkiptriggerAllOf';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    SkiptriggerAllOf object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.gotoName != null) {
      yield r'gotoName';
      yield serializers.serialize(
        object.gotoName,
        specifiedType: const FullType(String),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    SkiptriggerAllOf object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  @override
  SkiptriggerAllOf deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return serializers.deserialize(serialized, specifiedType: FullType($SkiptriggerAllOf)) as $SkiptriggerAllOf;
  }
}

/// a concrete implementation of [SkiptriggerAllOf], since [SkiptriggerAllOf] is not instantiable
@BuiltValue(instantiable: true)
abstract class $SkiptriggerAllOf implements SkiptriggerAllOf, Built<$SkiptriggerAllOf, $SkiptriggerAllOfBuilder> {
  $SkiptriggerAllOf._();

  factory $SkiptriggerAllOf([void Function($SkiptriggerAllOfBuilder)? updates]) = _$$SkiptriggerAllOf;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults($SkiptriggerAllOfBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<$SkiptriggerAllOf> get serializer => _$$SkiptriggerAllOfSerializer();
}

class _$$SkiptriggerAllOfSerializer implements PrimitiveSerializer<$SkiptriggerAllOf> {
  @override
  final Iterable<Type> types = const [$SkiptriggerAllOf, _$$SkiptriggerAllOf];

  @override
  final String wireName = r'$SkiptriggerAllOf';

  @override
  Object serialize(
    Serializers serializers,
    $SkiptriggerAllOf object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return serializers.serialize(object, specifiedType: FullType(SkiptriggerAllOf))!;
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required SkiptriggerAllOfBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'gotoName':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.gotoName = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  $SkiptriggerAllOf deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = $SkiptriggerAllOfBuilder();
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

