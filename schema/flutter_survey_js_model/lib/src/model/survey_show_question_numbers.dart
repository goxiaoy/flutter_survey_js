//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:flutter_survey_js_model/src/model/survey_show_question_numbers_any_of.dart';
import 'dart:core';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:one_of/any_of.dart';

part 'survey_show_question_numbers.g.dart';

/// SurveyShowQuestionNumbers
@BuiltValue()
abstract class SurveyShowQuestionNumbers implements Built<SurveyShowQuestionNumbers, SurveyShowQuestionNumbersBuilder> {
  /// Any Of [SurveyShowQuestionNumbersAnyOf], [bool]
  AnyOf get anyOf;

  SurveyShowQuestionNumbers._();

  factory SurveyShowQuestionNumbers([void updates(SurveyShowQuestionNumbersBuilder b)]) = _$SurveyShowQuestionNumbers;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(SurveyShowQuestionNumbersBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<SurveyShowQuestionNumbers> get serializer => _$SurveyShowQuestionNumbersSerializer();
}

class _$SurveyShowQuestionNumbersSerializer implements PrimitiveSerializer<SurveyShowQuestionNumbers> {
  @override
  final Iterable<Type> types = const [SurveyShowQuestionNumbers, _$SurveyShowQuestionNumbers];

  @override
  final String wireName = r'SurveyShowQuestionNumbers';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    SurveyShowQuestionNumbers object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
  }

  @override
  Object serialize(
    Serializers serializers,
    SurveyShowQuestionNumbers object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final anyOf = object.anyOf;
    return serializers.serialize(anyOf, specifiedType: FullType(AnyOf, anyOf.valueTypes.map((type) => FullType(type)).toList()))!;
  }

  @override
  SurveyShowQuestionNumbers deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = SurveyShowQuestionNumbersBuilder();
    Object? anyOfDataSrc;
    final targetType = const FullType(AnyOf, [FullType(bool), FullType(SurveyShowQuestionNumbersAnyOf), ]);
    anyOfDataSrc = serialized;
    result.anyOf = serializers.deserialize(anyOfDataSrc, specifiedType: targetType) as AnyOf;
    return result.build();
  }
}

