//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:flutter_survey_js_model/src/model/surveytrigger.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'setvaluetrigger.g.dart';

/// Setvaluetrigger
///
/// Properties:
/// * [operator_] 
/// * [value] 
/// * [expression] 
/// * [type] 
/// * [name] 
/// * [setToName] 
/// * [setValue] 
/// * [isVariable] 
@BuiltValue()
abstract class Setvaluetrigger implements Surveytrigger, Built<Setvaluetrigger, SetvaluetriggerBuilder> {
  @BuiltValueField(wireName: r'setToName')
  String get setToName;

  @BuiltValueField(wireName: r'setValue')
  String? get setValue;

  @BuiltValueField(wireName: r'isVariable')
  bool? get isVariable;

  Setvaluetrigger._();

  factory Setvaluetrigger([void updates(SetvaluetriggerBuilder b)]) = _$Setvaluetrigger;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(SetvaluetriggerBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<Setvaluetrigger> get serializer => _$SetvaluetriggerSerializer();
}

class _$SetvaluetriggerSerializer implements PrimitiveSerializer<Setvaluetrigger> {
  @override
  final Iterable<Type> types = const [Setvaluetrigger, _$Setvaluetrigger];

  @override
  final String wireName = r'Setvaluetrigger';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    Setvaluetrigger object, {
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
    yield r'setToName';
    yield serializers.serialize(
      object.setToName,
      specifiedType: const FullType(String),
    );
    if (object.setValue != null) {
      yield r'setValue';
      yield serializers.serialize(
        object.setValue,
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
    if (object.isVariable != null) {
      yield r'isVariable';
      yield serializers.serialize(
        object.isVariable,
        specifiedType: const FullType(bool),
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
    Setvaluetrigger object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required SetvaluetriggerBuilder result,
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
        case r'setValue':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.setValue = valueDes;
          break;
        case r'name':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.name = valueDes;
          break;
        case r'isVariable':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool;
          result.isVariable = valueDes;
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
  Setvaluetrigger deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = SetvaluetriggerBuilder();
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

