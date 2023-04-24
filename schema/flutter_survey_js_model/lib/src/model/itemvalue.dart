//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'itemvalue.g.dart';

/// Itemvalue
///
/// Properties:
/// * [value] 
/// * [text] 
/// * [visibleIf] 
/// * [enableIf] 
@BuiltValue(instantiable: false)
abstract class Itemvalue  {
  @BuiltValueField(wireName: r'value')
  String? get value;

  @BuiltValueField(wireName: r'text')
  String? get text;

  @BuiltValueField(wireName: r'visibleIf')
  String? get visibleIf;

  @BuiltValueField(wireName: r'enableIf')
  String? get enableIf;

  @BuiltValueSerializer(custom: true)
  static Serializer<Itemvalue> get serializer => _$ItemvalueSerializer();
}

class _$ItemvalueSerializer implements PrimitiveSerializer<Itemvalue> {
  @override
  final Iterable<Type> types = const [Itemvalue];

  @override
  final String wireName = r'Itemvalue';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    Itemvalue object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.value != null) {
      yield r'value';
      yield serializers.serialize(
        object.value,
        specifiedType: const FullType(String),
      );
    }
    if (object.text != null) {
      yield r'text';
      yield serializers.serialize(
        object.text,
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
    if (object.enableIf != null) {
      yield r'enableIf';
      yield serializers.serialize(
        object.enableIf,
        specifiedType: const FullType(String),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    Itemvalue object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  @override
  Itemvalue deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return serializers.deserialize(serialized, specifiedType: FullType($Itemvalue)) as $Itemvalue;
  }
}

/// a concrete implementation of [Itemvalue], since [Itemvalue] is not instantiable
@BuiltValue(instantiable: true)
abstract class $Itemvalue implements Itemvalue, Built<$Itemvalue, $ItemvalueBuilder> {
  $Itemvalue._();

  factory $Itemvalue([void Function($ItemvalueBuilder)? updates]) = _$$Itemvalue;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults($ItemvalueBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<$Itemvalue> get serializer => _$$ItemvalueSerializer();
}

class _$$ItemvalueSerializer implements PrimitiveSerializer<$Itemvalue> {
  @override
  final Iterable<Type> types = const [$Itemvalue, _$$Itemvalue];

  @override
  final String wireName = r'$Itemvalue';

  @override
  Object serialize(
    Serializers serializers,
    $Itemvalue object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return serializers.serialize(object, specifiedType: FullType(Itemvalue))!;
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required ItemvalueBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'value':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.value = valueDes;
          break;
        case r'text':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.text = valueDes;
          break;
        case r'visibleIf':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.visibleIf = valueDes;
          break;
        case r'enableIf':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.enableIf = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  $Itemvalue deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = $ItemvalueBuilder();
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

