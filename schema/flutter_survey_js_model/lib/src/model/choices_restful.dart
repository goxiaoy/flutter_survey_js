//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'choices_restful.g.dart';

/// ChoicesRestful
///
/// Properties:
/// * [url] 
/// * [valueName] 
/// * [titleName] 
/// * [imageLinkName] 
/// * [path] 
@BuiltValue()
abstract class ChoicesRestful implements Built<ChoicesRestful, ChoicesRestfulBuilder> {
  @BuiltValueField(wireName: r'url')
  String? get url;

  @BuiltValueField(wireName: r'valueName')
  String? get valueName;

  @BuiltValueField(wireName: r'titleName')
  String? get titleName;

  @BuiltValueField(wireName: r'imageLinkName')
  String? get imageLinkName;

  @BuiltValueField(wireName: r'path')
  String? get path;

  ChoicesRestful._();

  factory ChoicesRestful([void updates(ChoicesRestfulBuilder b)]) = _$ChoicesRestful;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(ChoicesRestfulBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<ChoicesRestful> get serializer => _$ChoicesRestfulSerializer();
}

class _$ChoicesRestfulSerializer implements PrimitiveSerializer<ChoicesRestful> {
  @override
  final Iterable<Type> types = const [ChoicesRestful, _$ChoicesRestful];

  @override
  final String wireName = r'ChoicesRestful';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    ChoicesRestful object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.url != null) {
      yield r'url';
      yield serializers.serialize(
        object.url,
        specifiedType: const FullType(String),
      );
    }
    if (object.valueName != null) {
      yield r'valueName';
      yield serializers.serialize(
        object.valueName,
        specifiedType: const FullType(String),
      );
    }
    if (object.titleName != null) {
      yield r'titleName';
      yield serializers.serialize(
        object.titleName,
        specifiedType: const FullType(String),
      );
    }
    if (object.imageLinkName != null) {
      yield r'imageLinkName';
      yield serializers.serialize(
        object.imageLinkName,
        specifiedType: const FullType(String),
      );
    }
    if (object.path != null) {
      yield r'path';
      yield serializers.serialize(
        object.path,
        specifiedType: const FullType(String),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    ChoicesRestful object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required ChoicesRestfulBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'url':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.url = valueDes;
          break;
        case r'valueName':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.valueName = valueDes;
          break;
        case r'titleName':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.titleName = valueDes;
          break;
        case r'imageLinkName':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.imageLinkName = valueDes;
          break;
        case r'path':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.path = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  ChoicesRestful deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = ChoicesRestfulBuilder();
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

