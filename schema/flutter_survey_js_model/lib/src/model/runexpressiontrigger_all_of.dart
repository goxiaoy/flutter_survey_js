//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'runexpressiontrigger_all_of.g.dart';

/// RunexpressiontriggerAllOf
///
/// Properties:
/// * [setToName] 
/// * [runExpression] 
@BuiltValue(instantiable: false)
abstract class RunexpressiontriggerAllOf  {
  @BuiltValueField(wireName: r'setToName')
  String? get setToName;

  @BuiltValueField(wireName: r'runExpression')
  String? get runExpression;

  @BuiltValueSerializer(custom: true)
  static Serializer<RunexpressiontriggerAllOf> get serializer => _$RunexpressiontriggerAllOfSerializer();
}

class _$RunexpressiontriggerAllOfSerializer implements PrimitiveSerializer<RunexpressiontriggerAllOf> {
  @override
  final Iterable<Type> types = const [RunexpressiontriggerAllOf];

  @override
  final String wireName = r'RunexpressiontriggerAllOf';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    RunexpressiontriggerAllOf object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.setToName != null) {
      yield r'setToName';
      yield serializers.serialize(
        object.setToName,
        specifiedType: const FullType(String),
      );
    }
    if (object.runExpression != null) {
      yield r'runExpression';
      yield serializers.serialize(
        object.runExpression,
        specifiedType: const FullType(String),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    RunexpressiontriggerAllOf object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  @override
  RunexpressiontriggerAllOf deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return serializers.deserialize(serialized, specifiedType: FullType($RunexpressiontriggerAllOf)) as $RunexpressiontriggerAllOf;
  }
}

/// a concrete implementation of [RunexpressiontriggerAllOf], since [RunexpressiontriggerAllOf] is not instantiable
@BuiltValue(instantiable: true)
abstract class $RunexpressiontriggerAllOf implements RunexpressiontriggerAllOf, Built<$RunexpressiontriggerAllOf, $RunexpressiontriggerAllOfBuilder> {
  $RunexpressiontriggerAllOf._();

  factory $RunexpressiontriggerAllOf([void Function($RunexpressiontriggerAllOfBuilder)? updates]) = _$$RunexpressiontriggerAllOf;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults($RunexpressiontriggerAllOfBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<$RunexpressiontriggerAllOf> get serializer => _$$RunexpressiontriggerAllOfSerializer();
}

class _$$RunexpressiontriggerAllOfSerializer implements PrimitiveSerializer<$RunexpressiontriggerAllOf> {
  @override
  final Iterable<Type> types = const [$RunexpressiontriggerAllOf, _$$RunexpressiontriggerAllOf];

  @override
  final String wireName = r'$RunexpressiontriggerAllOf';

  @override
  Object serialize(
    Serializers serializers,
    $RunexpressiontriggerAllOf object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return serializers.serialize(object, specifiedType: FullType(RunexpressiontriggerAllOf))!;
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required RunexpressiontriggerAllOfBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'setToName':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.setToName = valueDes;
          break;
        case r'runExpression':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.runExpression = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  $RunexpressiontriggerAllOf deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = $RunexpressiontriggerAllOfBuilder();
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

