//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'checkbox_all_of.g.dart';

/// CheckboxAllOf
///
/// Properties:
/// * [showSelectAllItem] 
/// * [separateSpecialChoices] 
/// * [maxSelectedChoices] 
/// * [selectAllText] 
/// * [valuePropertyName] 
/// * [itemComponent] 
@BuiltValue(instantiable: false)
abstract class CheckboxAllOf  {
  @BuiltValueField(wireName: r'showSelectAllItem')
  bool? get showSelectAllItem;

  @BuiltValueField(wireName: r'separateSpecialChoices')
  bool? get separateSpecialChoices;

  @BuiltValueField(wireName: r'maxSelectedChoices')
  num? get maxSelectedChoices;

  @BuiltValueField(wireName: r'selectAllText')
  String? get selectAllText;

  @BuiltValueField(wireName: r'valuePropertyName')
  String? get valuePropertyName;

  @BuiltValueField(wireName: r'itemComponent')
  String? get itemComponent;

  @BuiltValueSerializer(custom: true)
  static Serializer<CheckboxAllOf> get serializer => _$CheckboxAllOfSerializer();
}

class _$CheckboxAllOfSerializer implements PrimitiveSerializer<CheckboxAllOf> {
  @override
  final Iterable<Type> types = const [CheckboxAllOf];

  @override
  final String wireName = r'CheckboxAllOf';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    CheckboxAllOf object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.showSelectAllItem != null) {
      yield r'showSelectAllItem';
      yield serializers.serialize(
        object.showSelectAllItem,
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
    if (object.maxSelectedChoices != null) {
      yield r'maxSelectedChoices';
      yield serializers.serialize(
        object.maxSelectedChoices,
        specifiedType: const FullType(num),
      );
    }
    if (object.selectAllText != null) {
      yield r'selectAllText';
      yield serializers.serialize(
        object.selectAllText,
        specifiedType: const FullType(String),
      );
    }
    if (object.valuePropertyName != null) {
      yield r'valuePropertyName';
      yield serializers.serialize(
        object.valuePropertyName,
        specifiedType: const FullType(String),
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
    CheckboxAllOf object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  @override
  CheckboxAllOf deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return serializers.deserialize(serialized, specifiedType: FullType($CheckboxAllOf)) as $CheckboxAllOf;
  }
}

/// a concrete implementation of [CheckboxAllOf], since [CheckboxAllOf] is not instantiable
@BuiltValue(instantiable: true)
abstract class $CheckboxAllOf implements CheckboxAllOf, Built<$CheckboxAllOf, $CheckboxAllOfBuilder> {
  $CheckboxAllOf._();

  factory $CheckboxAllOf([void Function($CheckboxAllOfBuilder)? updates]) = _$$CheckboxAllOf;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults($CheckboxAllOfBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<$CheckboxAllOf> get serializer => _$$CheckboxAllOfSerializer();
}

class _$$CheckboxAllOfSerializer implements PrimitiveSerializer<$CheckboxAllOf> {
  @override
  final Iterable<Type> types = const [$CheckboxAllOf, _$$CheckboxAllOf];

  @override
  final String wireName = r'$CheckboxAllOf';

  @override
  Object serialize(
    Serializers serializers,
    $CheckboxAllOf object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return serializers.serialize(object, specifiedType: FullType(CheckboxAllOf))!;
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required CheckboxAllOfBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'showSelectAllItem':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool;
          result.showSelectAllItem = valueDes;
          break;
        case r'separateSpecialChoices':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool;
          result.separateSpecialChoices = valueDes;
          break;
        case r'maxSelectedChoices':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(num),
          ) as num;
          result.maxSelectedChoices = valueDes;
          break;
        case r'selectAllText':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.selectAllText = valueDes;
          break;
        case r'valuePropertyName':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.valuePropertyName = valueDes;
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
  $CheckboxAllOf deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = $CheckboxAllOfBuilder();
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

