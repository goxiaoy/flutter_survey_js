//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'tagbox_all_of.g.dart';

/// TagboxAllOf
///
/// Properties:
/// * [placeholder] 
/// * [allowClear] 
/// * [searchEnabled] 
/// * [choicesLazyLoadEnabled] 
/// * [choicesLazyLoadPageSize] 
/// * [hideSelectedItems] 
/// * [closeOnSelect] 
/// * [itemComponent] 
@BuiltValue(instantiable: false)
abstract class TagboxAllOf  {
  @BuiltValueField(wireName: r'placeholder')
  String? get placeholder;

  @BuiltValueField(wireName: r'allowClear')
  bool? get allowClear;

  @BuiltValueField(wireName: r'searchEnabled')
  bool? get searchEnabled;

  @BuiltValueField(wireName: r'choicesLazyLoadEnabled')
  bool? get choicesLazyLoadEnabled;

  @BuiltValueField(wireName: r'choicesLazyLoadPageSize')
  num? get choicesLazyLoadPageSize;

  @BuiltValueField(wireName: r'hideSelectedItems')
  bool? get hideSelectedItems;

  @BuiltValueField(wireName: r'closeOnSelect')
  bool? get closeOnSelect;

  @BuiltValueField(wireName: r'itemComponent')
  String? get itemComponent;

  @BuiltValueSerializer(custom: true)
  static Serializer<TagboxAllOf> get serializer => _$TagboxAllOfSerializer();
}

class _$TagboxAllOfSerializer implements PrimitiveSerializer<TagboxAllOf> {
  @override
  final Iterable<Type> types = const [TagboxAllOf];

  @override
  final String wireName = r'TagboxAllOf';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    TagboxAllOf object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.placeholder != null) {
      yield r'placeholder';
      yield serializers.serialize(
        object.placeholder,
        specifiedType: const FullType(String),
      );
    }
    if (object.allowClear != null) {
      yield r'allowClear';
      yield serializers.serialize(
        object.allowClear,
        specifiedType: const FullType(bool),
      );
    }
    if (object.searchEnabled != null) {
      yield r'searchEnabled';
      yield serializers.serialize(
        object.searchEnabled,
        specifiedType: const FullType(bool),
      );
    }
    if (object.choicesLazyLoadEnabled != null) {
      yield r'choicesLazyLoadEnabled';
      yield serializers.serialize(
        object.choicesLazyLoadEnabled,
        specifiedType: const FullType(bool),
      );
    }
    if (object.choicesLazyLoadPageSize != null) {
      yield r'choicesLazyLoadPageSize';
      yield serializers.serialize(
        object.choicesLazyLoadPageSize,
        specifiedType: const FullType(num),
      );
    }
    if (object.hideSelectedItems != null) {
      yield r'hideSelectedItems';
      yield serializers.serialize(
        object.hideSelectedItems,
        specifiedType: const FullType(bool),
      );
    }
    if (object.closeOnSelect != null) {
      yield r'closeOnSelect';
      yield serializers.serialize(
        object.closeOnSelect,
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
    TagboxAllOf object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  @override
  TagboxAllOf deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return serializers.deserialize(serialized, specifiedType: FullType($TagboxAllOf)) as $TagboxAllOf;
  }
}

/// a concrete implementation of [TagboxAllOf], since [TagboxAllOf] is not instantiable
@BuiltValue(instantiable: true)
abstract class $TagboxAllOf implements TagboxAllOf, Built<$TagboxAllOf, $TagboxAllOfBuilder> {
  $TagboxAllOf._();

  factory $TagboxAllOf([void Function($TagboxAllOfBuilder)? updates]) = _$$TagboxAllOf;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults($TagboxAllOfBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<$TagboxAllOf> get serializer => _$$TagboxAllOfSerializer();
}

class _$$TagboxAllOfSerializer implements PrimitiveSerializer<$TagboxAllOf> {
  @override
  final Iterable<Type> types = const [$TagboxAllOf, _$$TagboxAllOf];

  @override
  final String wireName = r'$TagboxAllOf';

  @override
  Object serialize(
    Serializers serializers,
    $TagboxAllOf object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return serializers.serialize(object, specifiedType: FullType(TagboxAllOf))!;
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required TagboxAllOfBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'placeholder':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.placeholder = valueDes;
          break;
        case r'allowClear':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool;
          result.allowClear = valueDes;
          break;
        case r'searchEnabled':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool;
          result.searchEnabled = valueDes;
          break;
        case r'choicesLazyLoadEnabled':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool;
          result.choicesLazyLoadEnabled = valueDes;
          break;
        case r'choicesLazyLoadPageSize':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(num),
          ) as num;
          result.choicesLazyLoadPageSize = valueDes;
          break;
        case r'hideSelectedItems':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool;
          result.hideSelectedItems = valueDes;
          break;
        case r'closeOnSelect':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool;
          result.closeOnSelect = valueDes;
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
  $TagboxAllOf deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = $TagboxAllOfBuilder();
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

