//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:flutter_survey_js_model/src/model/surveytrigger.dart';
import 'package:flutter_survey_js_model/src/model/copyvaluetrigger_all_of.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'copyvaluetrigger.g.dart';

/// Copyvaluetrigger
///
/// Properties:
/// * [operator_] 
/// * [value] 
/// * [expression] 
/// * [name] 
/// * [fromName] 
/// * [setToName] 
@BuiltValue()
abstract class Copyvaluetrigger implements CopyvaluetriggerAllOf, Surveytrigger, Built<Copyvaluetrigger, CopyvaluetriggerBuilder> {
  Copyvaluetrigger._();

  factory Copyvaluetrigger([void updates(CopyvaluetriggerBuilder b)]) = _$Copyvaluetrigger;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(CopyvaluetriggerBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<Copyvaluetrigger> get serializer => _$CopyvaluetriggerSerializer();
}

class _$CopyvaluetriggerSerializer implements PrimitiveSerializer<Copyvaluetrigger> {
  @override
  final Iterable<Type> types = const [Copyvaluetrigger, _$Copyvaluetrigger];

  @override
  final String wireName = r'Copyvaluetrigger';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    Copyvaluetrigger object, {
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
    if (object.name != null) {
      yield r'name';
      yield serializers.serialize(
        object.name,
        specifiedType: const FullType(String),
      );
    }
    if (object.fromName != null) {
      yield r'fromName';
      yield serializers.serialize(
        object.fromName,
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
    Copyvaluetrigger object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required CopyvaluetriggerBuilder result,
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
        case r'name':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.name = valueDes;
          break;
        case r'fromName':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.fromName = valueDes;
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
  Copyvaluetrigger deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = CopyvaluetriggerBuilder();
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

