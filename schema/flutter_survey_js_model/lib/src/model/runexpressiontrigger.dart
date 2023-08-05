//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:flutter_survey_js_model/src/model/surveytrigger.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'runexpressiontrigger.g.dart';

/// Runexpressiontrigger
///
/// Properties:
/// * [operator_] 
/// * [value] 
/// * [expression] 
/// * [type] 
/// * [name] 
/// * [setToName] 
/// * [runExpression] 
@BuiltValue()
abstract class Runexpressiontrigger implements Surveytrigger, Built<Runexpressiontrigger, RunexpressiontriggerBuilder> {
  @BuiltValueField(wireName: r'setToName')
  String? get setToName;

  @BuiltValueField(wireName: r'runExpression')
  String? get runExpression;

  Runexpressiontrigger._();

  factory Runexpressiontrigger([void updates(RunexpressiontriggerBuilder b)]) = _$Runexpressiontrigger;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(RunexpressiontriggerBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<Runexpressiontrigger> get serializer => _$RunexpressiontriggerSerializer();
}

class _$RunexpressiontriggerSerializer implements PrimitiveSerializer<Runexpressiontrigger> {
  @override
  final Iterable<Type> types = const [Runexpressiontrigger, _$Runexpressiontrigger];

  @override
  final String wireName = r'Runexpressiontrigger';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    Runexpressiontrigger object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.operator_ != null) {
      yield r'operator';
      yield serializers.serialize(
        object.operator_,
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
    if (object.setToName != null) {
      yield r'setToName';
      yield serializers.serialize(
        object.setToName,
        specifiedType: const FullType(String),
      );
    }
    if (object.runExpression != null) {
      yield r'runExpression';
      yield serializers.serialize(
        object.runExpression,
        specifiedType: const FullType(String),
      );
    }
    if (object.name != null) {
      yield r'name';
      yield serializers.serialize(
        object.name,
        specifiedType: const FullType(String),
      );
    }
    if (object.type != null) {
      yield r'type';
      yield serializers.serialize(
        object.type,
        specifiedType: const FullType(String),
      );
    }
    if (object.value != null) {
      yield r'value';
      yield serializers.serialize(
        object.value,
        specifiedType: const FullType(String),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    Runexpressiontrigger object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required RunexpressiontriggerBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'operator':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.operator_ = valueDes;
          break;
        case r'expression':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.expression = valueDes;
          break;
        case r'setToName':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.setToName = valueDes;
          break;
        case r'runExpression':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.runExpression = valueDes;
          break;
        case r'name':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.name = valueDes;
          break;
        case r'type':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.type = valueDes;
          break;
        case r'value':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.value = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  Runexpressiontrigger deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = RunexpressiontriggerBuilder();
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

