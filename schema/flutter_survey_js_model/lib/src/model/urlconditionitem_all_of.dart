//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'urlconditionitem_all_of.g.dart';

/// UrlconditionitemAllOf
///
/// Properties:
/// * [url] 
@BuiltValue(instantiable: false)
abstract class UrlconditionitemAllOf  {
  @BuiltValueField(wireName: r'url')
  String? get url;

  @BuiltValueSerializer(custom: true)
  static Serializer<UrlconditionitemAllOf> get serializer => _$UrlconditionitemAllOfSerializer();
}

class _$UrlconditionitemAllOfSerializer implements PrimitiveSerializer<UrlconditionitemAllOf> {
  @override
  final Iterable<Type> types = const [UrlconditionitemAllOf];

  @override
  final String wireName = r'UrlconditionitemAllOf';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    UrlconditionitemAllOf object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.url != null) {
      yield r'url';
      yield serializers.serialize(
        object.url,
        specifiedType: const FullType(String),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    UrlconditionitemAllOf object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  @override
  UrlconditionitemAllOf deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return serializers.deserialize(serialized, specifiedType: FullType($UrlconditionitemAllOf)) as $UrlconditionitemAllOf;
  }
}

/// a concrete implementation of [UrlconditionitemAllOf], since [UrlconditionitemAllOf] is not instantiable
@BuiltValue(instantiable: true)
abstract class $UrlconditionitemAllOf implements UrlconditionitemAllOf, Built<$UrlconditionitemAllOf, $UrlconditionitemAllOfBuilder> {
  $UrlconditionitemAllOf._();

  factory $UrlconditionitemAllOf([void Function($UrlconditionitemAllOfBuilder)? updates]) = _$$UrlconditionitemAllOf;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults($UrlconditionitemAllOfBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<$UrlconditionitemAllOf> get serializer => _$$UrlconditionitemAllOfSerializer();
}

class _$$UrlconditionitemAllOfSerializer implements PrimitiveSerializer<$UrlconditionitemAllOf> {
  @override
  final Iterable<Type> types = const [$UrlconditionitemAllOf, _$$UrlconditionitemAllOf];

  @override
  final String wireName = r'$UrlconditionitemAllOf';

  @override
  Object serialize(
    Serializers serializers,
    $UrlconditionitemAllOf object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return serializers.serialize(object, specifiedType: FullType(UrlconditionitemAllOf))!;
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required UrlconditionitemAllOfBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'url':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.url = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  $UrlconditionitemAllOf deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = $UrlconditionitemAllOfBuilder();
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

