//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'imageitemvalue_all_of.g.dart';

/// ImageitemvalueAllOf
///
/// Properties:
/// * [imageLink] 
@BuiltValue(instantiable: false)
abstract class ImageitemvalueAllOf  {
  @BuiltValueField(wireName: r'imageLink')
  String? get imageLink;

  @BuiltValueSerializer(custom: true)
  static Serializer<ImageitemvalueAllOf> get serializer => _$ImageitemvalueAllOfSerializer();
}

class _$ImageitemvalueAllOfSerializer implements PrimitiveSerializer<ImageitemvalueAllOf> {
  @override
  final Iterable<Type> types = const [ImageitemvalueAllOf];

  @override
  final String wireName = r'ImageitemvalueAllOf';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    ImageitemvalueAllOf object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.imageLink != null) {
      yield r'imageLink';
      yield serializers.serialize(
        object.imageLink,
        specifiedType: const FullType(String),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    ImageitemvalueAllOf object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  @override
  ImageitemvalueAllOf deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return serializers.deserialize(serialized, specifiedType: FullType($ImageitemvalueAllOf)) as $ImageitemvalueAllOf;
  }
}

/// a concrete implementation of [ImageitemvalueAllOf], since [ImageitemvalueAllOf] is not instantiable
@BuiltValue(instantiable: true)
abstract class $ImageitemvalueAllOf implements ImageitemvalueAllOf, Built<$ImageitemvalueAllOf, $ImageitemvalueAllOfBuilder> {
  $ImageitemvalueAllOf._();

  factory $ImageitemvalueAllOf([void Function($ImageitemvalueAllOfBuilder)? updates]) = _$$ImageitemvalueAllOf;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults($ImageitemvalueAllOfBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<$ImageitemvalueAllOf> get serializer => _$$ImageitemvalueAllOfSerializer();
}

class _$$ImageitemvalueAllOfSerializer implements PrimitiveSerializer<$ImageitemvalueAllOf> {
  @override
  final Iterable<Type> types = const [$ImageitemvalueAllOf, _$$ImageitemvalueAllOf];

  @override
  final String wireName = r'$ImageitemvalueAllOf';

  @override
  Object serialize(
    Serializers serializers,
    $ImageitemvalueAllOf object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return serializers.serialize(object, specifiedType: FullType(ImageitemvalueAllOf))!;
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required ImageitemvalueAllOfBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'imageLink':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.imageLink = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  $ImageitemvalueAllOf deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = $ImageitemvalueAllOfBuilder();
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

