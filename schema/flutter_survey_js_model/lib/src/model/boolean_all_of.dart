//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'boolean_all_of.g.dart';

/// BooleanAllOf
///
/// Properties:
/// * [showCommentArea] 
/// * [label] 
/// * [labelTrue] 
/// * [labelFalse] 
/// * [valueTrue] 
/// * [valueFalse] 
/// * [renderAs] 
@BuiltValue(instantiable: false)
abstract class BooleanAllOf  {
  @BuiltValueField(wireName: r'showCommentArea')
  bool? get showCommentArea;

  @BuiltValueField(wireName: r'label')
  String? get label;

  @BuiltValueField(wireName: r'labelTrue')
  String? get labelTrue;

  @BuiltValueField(wireName: r'labelFalse')
  String? get labelFalse;

  @BuiltValueField(wireName: r'valueTrue')
  String? get valueTrue;

  @BuiltValueField(wireName: r'valueFalse')
  String? get valueFalse;

  @BuiltValueField(wireName: r'renderAs')
  String? get renderAs;

  @BuiltValueSerializer(custom: true)
  static Serializer<BooleanAllOf> get serializer => _$BooleanAllOfSerializer();
}

class _$BooleanAllOfSerializer implements PrimitiveSerializer<BooleanAllOf> {
  @override
  final Iterable<Type> types = const [BooleanAllOf];

  @override
  final String wireName = r'BooleanAllOf';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    BooleanAllOf object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.showCommentArea != null) {
      yield r'showCommentArea';
      yield serializers.serialize(
        object.showCommentArea,
        specifiedType: const FullType(bool),
      );
    }
    if (object.label != null) {
      yield r'label';
      yield serializers.serialize(
        object.label,
        specifiedType: const FullType(String),
      );
    }
    if (object.labelTrue != null) {
      yield r'labelTrue';
      yield serializers.serialize(
        object.labelTrue,
        specifiedType: const FullType(String),
      );
    }
    if (object.labelFalse != null) {
      yield r'labelFalse';
      yield serializers.serialize(
        object.labelFalse,
        specifiedType: const FullType(String),
      );
    }
    if (object.valueTrue != null) {
      yield r'valueTrue';
      yield serializers.serialize(
        object.valueTrue,
        specifiedType: const FullType(String),
      );
    }
    if (object.valueFalse != null) {
      yield r'valueFalse';
      yield serializers.serialize(
        object.valueFalse,
        specifiedType: const FullType(String),
      );
    }
    if (object.renderAs != null) {
      yield r'renderAs';
      yield serializers.serialize(
        object.renderAs,
        specifiedType: const FullType(String),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    BooleanAllOf object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  @override
  BooleanAllOf deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return serializers.deserialize(serialized, specifiedType: FullType($BooleanAllOf)) as $BooleanAllOf;
  }
}

/// a concrete implementation of [BooleanAllOf], since [BooleanAllOf] is not instantiable
@BuiltValue(instantiable: true)
abstract class $BooleanAllOf implements BooleanAllOf, Built<$BooleanAllOf, $BooleanAllOfBuilder> {
  $BooleanAllOf._();

  factory $BooleanAllOf([void Function($BooleanAllOfBuilder)? updates]) = _$$BooleanAllOf;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults($BooleanAllOfBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<$BooleanAllOf> get serializer => _$$BooleanAllOfSerializer();
}

class _$$BooleanAllOfSerializer implements PrimitiveSerializer<$BooleanAllOf> {
  @override
  final Iterable<Type> types = const [$BooleanAllOf, _$$BooleanAllOf];

  @override
  final String wireName = r'$BooleanAllOf';

  @override
  Object serialize(
    Serializers serializers,
    $BooleanAllOf object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return serializers.serialize(object, specifiedType: FullType(BooleanAllOf))!;
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required BooleanAllOfBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'showCommentArea':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool;
          result.showCommentArea = valueDes;
          break;
        case r'label':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.label = valueDes;
          break;
        case r'labelTrue':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.labelTrue = valueDes;
          break;
        case r'labelFalse':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.labelFalse = valueDes;
          break;
        case r'valueTrue':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.valueTrue = valueDes;
          break;
        case r'valueFalse':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.valueFalse = valueDes;
          break;
        case r'renderAs':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.renderAs = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  $BooleanAllOf deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = $BooleanAllOfBuilder();
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

