//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'copyvaluetrigger_all_of.g.dart';

/// CopyvaluetriggerAllOf
///
/// Properties:
/// * [fromName] 
/// * [setToName] 
@BuiltValue(instantiable: false)
abstract class CopyvaluetriggerAllOf  {
  @BuiltValueField(wireName: r'fromName')
  String? get fromName;

  @BuiltValueField(wireName: r'setToName')
  String? get setToName;

  @BuiltValueSerializer(custom: true)
  static Serializer<CopyvaluetriggerAllOf> get serializer => _$CopyvaluetriggerAllOfSerializer();
}

class _$CopyvaluetriggerAllOfSerializer implements PrimitiveSerializer<CopyvaluetriggerAllOf> {
  @override
  final Iterable<Type> types = const [CopyvaluetriggerAllOf];

  @override
  final String wireName = r'CopyvaluetriggerAllOf';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    CopyvaluetriggerAllOf object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.fromName != null) {
      yield r'fromName';
      yield serializers.serialize(
        object.fromName,
        specifiedType: const FullType(String),
      );
    }
    if (object.setToName != null) {
      yield r'setToName';
      yield serializers.serialize(
        object.setToName,
        specifiedType: const FullType(String),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    CopyvaluetriggerAllOf object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  @override
  CopyvaluetriggerAllOf deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return serializers.deserialize(serialized, specifiedType: FullType($CopyvaluetriggerAllOf)) as $CopyvaluetriggerAllOf;
  }
}

/// a concrete implementation of [CopyvaluetriggerAllOf], since [CopyvaluetriggerAllOf] is not instantiable
@BuiltValue(instantiable: true)
abstract class $CopyvaluetriggerAllOf implements CopyvaluetriggerAllOf, Built<$CopyvaluetriggerAllOf, $CopyvaluetriggerAllOfBuilder> {
  $CopyvaluetriggerAllOf._();

  factory $CopyvaluetriggerAllOf([void Function($CopyvaluetriggerAllOfBuilder)? updates]) = _$$CopyvaluetriggerAllOf;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults($CopyvaluetriggerAllOfBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<$CopyvaluetriggerAllOf> get serializer => _$$CopyvaluetriggerAllOfSerializer();
}

class _$$CopyvaluetriggerAllOfSerializer implements PrimitiveSerializer<$CopyvaluetriggerAllOf> {
  @override
  final Iterable<Type> types = const [$CopyvaluetriggerAllOf, _$$CopyvaluetriggerAllOf];

  @override
  final String wireName = r'$CopyvaluetriggerAllOf';

  @override
  Object serialize(
    Serializers serializers,
    $CopyvaluetriggerAllOf object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return serializers.serialize(object, specifiedType: FullType(CopyvaluetriggerAllOf))!;
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required CopyvaluetriggerAllOfBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'fromName':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.fromName = valueDes;
          break;
        case r'setToName':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.setToName = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  $CopyvaluetriggerAllOf deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = $CopyvaluetriggerAllOfBuilder();
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

