//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'dart:core';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:one_of/one_of.dart';

part 'survey_logo_width.g.dart';

/// SurveyLogoWidth
@BuiltValue()
abstract class SurveyLogoWidth implements Built<SurveyLogoWidth, SurveyLogoWidthBuilder> {
  /// One Of [String], [num]
  OneOf get oneOf;

  SurveyLogoWidth._();

  factory SurveyLogoWidth([void updates(SurveyLogoWidthBuilder b)]) = _$SurveyLogoWidth;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(SurveyLogoWidthBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<SurveyLogoWidth> get serializer => _$SurveyLogoWidthSerializer();
}

class _$SurveyLogoWidthSerializer implements PrimitiveSerializer<SurveyLogoWidth> {
  @override
  final Iterable<Type> types = const [SurveyLogoWidth, _$SurveyLogoWidth];

  @override
  final String wireName = r'SurveyLogoWidth';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    SurveyLogoWidth object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
  }

  @override
  Object serialize(
    Serializers serializers,
    SurveyLogoWidth object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final oneOf = object.oneOf;
    return serializers.serialize(oneOf.value, specifiedType: FullType(oneOf.valueType))!;
  }

  @override
  SurveyLogoWidth deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = SurveyLogoWidthBuilder();
    Object? oneOfDataSrc;
    final targetType = const FullType(OneOf, [FullType(String), FullType(num), ]);
    oneOfDataSrc = serialized;
    result.oneOf = serializers.deserialize(oneOfDataSrc, specifiedType: targetType) as OneOf;
    return result.build();
  }
}

