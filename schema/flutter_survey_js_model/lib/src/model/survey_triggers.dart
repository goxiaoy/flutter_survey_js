//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:flutter_survey_js_model/src/model/runexpressiontrigger.dart';
import 'package:flutter_survey_js_model/src/model/setvaluetrigger.dart';
import 'package:flutter_survey_js_model/src/model/completetrigger.dart';
import 'package:flutter_survey_js_model/src/model/copyvaluetrigger.dart';
import 'package:flutter_survey_js_model/src/model/skiptrigger.dart';
import 'package:flutter_survey_js_model/src/model/visibletrigger.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:one_of/any_of.dart';

part 'survey_triggers.g.dart';

/// SurveyTriggers
///
/// Properties:
/// * [operator_] 
/// * [value] 
/// * [expression] 
/// * [type] 
/// * [name] 
/// * [pages] 
/// * [questions] 
/// * [setToName] 
/// * [setValue] 
/// * [isVariable] 
/// * [fromName] 
/// * [gotoName] 
/// * [runExpression] 
@BuiltValue()
abstract class SurveyTriggers implements Built<SurveyTriggers, SurveyTriggersBuilder> {
  /// Any Of [Completetrigger], [Copyvaluetrigger], [Runexpressiontrigger], [Setvaluetrigger], [Skiptrigger], [Visibletrigger]
  AnyOf get anyOf;

  SurveyTriggers._();

  factory SurveyTriggers([void updates(SurveyTriggersBuilder b)]) = _$SurveyTriggers;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(SurveyTriggersBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<SurveyTriggers> get serializer => _$SurveyTriggersSerializer();
}

class _$SurveyTriggersSerializer implements PrimitiveSerializer<SurveyTriggers> {
  @override
  final Iterable<Type> types = const [SurveyTriggers, _$SurveyTriggers];

  @override
  final String wireName = r'SurveyTriggers';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    SurveyTriggers object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
  }

  @override
  Object serialize(
    Serializers serializers,
    SurveyTriggers object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final anyOf = object.anyOf;
    return serializers.serialize(anyOf, specifiedType: FullType(AnyOf, anyOf.valueTypes.map((type) => FullType(type)).toList()))!;
  }

  @override
  SurveyTriggers deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = SurveyTriggersBuilder();
    Object? anyOfDataSrc;
    final targetType = const FullType(AnyOf, [FullType(Visibletrigger), FullType(Completetrigger), FullType(Setvaluetrigger), FullType(Copyvaluetrigger), FullType(Skiptrigger), FullType(Runexpressiontrigger), ]);
    anyOfDataSrc = serialized;
    result.anyOf = serializers.deserialize(anyOfDataSrc, specifiedType: targetType) as AnyOf;
    return result.build();
  }
}

