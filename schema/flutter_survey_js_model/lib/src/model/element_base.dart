//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'element_base.g.dart';

/// ElementBase
///
/// Properties:
/// * [type] 
/// * [name] 
@BuiltValue(instantiable: false)
abstract class ElementBase  {
  @BuiltValueField(wireName: r'type')
  String? get type;

  @BuiltValueField(wireName: r'name')
  String? get name;

  @BuiltValueSerializer(custom: true)
  static Serializer<ElementBase> get serializer => _$ElementBaseSerializer();
}

class _$ElementBaseSerializer implements PrimitiveSerializer<ElementBase> {
  @override
  final Iterable<Type> types = const [ElementBase];

  @override
  final String wireName = r'ElementBase';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    ElementBase object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.type != null) {
      yield r'type';
      yield serializers.serialize(
        object.type,
        specifiedType: const FullType(String),
      );
    }
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
    ElementBase object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  @override
  ElementBase deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return serializers.deserialize(serialized, specifiedType: FullType($ElementBase)) as $ElementBase;
  }
}

/// a concrete implementation of [ElementBase], since [ElementBase] is not instantiable
@BuiltValue(instantiable: true)
abstract class $ElementBase implements ElementBase, Built<$ElementBase, $ElementBaseBuilder> {
  $ElementBase._();

  factory $ElementBase([void Function($ElementBaseBuilder)? updates]) = _$$ElementBase;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults($ElementBaseBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<$ElementBase> get serializer => _$$ElementBaseSerializer();
}

class _$$ElementBaseSerializer implements PrimitiveSerializer<$ElementBase> {
  @override
  final Iterable<Type> types = const [$ElementBase, _$$ElementBase];

  @override
  final String wireName = r'$ElementBase';

  @override
  Object serialize(
    Serializers serializers,
    $ElementBase object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return serializers.serialize(object, specifiedType: FullType(ElementBase))!;
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required ElementBaseBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'type':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.type = valueDes;
          break;
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
  $ElementBase deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = $ElementBaseBuilder();
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

