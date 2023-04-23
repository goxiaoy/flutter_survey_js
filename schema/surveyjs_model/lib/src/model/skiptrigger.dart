//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:surveyjs_model/src/model/surveytrigger.dart';
import 'package:surveyjs_model/src/model/skiptrigger_all_of.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'skiptrigger.g.dart';

/// Skiptrigger
///
/// Properties:
/// * [operator_] 
/// * [value] 
/// * [expression] 
/// * [name] 
/// * [gotoName] 
@BuiltValue()
abstract class Skiptrigger implements SkiptriggerAllOf, Surveytrigger, Built<Skiptrigger, SkiptriggerBuilder> {
  Skiptrigger._();

  factory Skiptrigger([void updates(SkiptriggerBuilder b)]) = _$Skiptrigger;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(SkiptriggerBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<Skiptrigger> get serializer => _$SkiptriggerSerializer();
}

class _$SkiptriggerSerializer implements PrimitiveSerializer<Skiptrigger> {
  @override
  final Iterable<Type> types = const [Skiptrigger, _$Skiptrigger];

  @override
  final String wireName = r'Skiptrigger';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    Skiptrigger object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.name != null) {
      yield r'name';
      yield serializers.serialize(
        object.name,
        specifiedType: const FullType(String),
      );
    }
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
    if (object.value != null) {
      yield r'value';
      yield serializers.serialize(
        object.value,
        specifiedType: const FullType(String),
      );
    }
    if (object.gotoName != null) {
      yield r'gotoName';
      yield serializers.serialize(
        object.gotoName,
        specifiedType: const FullType(String),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    Skiptrigger object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required SkiptriggerBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'name':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.name = valueDes;
          break;
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
        case r'value':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.value = valueDes;
          break;
        case r'gotoName':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.gotoName = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  Skiptrigger deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = SkiptriggerBuilder();
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

