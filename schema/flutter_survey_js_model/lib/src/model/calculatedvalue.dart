//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'calculatedvalue.g.dart';

/// Calculatedvalue
///
/// Properties:
/// * [name] 
/// * [expression] 
/// * [includeIntoResult] 
@BuiltValue()
abstract class Calculatedvalue implements Built<Calculatedvalue, CalculatedvalueBuilder> {
  @BuiltValueField(wireName: r'name')
  String? get name;

  @BuiltValueField(wireName: r'expression')
  String? get expression;

  @BuiltValueField(wireName: r'includeIntoResult')
  bool? get includeIntoResult;

  Calculatedvalue._();

  factory Calculatedvalue([void updates(CalculatedvalueBuilder b)]) = _$Calculatedvalue;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(CalculatedvalueBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<Calculatedvalue> get serializer => _$CalculatedvalueSerializer();
}

class _$CalculatedvalueSerializer implements PrimitiveSerializer<Calculatedvalue> {
  @override
  final Iterable<Type> types = const [Calculatedvalue, _$Calculatedvalue];

  @override
  final String wireName = r'Calculatedvalue';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    Calculatedvalue object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.name != null) {
      yield r'name';
      yield serializers.serialize(
        object.name,
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
    if (object.includeIntoResult != null) {
      yield r'includeIntoResult';
      yield serializers.serialize(
        object.includeIntoResult,
        specifiedType: const FullType(bool),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    Calculatedvalue object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required CalculatedvalueBuilder result,
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
        case r'expression':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.expression = valueDes;
          break;
        case r'includeIntoResult':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool;
          result.includeIntoResult = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  Calculatedvalue deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = CalculatedvalueBuilder();
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

