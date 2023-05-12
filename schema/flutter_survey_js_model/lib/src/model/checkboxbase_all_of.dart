//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:flutter_survey_js_model/src/model/checkboxbase_col_count.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'checkboxbase_all_of.g.dart';

/// CheckboxbaseAllOf
///
/// Properties:
/// * [colCount] 
@BuiltValue(instantiable: false)
abstract class CheckboxbaseAllOf  {
  @BuiltValueField(wireName: r'colCount')
  CheckboxbaseColCount? get colCount;
  // enum colCountEnum {  0,  1,  2,  3,  4,  5,  };

  @BuiltValueSerializer(custom: true)
  static Serializer<CheckboxbaseAllOf> get serializer => _$CheckboxbaseAllOfSerializer();
}

class _$CheckboxbaseAllOfSerializer implements PrimitiveSerializer<CheckboxbaseAllOf> {
  @override
  final Iterable<Type> types = const [CheckboxbaseAllOf];

  @override
  final String wireName = r'CheckboxbaseAllOf';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    CheckboxbaseAllOf object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
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
    CheckboxbaseAllOf object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  @override
  CheckboxbaseAllOf deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return serializers.deserialize(serialized, specifiedType: FullType($CheckboxbaseAllOf)) as $CheckboxbaseAllOf;
  }
}

/// a concrete implementation of [CheckboxbaseAllOf], since [CheckboxbaseAllOf] is not instantiable
@BuiltValue(instantiable: true)
abstract class $CheckboxbaseAllOf implements CheckboxbaseAllOf, Built<$CheckboxbaseAllOf, $CheckboxbaseAllOfBuilder> {
  $CheckboxbaseAllOf._();

  factory $CheckboxbaseAllOf([void Function($CheckboxbaseAllOfBuilder)? updates]) = _$$CheckboxbaseAllOf;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults($CheckboxbaseAllOfBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<$CheckboxbaseAllOf> get serializer => _$$CheckboxbaseAllOfSerializer();
}

class _$$CheckboxbaseAllOfSerializer implements PrimitiveSerializer<$CheckboxbaseAllOf> {
  @override
  final Iterable<Type> types = const [$CheckboxbaseAllOf, _$$CheckboxbaseAllOf];

  @override
  final String wireName = r'$CheckboxbaseAllOf';

  @override
  Object serialize(
    Serializers serializers,
    $CheckboxbaseAllOf object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return serializers.serialize(object, specifiedType: FullType(CheckboxbaseAllOf))!;
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required CheckboxbaseAllOfBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
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
  $CheckboxbaseAllOf deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = $CheckboxbaseAllOfBuilder();
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

