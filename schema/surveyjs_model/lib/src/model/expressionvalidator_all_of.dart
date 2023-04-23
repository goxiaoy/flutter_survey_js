//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'expressionvalidator_all_of.g.dart';

/// ExpressionvalidatorAllOf
///
/// Properties:
/// * [expression] 
@BuiltValue(instantiable: false)
abstract class ExpressionvalidatorAllOf  {
  @BuiltValueField(wireName: r'expression')
  String? get expression;

  @BuiltValueSerializer(custom: true)
  static Serializer<ExpressionvalidatorAllOf> get serializer => _$ExpressionvalidatorAllOfSerializer();
}

class _$ExpressionvalidatorAllOfSerializer implements PrimitiveSerializer<ExpressionvalidatorAllOf> {
  @override
  final Iterable<Type> types = const [ExpressionvalidatorAllOf];

  @override
  final String wireName = r'ExpressionvalidatorAllOf';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    ExpressionvalidatorAllOf object, {
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
    ExpressionvalidatorAllOf object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  @override
  ExpressionvalidatorAllOf deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return serializers.deserialize(serialized, specifiedType: FullType($ExpressionvalidatorAllOf)) as $ExpressionvalidatorAllOf;
  }
}

/// a concrete implementation of [ExpressionvalidatorAllOf], since [ExpressionvalidatorAllOf] is not instantiable
@BuiltValue(instantiable: true)
abstract class $ExpressionvalidatorAllOf implements ExpressionvalidatorAllOf, Built<$ExpressionvalidatorAllOf, $ExpressionvalidatorAllOfBuilder> {
  $ExpressionvalidatorAllOf._();

  factory $ExpressionvalidatorAllOf([void Function($ExpressionvalidatorAllOfBuilder)? updates]) = _$$ExpressionvalidatorAllOf;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults($ExpressionvalidatorAllOfBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<$ExpressionvalidatorAllOf> get serializer => _$$ExpressionvalidatorAllOfSerializer();
}

class _$$ExpressionvalidatorAllOfSerializer implements PrimitiveSerializer<$ExpressionvalidatorAllOf> {
  @override
  final Iterable<Type> types = const [$ExpressionvalidatorAllOf, _$$ExpressionvalidatorAllOf];

  @override
  final String wireName = r'$ExpressionvalidatorAllOf';

  @override
  Object serialize(
    Serializers serializers,
    $ExpressionvalidatorAllOf object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return serializers.serialize(object, specifiedType: FullType(ExpressionvalidatorAllOf))!;
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required ExpressionvalidatorAllOfBuilder result,
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
  $ExpressionvalidatorAllOf deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = $ExpressionvalidatorAllOfBuilder();
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

