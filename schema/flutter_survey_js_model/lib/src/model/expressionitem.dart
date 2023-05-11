//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'expressionitem.g.dart';

/// Expressionitem
///
/// Properties:
/// * [expression] 
@BuiltValue(instantiable: false)
abstract class Expressionitem  {
  @BuiltValueField(wireName: r'expression')
  String? get expression;

  @BuiltValueSerializer(custom: true)
  static Serializer<Expressionitem> get serializer => _$ExpressionitemSerializer();
}

class _$ExpressionitemSerializer implements PrimitiveSerializer<Expressionitem> {
  @override
  final Iterable<Type> types = const [Expressionitem];

  @override
  final String wireName = r'Expressionitem';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    Expressionitem object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.expression != null) {
      yield r'expression';
      yield serializers.serialize(
        object.expression,
        specifiedType: const FullType(String),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    Expressionitem object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  @override
  Expressionitem deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return serializers.deserialize(serialized, specifiedType: FullType($Expressionitem)) as $Expressionitem;
  }
}

/// a concrete implementation of [Expressionitem], since [Expressionitem] is not instantiable
@BuiltValue(instantiable: true)
abstract class $Expressionitem implements Expressionitem, Built<$Expressionitem, $ExpressionitemBuilder> {
  $Expressionitem._();

  factory $Expressionitem([void Function($ExpressionitemBuilder)? updates]) = _$$Expressionitem;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults($ExpressionitemBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<$Expressionitem> get serializer => _$$ExpressionitemSerializer();
}

class _$$ExpressionitemSerializer implements PrimitiveSerializer<$Expressionitem> {
  @override
  final Iterable<Type> types = const [$Expressionitem, _$$Expressionitem];

  @override
  final String wireName = r'$Expressionitem';

  @override
  Object serialize(
    Serializers serializers,
    $Expressionitem object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return serializers.serialize(object, specifiedType: FullType(Expressionitem))!;
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required ExpressionitemBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'expression':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.expression = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  $Expressionitem deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = $ExpressionitemBuilder();
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

