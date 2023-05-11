//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'buttongroupitemvalue_all_of.g.dart';

/// ButtongroupitemvalueAllOf
///
/// Properties:
/// * [showCaption] 
/// * [iconName] 
/// * [iconSize] 
@BuiltValue(instantiable: false)
abstract class ButtongroupitemvalueAllOf  {
  @BuiltValueField(wireName: r'showCaption')
  bool? get showCaption;

  @BuiltValueField(wireName: r'iconName')
  String? get iconName;

  @BuiltValueField(wireName: r'iconSize')
  num? get iconSize;

  @BuiltValueSerializer(custom: true)
  static Serializer<ButtongroupitemvalueAllOf> get serializer => _$ButtongroupitemvalueAllOfSerializer();
}

class _$ButtongroupitemvalueAllOfSerializer implements PrimitiveSerializer<ButtongroupitemvalueAllOf> {
  @override
  final Iterable<Type> types = const [ButtongroupitemvalueAllOf];

  @override
  final String wireName = r'ButtongroupitemvalueAllOf';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    ButtongroupitemvalueAllOf object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.showCaption != null) {
      yield r'showCaption';
      yield serializers.serialize(
        object.showCaption,
        specifiedType: const FullType(bool),
      );
    }
    if (object.iconName != null) {
      yield r'iconName';
      yield serializers.serialize(
        object.iconName,
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
  }

  @override
  Object serialize(
    Serializers serializers,
    ButtongroupitemvalueAllOf object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  @override
  ButtongroupitemvalueAllOf deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return serializers.deserialize(serialized, specifiedType: FullType($ButtongroupitemvalueAllOf)) as $ButtongroupitemvalueAllOf;
  }
}

/// a concrete implementation of [ButtongroupitemvalueAllOf], since [ButtongroupitemvalueAllOf] is not instantiable
@BuiltValue(instantiable: true)
abstract class $ButtongroupitemvalueAllOf implements ButtongroupitemvalueAllOf, Built<$ButtongroupitemvalueAllOf, $ButtongroupitemvalueAllOfBuilder> {
  $ButtongroupitemvalueAllOf._();

  factory $ButtongroupitemvalueAllOf([void Function($ButtongroupitemvalueAllOfBuilder)? updates]) = _$$ButtongroupitemvalueAllOf;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults($ButtongroupitemvalueAllOfBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<$ButtongroupitemvalueAllOf> get serializer => _$$ButtongroupitemvalueAllOfSerializer();
}

class _$$ButtongroupitemvalueAllOfSerializer implements PrimitiveSerializer<$ButtongroupitemvalueAllOf> {
  @override
  final Iterable<Type> types = const [$ButtongroupitemvalueAllOf, _$$ButtongroupitemvalueAllOf];

  @override
  final String wireName = r'$ButtongroupitemvalueAllOf';

  @override
  Object serialize(
    Serializers serializers,
    $ButtongroupitemvalueAllOf object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return serializers.serialize(object, specifiedType: FullType(ButtongroupitemvalueAllOf))!;
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required ButtongroupitemvalueAllOfBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'showCaption':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool;
          result.showCaption = valueDes;
          break;
        case r'iconName':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.iconName = valueDes;
          break;
        case r'iconSize':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(num),
          ) as num;
          result.iconSize = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  $ButtongroupitemvalueAllOf deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = $ButtongroupitemvalueAllOfBuilder();
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

