//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'radiogroup_all_of.g.dart';

/// RadiogroupAllOf
///
/// Properties:
/// * [showClearButton] 
/// * [separateSpecialChoices] 
/// * [itemComponent] 
@BuiltValue(instantiable: false)
abstract class RadiogroupAllOf  {
  @BuiltValueField(wireName: r'showClearButton')
  bool? get showClearButton;

  @BuiltValueField(wireName: r'separateSpecialChoices')
  bool? get separateSpecialChoices;

  @BuiltValueField(wireName: r'itemComponent')
  String? get itemComponent;

  @BuiltValueSerializer(custom: true)
  static Serializer<RadiogroupAllOf> get serializer => _$RadiogroupAllOfSerializer();
}

class _$RadiogroupAllOfSerializer implements PrimitiveSerializer<RadiogroupAllOf> {
  @override
  final Iterable<Type> types = const [RadiogroupAllOf];

  @override
  final String wireName = r'RadiogroupAllOf';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    RadiogroupAllOf object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.showClearButton != null) {
      yield r'showClearButton';
      yield serializers.serialize(
        object.showClearButton,
        specifiedType: const FullType(bool),
      );
    }
    if (object.separateSpecialChoices != null) {
      yield r'separateSpecialChoices';
      yield serializers.serialize(
        object.separateSpecialChoices,
        specifiedType: const FullType(bool),
      );
    }
    if (object.itemComponent != null) {
      yield r'itemComponent';
      yield serializers.serialize(
        object.itemComponent,
        specifiedType: const FullType(String),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    RadiogroupAllOf object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  @override
  RadiogroupAllOf deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return serializers.deserialize(serialized, specifiedType: FullType($RadiogroupAllOf)) as $RadiogroupAllOf;
  }
}

/// a concrete implementation of [RadiogroupAllOf], since [RadiogroupAllOf] is not instantiable
@BuiltValue(instantiable: true)
abstract class $RadiogroupAllOf implements RadiogroupAllOf, Built<$RadiogroupAllOf, $RadiogroupAllOfBuilder> {
  $RadiogroupAllOf._();

  factory $RadiogroupAllOf([void Function($RadiogroupAllOfBuilder)? updates]) = _$$RadiogroupAllOf;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults($RadiogroupAllOfBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<$RadiogroupAllOf> get serializer => _$$RadiogroupAllOfSerializer();
}

class _$$RadiogroupAllOfSerializer implements PrimitiveSerializer<$RadiogroupAllOf> {
  @override
  final Iterable<Type> types = const [$RadiogroupAllOf, _$$RadiogroupAllOf];

  @override
  final String wireName = r'$RadiogroupAllOf';

  @override
  Object serialize(
    Serializers serializers,
    $RadiogroupAllOf object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return serializers.serialize(object, specifiedType: FullType(RadiogroupAllOf))!;
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required RadiogroupAllOfBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'showClearButton':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool;
          result.showClearButton = valueDes;
          break;
        case r'separateSpecialChoices':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool;
          result.separateSpecialChoices = valueDes;
          break;
        case r'itemComponent':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.itemComponent = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  $RadiogroupAllOf deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = $RadiogroupAllOfBuilder();
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

