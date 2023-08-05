//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'locstring.g.dart';

/// Locstring
///
/// Properties:
/// * [default_] 
/// * [en] 
@BuiltValue()
abstract class Locstring implements Built<Locstring, LocstringBuilder> {
  @BuiltValueField(wireName: r'default')
  String? get default_;

  @BuiltValueField(wireName: r'en')
  String? get en;

  Locstring._();

  factory Locstring([void updates(LocstringBuilder b)]) = _$Locstring;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(LocstringBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<Locstring> get serializer => _$LocstringSerializer();
}

class _$LocstringSerializer implements PrimitiveSerializer<Locstring> {
  @override
  final Iterable<Type> types = const [Locstring, _$Locstring];

  @override
  final String wireName = r'Locstring';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    Locstring object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.default_ != null) {
      yield r'default';
      yield serializers.serialize(
        object.default_,
        specifiedType: const FullType(String),
      );
    }
    if (object.en != null) {
      yield r'en';
      yield serializers.serialize(
        object.en,
        specifiedType: const FullType(String),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    Locstring object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required LocstringBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'default':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.default_ = valueDes;
          break;
        case r'en':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.en = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  Locstring deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = LocstringBuilder();
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

