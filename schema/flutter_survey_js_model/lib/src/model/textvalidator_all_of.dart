//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'textvalidator_all_of.g.dart';

/// TextvalidatorAllOf
///
/// Properties:
/// * [minLength] 
/// * [maxLength] 
/// * [allowDigits] 
@BuiltValue(instantiable: false)
abstract class TextvalidatorAllOf  {
  @BuiltValueField(wireName: r'minLength')
  num? get minLength;

  @BuiltValueField(wireName: r'maxLength')
  num? get maxLength;

  @BuiltValueField(wireName: r'allowDigits')
  bool? get allowDigits;

  @BuiltValueSerializer(custom: true)
  static Serializer<TextvalidatorAllOf> get serializer => _$TextvalidatorAllOfSerializer();
}

class _$TextvalidatorAllOfSerializer implements PrimitiveSerializer<TextvalidatorAllOf> {
  @override
  final Iterable<Type> types = const [TextvalidatorAllOf];

  @override
  final String wireName = r'TextvalidatorAllOf';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    TextvalidatorAllOf object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.minLength != null) {
      yield r'minLength';
      yield serializers.serialize(
        object.minLength,
        specifiedType: const FullType(num),
      );
    }
    if (object.maxLength != null) {
      yield r'maxLength';
      yield serializers.serialize(
        object.maxLength,
        specifiedType: const FullType(num),
      );
    }
    if (object.allowDigits != null) {
      yield r'allowDigits';
      yield serializers.serialize(
        object.allowDigits,
        specifiedType: const FullType(bool),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    TextvalidatorAllOf object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  @override
  TextvalidatorAllOf deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return serializers.deserialize(serialized, specifiedType: FullType($TextvalidatorAllOf)) as $TextvalidatorAllOf;
  }
}

/// a concrete implementation of [TextvalidatorAllOf], since [TextvalidatorAllOf] is not instantiable
@BuiltValue(instantiable: true)
abstract class $TextvalidatorAllOf implements TextvalidatorAllOf, Built<$TextvalidatorAllOf, $TextvalidatorAllOfBuilder> {
  $TextvalidatorAllOf._();

  factory $TextvalidatorAllOf([void Function($TextvalidatorAllOfBuilder)? updates]) = _$$TextvalidatorAllOf;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults($TextvalidatorAllOfBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<$TextvalidatorAllOf> get serializer => _$$TextvalidatorAllOfSerializer();
}

class _$$TextvalidatorAllOfSerializer implements PrimitiveSerializer<$TextvalidatorAllOf> {
  @override
  final Iterable<Type> types = const [$TextvalidatorAllOf, _$$TextvalidatorAllOf];

  @override
  final String wireName = r'$TextvalidatorAllOf';

  @override
  Object serialize(
    Serializers serializers,
    $TextvalidatorAllOf object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return serializers.serialize(object, specifiedType: FullType(TextvalidatorAllOf))!;
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required TextvalidatorAllOfBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'minLength':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(num),
          ) as num;
          result.minLength = valueDes;
          break;
        case r'maxLength':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(num),
          ) as num;
          result.maxLength = valueDes;
          break;
        case r'allowDigits':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool;
          result.allowDigits = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  $TextvalidatorAllOf deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = $TextvalidatorAllOfBuilder();
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

