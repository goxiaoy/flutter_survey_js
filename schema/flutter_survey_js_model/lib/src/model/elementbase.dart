//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'elementbase.g.dart';

/// Elementbase
///
/// Properties:
/// * [type] 
/// * [name] 
@BuiltValue(instantiable: false)
abstract class Elementbase  {
  @BuiltValueField(wireName: r'type')
  String? get type;

  @BuiltValueField(wireName: r'name')
  String? get name;

  @BuiltValueSerializer(custom: true)
  static Serializer<Elementbase> get serializer => _$ElementbaseSerializer();
}

class _$ElementbaseSerializer implements PrimitiveSerializer<Elementbase> {
  @override
  final Iterable<Type> types = const [Elementbase];

  @override
  final String wireName = r'Elementbase';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    Elementbase object, {
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
    Elementbase object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  @override
  Elementbase deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return serializers.deserialize(serialized, specifiedType: FullType($Elementbase)) as $Elementbase;
  }
}

/// a concrete implementation of [Elementbase], since [Elementbase] is not instantiable
@BuiltValue(instantiable: true)
abstract class $Elementbase implements Elementbase, Built<$Elementbase, $ElementbaseBuilder> {
  $Elementbase._();

  factory $Elementbase([void Function($ElementbaseBuilder)? updates]) = _$$Elementbase;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults($ElementbaseBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<$Elementbase> get serializer => _$$ElementbaseSerializer();
}

class _$$ElementbaseSerializer implements PrimitiveSerializer<$Elementbase> {
  @override
  final Iterable<Type> types = const [$Elementbase, _$$Elementbase];

  @override
  final String wireName = r'$Elementbase';

  @override
  Object serialize(
    Serializers serializers,
    $Elementbase object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return serializers.serialize(object, specifiedType: FullType(Elementbase))!;
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required ElementbaseBuilder result,
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
  $Elementbase deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = $ElementbaseBuilder();
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

