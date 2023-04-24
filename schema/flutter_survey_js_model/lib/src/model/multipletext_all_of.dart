//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:flutter_survey_js_model/src/model/multipletextitem.dart';
import 'package:built_collection/built_collection.dart';
import 'package:flutter_survey_js_model/src/model/checkboxbase_col_count.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'multipletext_all_of.g.dart';

/// MultipletextAllOf
///
/// Properties:
/// * [items] 
/// * [itemSize] 
/// * [colCount] 
@BuiltValue(instantiable: false)
abstract class MultipletextAllOf  {
  @BuiltValueField(wireName: r'items')
  BuiltList<Multipletextitem>? get items;

  @BuiltValueField(wireName: r'itemSize')
  num? get itemSize;

  @BuiltValueField(wireName: r'colCount')
  CheckboxbaseColCount? get colCount;
  // enum colCountEnum {  0,  1,  2,  3,  4,  5,  };

  @BuiltValueSerializer(custom: true)
  static Serializer<MultipletextAllOf> get serializer => _$MultipletextAllOfSerializer();
}

class _$MultipletextAllOfSerializer implements PrimitiveSerializer<MultipletextAllOf> {
  @override
  final Iterable<Type> types = const [MultipletextAllOf];

  @override
  final String wireName = r'MultipletextAllOf';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    MultipletextAllOf object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.items != null) {
      yield r'items';
      yield serializers.serialize(
        object.items,
        specifiedType: const FullType(BuiltList, [FullType(Multipletextitem)]),
      );
    }
    if (object.itemSize != null) {
      yield r'itemSize';
      yield serializers.serialize(
        object.itemSize,
        specifiedType: const FullType(num),
      );
    }
    if (object.colCount != null) {
      yield r'colCount';
      yield serializers.serialize(
        object.colCount,
        specifiedType: const FullType(CheckboxbaseColCount),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    MultipletextAllOf object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  @override
  MultipletextAllOf deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return serializers.deserialize(serialized, specifiedType: FullType($MultipletextAllOf)) as $MultipletextAllOf;
  }
}

/// a concrete implementation of [MultipletextAllOf], since [MultipletextAllOf] is not instantiable
@BuiltValue(instantiable: true)
abstract class $MultipletextAllOf implements MultipletextAllOf, Built<$MultipletextAllOf, $MultipletextAllOfBuilder> {
  $MultipletextAllOf._();

  factory $MultipletextAllOf([void Function($MultipletextAllOfBuilder)? updates]) = _$$MultipletextAllOf;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults($MultipletextAllOfBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<$MultipletextAllOf> get serializer => _$$MultipletextAllOfSerializer();
}

class _$$MultipletextAllOfSerializer implements PrimitiveSerializer<$MultipletextAllOf> {
  @override
  final Iterable<Type> types = const [$MultipletextAllOf, _$$MultipletextAllOf];

  @override
  final String wireName = r'$MultipletextAllOf';

  @override
  Object serialize(
    Serializers serializers,
    $MultipletextAllOf object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return serializers.serialize(object, specifiedType: FullType(MultipletextAllOf))!;
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required MultipletextAllOfBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'items':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(BuiltList, [FullType(Multipletextitem)]),
          ) as BuiltList<Multipletextitem>;
          result.items.replace(valueDes);
          break;
        case r'itemSize':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(num),
          ) as num;
          result.itemSize = valueDes;
          break;
        case r'colCount':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(CheckboxbaseColCount),
          ) as CheckboxbaseColCount;
          result.colCount = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  $MultipletextAllOf deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = $MultipletextAllOfBuilder();
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

