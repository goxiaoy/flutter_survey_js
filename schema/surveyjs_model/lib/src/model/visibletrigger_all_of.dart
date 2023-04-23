//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'visibletrigger_all_of.g.dart';

/// VisibletriggerAllOf
///
/// Properties:
/// * [pages] 
/// * [questions] 
@BuiltValue(instantiable: false)
abstract class VisibletriggerAllOf  {
  @BuiltValueField(wireName: r'pages')
  String? get pages;

  @BuiltValueField(wireName: r'questions')
  String? get questions;

  @BuiltValueSerializer(custom: true)
  static Serializer<VisibletriggerAllOf> get serializer => _$VisibletriggerAllOfSerializer();
}

class _$VisibletriggerAllOfSerializer implements PrimitiveSerializer<VisibletriggerAllOf> {
  @override
  final Iterable<Type> types = const [VisibletriggerAllOf];

  @override
  final String wireName = r'VisibletriggerAllOf';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    VisibletriggerAllOf object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.pages != null) {
      yield r'pages';
      yield serializers.serialize(
        object.pages,
        specifiedType: const FullType(String),
      );
    }
    if (object.questions != null) {
      yield r'questions';
      yield serializers.serialize(
        object.questions,
        specifiedType: const FullType(String),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    VisibletriggerAllOf object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  @override
  VisibletriggerAllOf deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return serializers.deserialize(serialized, specifiedType: FullType($VisibletriggerAllOf)) as $VisibletriggerAllOf;
  }
}

/// a concrete implementation of [VisibletriggerAllOf], since [VisibletriggerAllOf] is not instantiable
@BuiltValue(instantiable: true)
abstract class $VisibletriggerAllOf implements VisibletriggerAllOf, Built<$VisibletriggerAllOf, $VisibletriggerAllOfBuilder> {
  $VisibletriggerAllOf._();

  factory $VisibletriggerAllOf([void Function($VisibletriggerAllOfBuilder)? updates]) = _$$VisibletriggerAllOf;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults($VisibletriggerAllOfBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<$VisibletriggerAllOf> get serializer => _$$VisibletriggerAllOfSerializer();
}

class _$$VisibletriggerAllOfSerializer implements PrimitiveSerializer<$VisibletriggerAllOf> {
  @override
  final Iterable<Type> types = const [$VisibletriggerAllOf, _$$VisibletriggerAllOf];

  @override
  final String wireName = r'$VisibletriggerAllOf';

  @override
  Object serialize(
    Serializers serializers,
    $VisibletriggerAllOf object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return serializers.serialize(object, specifiedType: FullType(VisibletriggerAllOf))!;
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required VisibletriggerAllOfBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'pages':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.pages = valueDes;
          break;
        case r'questions':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.questions = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  $VisibletriggerAllOf deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = $VisibletriggerAllOfBuilder();
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

