//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'regexvalidator_all_of.g.dart';

/// RegexvalidatorAllOf
///
/// Properties:
/// * [regex] 
@BuiltValue(instantiable: false)
abstract class RegexvalidatorAllOf  {
  @BuiltValueField(wireName: r'regex')
  String? get regex;

  @BuiltValueSerializer(custom: true)
  static Serializer<RegexvalidatorAllOf> get serializer => _$RegexvalidatorAllOfSerializer();
}

class _$RegexvalidatorAllOfSerializer implements PrimitiveSerializer<RegexvalidatorAllOf> {
  @override
  final Iterable<Type> types = const [RegexvalidatorAllOf];

  @override
  final String wireName = r'RegexvalidatorAllOf';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    RegexvalidatorAllOf object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.regex != null) {
      yield r'regex';
      yield serializers.serialize(
        object.regex,
        specifiedType: const FullType(String),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    RegexvalidatorAllOf object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  @override
  RegexvalidatorAllOf deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return serializers.deserialize(serialized, specifiedType: FullType($RegexvalidatorAllOf)) as $RegexvalidatorAllOf;
  }
}

/// a concrete implementation of [RegexvalidatorAllOf], since [RegexvalidatorAllOf] is not instantiable
@BuiltValue(instantiable: true)
abstract class $RegexvalidatorAllOf implements RegexvalidatorAllOf, Built<$RegexvalidatorAllOf, $RegexvalidatorAllOfBuilder> {
  $RegexvalidatorAllOf._();

  factory $RegexvalidatorAllOf([void Function($RegexvalidatorAllOfBuilder)? updates]) = _$$RegexvalidatorAllOf;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults($RegexvalidatorAllOfBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<$RegexvalidatorAllOf> get serializer => _$$RegexvalidatorAllOfSerializer();
}

class _$$RegexvalidatorAllOfSerializer implements PrimitiveSerializer<$RegexvalidatorAllOf> {
  @override
  final Iterable<Type> types = const [$RegexvalidatorAllOf, _$$RegexvalidatorAllOf];

  @override
  final String wireName = r'$RegexvalidatorAllOf';

  @override
  Object serialize(
    Serializers serializers,
    $RegexvalidatorAllOf object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return serializers.serialize(object, specifiedType: FullType(RegexvalidatorAllOf))!;
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required RegexvalidatorAllOfBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'regex':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.regex = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  $RegexvalidatorAllOf deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = $RegexvalidatorAllOfBuilder();
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

