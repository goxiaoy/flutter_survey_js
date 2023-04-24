//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'htmlconditionitem_all_of.g.dart';

/// HtmlconditionitemAllOf
///
/// Properties:
/// * [html] 
@BuiltValue(instantiable: false)
abstract class HtmlconditionitemAllOf  {
  @BuiltValueField(wireName: r'html')
  String? get html;

  @BuiltValueSerializer(custom: true)
  static Serializer<HtmlconditionitemAllOf> get serializer => _$HtmlconditionitemAllOfSerializer();
}

class _$HtmlconditionitemAllOfSerializer implements PrimitiveSerializer<HtmlconditionitemAllOf> {
  @override
  final Iterable<Type> types = const [HtmlconditionitemAllOf];

  @override
  final String wireName = r'HtmlconditionitemAllOf';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    HtmlconditionitemAllOf object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.html != null) {
      yield r'html';
      yield serializers.serialize(
        object.html,
        specifiedType: const FullType(String),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    HtmlconditionitemAllOf object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  @override
  HtmlconditionitemAllOf deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return serializers.deserialize(serialized, specifiedType: FullType($HtmlconditionitemAllOf)) as $HtmlconditionitemAllOf;
  }
}

/// a concrete implementation of [HtmlconditionitemAllOf], since [HtmlconditionitemAllOf] is not instantiable
@BuiltValue(instantiable: true)
abstract class $HtmlconditionitemAllOf implements HtmlconditionitemAllOf, Built<$HtmlconditionitemAllOf, $HtmlconditionitemAllOfBuilder> {
  $HtmlconditionitemAllOf._();

  factory $HtmlconditionitemAllOf([void Function($HtmlconditionitemAllOfBuilder)? updates]) = _$$HtmlconditionitemAllOf;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults($HtmlconditionitemAllOfBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<$HtmlconditionitemAllOf> get serializer => _$$HtmlconditionitemAllOfSerializer();
}

class _$$HtmlconditionitemAllOfSerializer implements PrimitiveSerializer<$HtmlconditionitemAllOf> {
  @override
  final Iterable<Type> types = const [$HtmlconditionitemAllOf, _$$HtmlconditionitemAllOf];

  @override
  final String wireName = r'$HtmlconditionitemAllOf';

  @override
  Object serialize(
    Serializers serializers,
    $HtmlconditionitemAllOf object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return serializers.serialize(object, specifiedType: FullType(HtmlconditionitemAllOf))!;
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required HtmlconditionitemAllOfBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'html':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.html = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  $HtmlconditionitemAllOf deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = $HtmlconditionitemAllOfBuilder();
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

