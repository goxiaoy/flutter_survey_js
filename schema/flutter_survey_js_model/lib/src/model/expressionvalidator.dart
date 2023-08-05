//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:flutter_survey_js_model/src/model/surveyvalidator.dart';
import 'package:flutter_survey_js_model/src/model/survey_title.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'expressionvalidator.g.dart';

/// Expressionvalidator
///
/// Properties:
/// * [text] 
/// * [type] 
/// * [expression] 
@BuiltValue()
abstract class Expressionvalidator implements Surveyvalidator, Built<Expressionvalidator, ExpressionvalidatorBuilder> {
  @BuiltValueField(wireName: r'expression')
  String? get expression;

  Expressionvalidator._();

  factory Expressionvalidator([void updates(ExpressionvalidatorBuilder b)]) = _$Expressionvalidator;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(ExpressionvalidatorBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<Expressionvalidator> get serializer => _$ExpressionvalidatorSerializer();
}

class _$ExpressionvalidatorSerializer implements PrimitiveSerializer<Expressionvalidator> {
  @override
  final Iterable<Type> types = const [Expressionvalidator, _$Expressionvalidator];

  @override
  final String wireName = r'Expressionvalidator';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    Expressionvalidator object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.type != null) {
      yield r'type';
      yield serializers.serialize(
        object.type,
        specifiedType: const FullType(String),
      );
    }
    if (object.expression != null) {
      yield r'expression';
      yield serializers.serialize(
        object.expression,
        specifiedType: const FullType(String),
      );
    }
    if (object.text != null) {
      yield r'text';
      yield serializers.serialize(
        object.text,
        specifiedType: const FullType(SurveyTitle),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    Expressionvalidator object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required ExpressionvalidatorBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'type':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.type = valueDes;
          break;
        case r'expression':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.expression = valueDes;
          break;
        case r'text':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(SurveyTitle),
          ) as SurveyTitle;
          result.text.replace(valueDes);
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  Expressionvalidator deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = ExpressionvalidatorBuilder();
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

