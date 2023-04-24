//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:flutter_survey_js_model/src/model/itemvalue.dart';
import 'package:flutter_survey_js_model/src/model/buttongroupitemvalue_all_of.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'buttongroupitemvalue.g.dart';

/// Buttongroupitemvalue
///
/// Properties:
/// * [value] 
/// * [text] 
/// * [visibleIf] 
/// * [enableIf] 
/// * [showCaption] 
/// * [iconName] 
/// * [iconSize] 
@BuiltValue()
abstract class Buttongroupitemvalue implements ButtongroupitemvalueAllOf, Itemvalue, Built<Buttongroupitemvalue, ButtongroupitemvalueBuilder> {
  Buttongroupitemvalue._();

  factory Buttongroupitemvalue([void updates(ButtongroupitemvalueBuilder b)]) = _$Buttongroupitemvalue;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(ButtongroupitemvalueBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<Buttongroupitemvalue> get serializer => _$ButtongroupitemvalueSerializer();
}

class _$ButtongroupitemvalueSerializer implements PrimitiveSerializer<Buttongroupitemvalue> {
  @override
  final Iterable<Type> types = const [Buttongroupitemvalue, _$Buttongroupitemvalue];

  @override
  final String wireName = r'Buttongroupitemvalue';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    Buttongroupitemvalue object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.enableIf != null) {
      yield r'enableIf';
      yield serializers.serialize(
        object.enableIf,
        specifiedType: const FullType(String),
      );
    }
    if (object.iconName != null) {
      yield r'iconName';
      yield serializers.serialize(
        object.iconName,
        specifiedType: const FullType(String),
      );
    }
    if (object.visibleIf != null) {
      yield r'visibleIf';
      yield serializers.serialize(
        object.visibleIf,
        specifiedType: const FullType(String),
      );
    }
    if (object.iconSize != null) {
      yield r'iconSize';
      yield serializers.serialize(
        object.iconSize,
        specifiedType: const FullType(num),
      );
    }
    if (object.text != null) {
      yield r'text';
      yield serializers.serialize(
        object.text,
        specifiedType: const FullType(String),
      );
    }
    if (object.showCaption != null) {
      yield r'showCaption';
      yield serializers.serialize(
        object.showCaption,
        specifiedType: const FullType(bool),
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
    Buttongroupitemvalue object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required ButtongroupitemvalueBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'enableIf':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.enableIf = valueDes;
          break;
        case r'iconName':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.iconName = valueDes;
          break;
        case r'visibleIf':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.visibleIf = valueDes;
          break;
        case r'iconSize':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(num),
          ) as num;
          result.iconSize = valueDes;
          break;
        case r'text':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.text = valueDes;
          break;
        case r'showCaption':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool;
          result.showCaption = valueDes;
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
  Buttongroupitemvalue deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = ButtongroupitemvalueBuilder();
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

