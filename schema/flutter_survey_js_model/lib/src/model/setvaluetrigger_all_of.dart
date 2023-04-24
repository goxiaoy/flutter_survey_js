//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'setvaluetrigger_all_of.g.dart';

/// SetvaluetriggerAllOf
///
/// Properties:
/// * [setToName] 
/// * [setValue] 
/// * [isVariable] 
@BuiltValue(instantiable: false)
abstract class SetvaluetriggerAllOf  {
  @BuiltValueField(wireName: r'setToName')
  String? get setToName;

  @BuiltValueField(wireName: r'setValue')
  String? get setValue;

  @BuiltValueField(wireName: r'isVariable')
  bool? get isVariable;

  @BuiltValueSerializer(custom: true)
  static Serializer<SetvaluetriggerAllOf> get serializer => _$SetvaluetriggerAllOfSerializer();
}

class _$SetvaluetriggerAllOfSerializer implements PrimitiveSerializer<SetvaluetriggerAllOf> {
  @override
  final Iterable<Type> types = const [SetvaluetriggerAllOf];

  @override
  final String wireName = r'SetvaluetriggerAllOf';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    SetvaluetriggerAllOf object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.setToName != null) {
      yield r'setToName';
      yield serializers.serialize(
        object.setToName,
        specifiedType: const FullType(String),
      );
    }
    if (object.setValue != null) {
      yield r'setValue';
      yield serializers.serialize(
        object.setValue,
        specifiedType: const FullType(String),
      );
    }
    if (object.isVariable != null) {
      yield r'isVariable';
      yield serializers.serialize(
        object.isVariable,
        specifiedType: const FullType(bool),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    SetvaluetriggerAllOf object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  @override
  SetvaluetriggerAllOf deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return serializers.deserialize(serialized, specifiedType: FullType($SetvaluetriggerAllOf)) as $SetvaluetriggerAllOf;
  }
}

/// a concrete implementation of [SetvaluetriggerAllOf], since [SetvaluetriggerAllOf] is not instantiable
@BuiltValue(instantiable: true)
abstract class $SetvaluetriggerAllOf implements SetvaluetriggerAllOf, Built<$SetvaluetriggerAllOf, $SetvaluetriggerAllOfBuilder> {
  $SetvaluetriggerAllOf._();

  factory $SetvaluetriggerAllOf([void Function($SetvaluetriggerAllOfBuilder)? updates]) = _$$SetvaluetriggerAllOf;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults($SetvaluetriggerAllOfBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<$SetvaluetriggerAllOf> get serializer => _$$SetvaluetriggerAllOfSerializer();
}

class _$$SetvaluetriggerAllOfSerializer implements PrimitiveSerializer<$SetvaluetriggerAllOf> {
  @override
  final Iterable<Type> types = const [$SetvaluetriggerAllOf, _$$SetvaluetriggerAllOf];

  @override
  final String wireName = r'$SetvaluetriggerAllOf';

  @override
  Object serialize(
    Serializers serializers,
    $SetvaluetriggerAllOf object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return serializers.serialize(object, specifiedType: FullType(SetvaluetriggerAllOf))!;
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required SetvaluetriggerAllOfBuilder result,
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
        case r'setValue':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.setValue = valueDes;
          break;
        case r'isVariable':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool;
          result.isVariable = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  $SetvaluetriggerAllOf deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = $SetvaluetriggerAllOfBuilder();
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

