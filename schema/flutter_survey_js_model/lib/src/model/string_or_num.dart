//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'dart:core';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:one_of/one_of.dart';

part 'string_or_num.g.dart';

/// StringOrNum
@BuiltValue()
abstract class StringOrNum implements Built<StringOrNum, StringOrNumBuilder> {
  /// One Of [String], [num]
  OneOf get oneOf;

  StringOrNum._();

  factory StringOrNum([void updates(StringOrNumBuilder b)]) = _$StringOrNum;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(StringOrNumBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<StringOrNum> get serializer => _$StringOrNumSerializer();
}

class _$StringOrNumSerializer implements PrimitiveSerializer<StringOrNum> {
  @override
  final Iterable<Type> types = const [StringOrNum, _$StringOrNum];

  @override
  final String wireName = r'StringOrNum';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    StringOrNum object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
  }

  @override
  Object serialize(
    Serializers serializers,
    StringOrNum object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final oneOf = object.oneOf;
    return serializers.serialize(oneOf.value, specifiedType: FullType(oneOf.valueType))!;
  }

  @override
  StringOrNum deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = StringOrNumBuilder();
    Object? oneOfDataSrc;
    final targetType = const FullType(OneOf, [FullType(String), FullType(num), ]);
    oneOfDataSrc = serialized;
    result.oneOf = serializers.deserialize(oneOfDataSrc, specifiedType: targetType) as OneOf;
    return result.build();
  }
}

