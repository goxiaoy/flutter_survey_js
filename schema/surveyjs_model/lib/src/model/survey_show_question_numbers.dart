//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:surveyjs_model/src/model/survey_show_question_numbers_one_of0.dart';
import 'dart:core';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:one_of/one_of.dart';

part 'survey_show_question_numbers.g.dart';

/// SurveyShowQuestionNumbers
@BuiltValue()
abstract class SurveyShowQuestionNumbers implements Built<SurveyShowQuestionNumbers, SurveyShowQuestionNumbersBuilder> {
  /// One Of [SurveyShowQuestionNumbersOneOf0], [bool]
  OneOf get oneOf;

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
    final oneOf = object.oneOf;
    return serializers.serialize(oneOf.value, specifiedType: FullType(oneOf.valueType))!;
  }

  @override
  SurveyShowQuestionNumbers deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = SurveyShowQuestionNumbersBuilder();
    Object? oneOfDataSrc;
    final targetType = const FullType(OneOf, [FullType(SurveyShowQuestionNumbersOneOf0), FullType(bool), ]);
    oneOfDataSrc = serialized;
    result.oneOf = serializers.deserialize(oneOfDataSrc, specifiedType: targetType) as OneOf;
    return result.build();
  }
}

