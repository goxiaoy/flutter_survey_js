//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:surveyjs_model/src/model/image_image_fit.dart';
import 'package:surveyjs_model/src/model/image_content_mode.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'image_all_of.g.dart';

/// ImageAllOf
///
/// Properties:
/// * [imageLink] 
/// * [altText] 
/// * [contentMode] 
/// * [imageFit] 
/// * [imageHeight] 
/// * [imageWidth] 
@BuiltValue(instantiable: false)
abstract class ImageAllOf  {
  @BuiltValueField(wireName: r'imageLink')
  String? get imageLink;

  @BuiltValueField(wireName: r'altText')
  String? get altText;

  @BuiltValueField(wireName: r'contentMode')
  ImageContentMode? get contentMode;
  // enum contentModeEnum {  auto,  image,  video,  youtube,  };

  @BuiltValueField(wireName: r'imageFit')
  ImageImageFit? get imageFit;
  // enum imageFitEnum {  none,  contain,  cover,  fill,  };

  @BuiltValueField(wireName: r'imageHeight')
  String? get imageHeight;

  @BuiltValueField(wireName: r'imageWidth')
  String? get imageWidth;

  @BuiltValueSerializer(custom: true)
  static Serializer<ImageAllOf> get serializer => _$ImageAllOfSerializer();
}

class _$ImageAllOfSerializer implements PrimitiveSerializer<ImageAllOf> {
  @override
  final Iterable<Type> types = const [ImageAllOf];

  @override
  final String wireName = r'ImageAllOf';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    ImageAllOf object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.imageLink != null) {
      yield r'imageLink';
      yield serializers.serialize(
        object.imageLink,
        specifiedType: const FullType(String),
      );
    }
    if (object.altText != null) {
      yield r'altText';
      yield serializers.serialize(
        object.altText,
        specifiedType: const FullType(String),
      );
    }
    if (object.contentMode != null) {
      yield r'contentMode';
      yield serializers.serialize(
        object.contentMode,
        specifiedType: const FullType(ImageContentMode),
      );
    }
    if (object.imageFit != null) {
      yield r'imageFit';
      yield serializers.serialize(
        object.imageFit,
        specifiedType: const FullType(ImageImageFit),
      );
    }
    if (object.imageHeight != null) {
      yield r'imageHeight';
      yield serializers.serialize(
        object.imageHeight,
        specifiedType: const FullType(String),
      );
    }
    if (object.imageWidth != null) {
      yield r'imageWidth';
      yield serializers.serialize(
        object.imageWidth,
        specifiedType: const FullType(String),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    ImageAllOf object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  @override
  ImageAllOf deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return serializers.deserialize(serialized, specifiedType: FullType($ImageAllOf)) as $ImageAllOf;
  }
}

/// a concrete implementation of [ImageAllOf], since [ImageAllOf] is not instantiable
@BuiltValue(instantiable: true)
abstract class $ImageAllOf implements ImageAllOf, Built<$ImageAllOf, $ImageAllOfBuilder> {
  $ImageAllOf._();

  factory $ImageAllOf([void Function($ImageAllOfBuilder)? updates]) = _$$ImageAllOf;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults($ImageAllOfBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<$ImageAllOf> get serializer => _$$ImageAllOfSerializer();
}

class _$$ImageAllOfSerializer implements PrimitiveSerializer<$ImageAllOf> {
  @override
  final Iterable<Type> types = const [$ImageAllOf, _$$ImageAllOf];

  @override
  final String wireName = r'$ImageAllOf';

  @override
  Object serialize(
    Serializers serializers,
    $ImageAllOf object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return serializers.serialize(object, specifiedType: FullType(ImageAllOf))!;
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required ImageAllOfBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'imageLink':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.imageLink = valueDes;
          break;
        case r'altText':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.altText = valueDes;
          break;
        case r'contentMode':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(ImageContentMode),
          ) as ImageContentMode;
          result.contentMode = valueDes;
          break;
        case r'imageFit':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(ImageImageFit),
          ) as ImageImageFit;
          result.imageFit = valueDes;
          break;
        case r'imageHeight':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.imageHeight = valueDes;
          break;
        case r'imageWidth':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.imageWidth = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  $ImageAllOf deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = $ImageAllOfBuilder();
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

