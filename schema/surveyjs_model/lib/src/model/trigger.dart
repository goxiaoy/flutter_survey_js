//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'trigger.g.dart';

/// Trigger
///
/// Properties:
/// * [operator_] 
/// * [value] 
/// * [expression] 
@BuiltValue(instantiable: false)
abstract class Trigger  {
  @BuiltValueField(wireName: r'operator')
  String? get operator_;

  @BuiltValueField(wireName: r'value')
  String? get value;

  @BuiltValueField(wireName: r'expression')
  String? get expression;

  @BuiltValueSerializer(custom: true)
  static Serializer<Trigger> get serializer => _$TriggerSerializer();
}

class _$TriggerSerializer implements PrimitiveSerializer<Trigger> {
  @override
  final Iterable<Type> types = const [Trigger];

  @override
  final String wireName = r'Trigger';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    Trigger object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.operator_ != null) {
      yield r'operator';
      yield serializers.serialize(
        object.operator_,
        specifiedType: const FullType(String),
      );
    }
    if (object.value != null) {
      yield r'value';
      yield serializers.serialize(
        object.value,
        specifiedType: const FullType(String),
      );
    }
    if (object.expression != null) {
      yield r'expression';
      yield serializers.serialize(
        object.expression,
        specifiedType: const FullType(String),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    Trigger object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  @override
  Trigger deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return serializers.deserialize(serialized, specifiedType: FullType($Trigger)) as $Trigger;
  }
}

/// a concrete implementation of [Trigger], since [Trigger] is not instantiable
@BuiltValue(instantiable: true)
abstract class $Trigger implements Trigger, Built<$Trigger, $TriggerBuilder> {
  $Trigger._();

  factory $Trigger([void Function($TriggerBuilder)? updates]) = _$$Trigger;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults($TriggerBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<$Trigger> get serializer => _$$TriggerSerializer();
}

class _$$TriggerSerializer implements PrimitiveSerializer<$Trigger> {
  @override
  final Iterable<Type> types = const [$Trigger, _$$Trigger];

  @override
  final String wireName = r'$Trigger';

  @override
  Object serialize(
    Serializers serializers,
    $Trigger object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return serializers.serialize(object, specifiedType: FullType(Trigger))!;
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required TriggerBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'operator':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.operator_ = valueDes;
          break;
        case r'value':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.value = valueDes;
          break;
        case r'expression':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.expression = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  $Trigger deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = $TriggerBuilder();
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

