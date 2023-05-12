//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:flutter_survey_js_model/src/model/selectbase_all_of_choices_inner.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'buttongroup_all_of.g.dart';

/// ButtongroupAllOf
///
/// Properties:
/// * [choices] 
@BuiltValue(instantiable: false)
abstract class ButtongroupAllOf  {
  @BuiltValueField(wireName: r'choices')
  BuiltList<SelectbaseAllOfChoicesInner>? get choices;

  @BuiltValueSerializer(custom: true)
  static Serializer<ButtongroupAllOf> get serializer => _$ButtongroupAllOfSerializer();
}

class _$ButtongroupAllOfSerializer implements PrimitiveSerializer<ButtongroupAllOf> {
  @override
  final Iterable<Type> types = const [ButtongroupAllOf];

  @override
  final String wireName = r'ButtongroupAllOf';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    ButtongroupAllOf object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.choices != null) {
      yield r'choices';
      yield serializers.serialize(
        object.choices,
        specifiedType: const FullType(BuiltList, [FullType(SelectbaseAllOfChoicesInner)]),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    ButtongroupAllOf object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  @override
  ButtongroupAllOf deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return serializers.deserialize(serialized, specifiedType: FullType($ButtongroupAllOf)) as $ButtongroupAllOf;
  }
}

/// a concrete implementation of [ButtongroupAllOf], since [ButtongroupAllOf] is not instantiable
@BuiltValue(instantiable: true)
abstract class $ButtongroupAllOf implements ButtongroupAllOf, Built<$ButtongroupAllOf, $ButtongroupAllOfBuilder> {
  $ButtongroupAllOf._();

  factory $ButtongroupAllOf([void Function($ButtongroupAllOfBuilder)? updates]) = _$$ButtongroupAllOf;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults($ButtongroupAllOfBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<$ButtongroupAllOf> get serializer => _$$ButtongroupAllOfSerializer();
}

class _$$ButtongroupAllOfSerializer implements PrimitiveSerializer<$ButtongroupAllOf> {
  @override
  final Iterable<Type> types = const [$ButtongroupAllOf, _$$ButtongroupAllOf];

  @override
  final String wireName = r'$ButtongroupAllOf';

  @override
  Object serialize(
    Serializers serializers,
    $ButtongroupAllOf object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return serializers.serialize(object, specifiedType: FullType(ButtongroupAllOf))!;
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required ButtongroupAllOfBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'choices':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(BuiltList, [FullType(SelectbaseAllOfChoicesInner)]),
          ) as BuiltList<SelectbaseAllOfChoicesInner>;
          result.choices.replace(valueDes);
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  $ButtongroupAllOf deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = $ButtongroupAllOfBuilder();
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

