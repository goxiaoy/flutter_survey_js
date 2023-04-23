//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:surveyjs_model/src/model/trigger.dart';
import 'package:surveyjs_model/src/model/surveytrigger_all_of.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'surveytrigger.g.dart';

/// Surveytrigger
///
/// Properties:
/// * [operator_] 
/// * [value] 
/// * [expression] 
/// * [name] 
@BuiltValue(instantiable: false)
abstract class Surveytrigger implements SurveytriggerAllOf, Trigger {
  @BuiltValueSerializer(custom: true)
  static Serializer<Surveytrigger> get serializer => _$SurveytriggerSerializer();
}

class _$SurveytriggerSerializer implements PrimitiveSerializer<Surveytrigger> {
  @override
  final Iterable<Type> types = const [Surveytrigger];

  @override
  final String wireName = r'Surveytrigger';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    Surveytrigger object, {
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
  }

  @override
  Object serialize(
    Serializers serializers,
    Surveytrigger object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  @override
  Surveytrigger deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return serializers.deserialize(serialized, specifiedType: FullType($Surveytrigger)) as $Surveytrigger;
  }
}

/// a concrete implementation of [Surveytrigger], since [Surveytrigger] is not instantiable
@BuiltValue(instantiable: true)
abstract class $Surveytrigger implements Surveytrigger, Built<$Surveytrigger, $SurveytriggerBuilder> {
  $Surveytrigger._();

  factory $Surveytrigger([void Function($SurveytriggerBuilder)? updates]) = _$$Surveytrigger;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults($SurveytriggerBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<$Surveytrigger> get serializer => _$$SurveytriggerSerializer();
}

class _$$SurveytriggerSerializer implements PrimitiveSerializer<$Surveytrigger> {
  @override
  final Iterable<Type> types = const [$Surveytrigger, _$$Surveytrigger];

  @override
  final String wireName = r'$Surveytrigger';

  @override
  Object serialize(
    Serializers serializers,
    $Surveytrigger object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return serializers.serialize(object, specifiedType: FullType(Surveytrigger))!;
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required SurveytriggerBuilder result,
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
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  $Surveytrigger deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = $SurveytriggerBuilder();
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

