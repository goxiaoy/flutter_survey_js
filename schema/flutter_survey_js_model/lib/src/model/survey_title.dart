//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:flutter_survey_js_model/src/model/locstring.dart';
import 'dart:core';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:one_of/one_of.dart';

part 'survey_title.g.dart';

/// SurveyTitle
///
/// Properties:
/// * [default_] 
/// * [en] 
@BuiltValue()
abstract class SurveyTitle implements Built<SurveyTitle, SurveyTitleBuilder> {
  /// One Of [Locstring], [String]
  OneOf get oneOf;

  SurveyTitle._();

  factory SurveyTitle([void updates(SurveyTitleBuilder b)]) = _$SurveyTitle;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(SurveyTitleBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<SurveyTitle> get serializer => _$SurveyTitleSerializer();
}

class _$SurveyTitleSerializer implements PrimitiveSerializer<SurveyTitle> {
  @override
  final Iterable<Type> types = const [SurveyTitle, _$SurveyTitle];

  @override
  final String wireName = r'SurveyTitle';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    SurveyTitle object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
  }

  @override
  Object serialize(
    Serializers serializers,
    SurveyTitle object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final oneOf = object.oneOf;
    return serializers.serialize(oneOf.value, specifiedType: FullType(oneOf.valueType))!;
  }

  @override
  SurveyTitle deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = SurveyTitleBuilder();
    Object? oneOfDataSrc;
    final targetType = const FullType(OneOf, [FullType(String), FullType(Locstring), ]);
    oneOfDataSrc = serialized;
    result.oneOf = serializers.deserialize(oneOfDataSrc, specifiedType: targetType) as OneOf;
    return result.build();
  }
}

