//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:flutter_survey_js_model/src/model/expressionvalidator.dart';
import 'package:flutter_survey_js_model/src/model/numericvalidator.dart';
import 'package:flutter_survey_js_model/src/model/surveyvalidator.dart';
import 'package:flutter_survey_js_model/src/model/textvalidator.dart';
import 'package:flutter_survey_js_model/src/model/answercountvalidator.dart';
import 'package:flutter_survey_js_model/src/model/regexvalidator.dart';
import 'package:flutter_survey_js_model/src/model/survey_title.dart';
import 'package:flutter_survey_js_model/src/model/emailvalidator.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:one_of/any_of.dart';

part 'question_all_of_validators_inner.g.dart';

/// QuestionAllOfValidatorsInner
///
/// Properties:
/// * [text] 
/// * [type] 
/// * [minValue] 
/// * [maxValue] 
/// * [minLength] 
/// * [maxLength] 
/// * [allowDigits] 
/// * [minCount] 
/// * [maxCount] 
/// * [regex] 
/// * [expression] 
@BuiltValue()
abstract class QuestionAllOfValidatorsInner implements Built<QuestionAllOfValidatorsInner, QuestionAllOfValidatorsInnerBuilder> {
  /// Any Of [Answercountvalidator], [Emailvalidator], [Expressionvalidator], [Numericvalidator], [Regexvalidator], [Surveyvalidator], [Textvalidator]
  AnyOf get anyOf;

  QuestionAllOfValidatorsInner._();

  factory QuestionAllOfValidatorsInner([void updates(QuestionAllOfValidatorsInnerBuilder b)]) = _$QuestionAllOfValidatorsInner;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(QuestionAllOfValidatorsInnerBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<QuestionAllOfValidatorsInner> get serializer => _$QuestionAllOfValidatorsInnerSerializer();
}

class _$QuestionAllOfValidatorsInnerSerializer implements PrimitiveSerializer<QuestionAllOfValidatorsInner> {
  @override
  final Iterable<Type> types = const [QuestionAllOfValidatorsInner, _$QuestionAllOfValidatorsInner];

  @override
  final String wireName = r'QuestionAllOfValidatorsInner';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    QuestionAllOfValidatorsInner object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
  }

  @override
  Object serialize(
    Serializers serializers,
    QuestionAllOfValidatorsInner object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final anyOf = object.anyOf;
    return serializers.serialize(anyOf, specifiedType: FullType(AnyOf, anyOf.valueTypes.map((type) => FullType(type)).toList()))!;
  }

  @override
  QuestionAllOfValidatorsInner deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = QuestionAllOfValidatorsInnerBuilder();
    Object? anyOfDataSrc;
    final targetType = const FullType(AnyOf, [FullType(Numericvalidator), FullType(Textvalidator), FullType(Answercountvalidator), FullType(Regexvalidator), FullType(Emailvalidator), FullType(Expressionvalidator), FullType(Surveyvalidator), ]);
    anyOfDataSrc = serialized;
    result.anyOf = serializers.deserialize(anyOfDataSrc, specifiedType: targetType) as AnyOf;
    return result.build();
  }
}

