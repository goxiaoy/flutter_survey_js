//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:flutter_survey_js_model/src/model/runexpressiontrigger.dart';
import 'package:flutter_survey_js_model/src/model/setvaluetrigger.dart';
import 'package:flutter_survey_js_model/src/model/completetrigger.dart';
import 'package:built_collection/built_collection.dart';
import 'package:flutter_survey_js_model/src/model/copyvaluetrigger.dart';
import 'package:flutter_survey_js_model/src/model/skiptrigger.dart';
import 'package:flutter_survey_js_model/src/model/surveytrigger.dart';
import 'package:flutter_survey_js_model/src/model/visibletrigger.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:one_of/any_of.dart';

part 'survey_triggers_inner.g.dart';

/// SurveyTriggersInner
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
abstract class SurveyTriggersInner implements Built<SurveyTriggersInner, SurveyTriggersInnerBuilder> {
  /// Any Of [Completetrigger], [Copyvaluetrigger], [Runexpressiontrigger], [Setvaluetrigger], [Skiptrigger], [Surveytrigger], [Visibletrigger]
  AnyOf get anyOf;

  SurveyTriggersInner._();

  factory SurveyTriggersInner([void updates(SurveyTriggersInnerBuilder b)]) = _$SurveyTriggersInner;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(SurveyTriggersInnerBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<SurveyTriggersInner> get serializer => _$SurveyTriggersInnerSerializer();
}

class _$SurveyTriggersInnerSerializer implements PrimitiveSerializer<SurveyTriggersInner> {
  @override
  final Iterable<Type> types = const [SurveyTriggersInner, _$SurveyTriggersInner];

  @override
  final String wireName = r'SurveyTriggersInner';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    SurveyTriggersInner object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
  }

  @override
  Object serialize(
    Serializers serializers,
    SurveyTriggersInner object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final anyOf = object.anyOf;
    return serializers.serialize(anyOf, specifiedType: FullType(AnyOf, anyOf.valueTypes.map((type) => FullType(type)).toList()))!;
  }

  @override
  SurveyTriggersInner deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = SurveyTriggersInnerBuilder();
    Object? anyOfDataSrc;
    final targetType = const FullType(AnyOf, [FullType(Visibletrigger), FullType(Completetrigger), FullType(Setvaluetrigger), FullType(Copyvaluetrigger), FullType(Skiptrigger), FullType(Runexpressiontrigger), FullType(Surveytrigger), ]);
    anyOfDataSrc = serialized;
    result.anyOf = serializers.deserialize(anyOfDataSrc, specifiedType: targetType) as AnyOf;
    return result.build();
  }
}

