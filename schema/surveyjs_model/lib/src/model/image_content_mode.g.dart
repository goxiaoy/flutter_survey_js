// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'image_content_mode.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const ImageContentMode _$auto = const ImageContentMode._('auto');
const ImageContentMode _$image = const ImageContentMode._('image');
const ImageContentMode _$video = const ImageContentMode._('video');
const ImageContentMode _$youtube = const ImageContentMode._('youtube');
const ImageContentMode _$unknownDefaultOpenApi =
    const ImageContentMode._('unknownDefaultOpenApi');

ImageContentMode _$valueOf(String name) {
  switch (name) {
    case 'auto':
      return _$auto;
    case 'image':
      return _$image;
    case 'video':
      return _$video;
    case 'youtube':
      return _$youtube;
    case 'unknownDefaultOpenApi':
      return _$unknownDefaultOpenApi;
    default:
      return _$unknownDefaultOpenApi;
  }
}

final BuiltSet<ImageContentMode> _$values =
    new BuiltSet<ImageContentMode>(const <ImageContentMode>[
  _$auto,
  _$image,
  _$video,
  _$youtube,
  _$unknownDefaultOpenApi,
]);

class _$ImageContentModeMeta {
  const _$ImageContentModeMeta();
  ImageContentMode get auto => _$auto;
  ImageContentMode get image => _$image;
  ImageContentMode get video => _$video;
  ImageContentMode get youtube => _$youtube;
  ImageContentMode get unknownDefaultOpenApi => _$unknownDefaultOpenApi;
  ImageContentMode valueOf(String name) => _$valueOf(name);
  BuiltSet<ImageContentMode> get values => _$values;
}

abstract class _$ImageContentModeMixin {
  // ignore: non_constant_identifier_names
  _$ImageContentModeMeta get ImageContentMode => const _$ImageContentModeMeta();
}

Serializer<ImageContentMode> _$imageContentModeSerializer =
    new _$ImageContentModeSerializer();

class _$ImageContentModeSerializer
    implements PrimitiveSerializer<ImageContentMode> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'auto': 'auto',
    'image': 'image',
    'video': 'video',
    'youtube': 'youtube',
    'unknownDefaultOpenApi': 'unknown_default_open_api',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'auto': 'auto',
    'image': 'image',
    'video': 'video',
    'youtube': 'youtube',
    'unknown_default_open_api': 'unknownDefaultOpenApi',
  };

  @override
  final Iterable<Type> types = const <Type>[ImageContentMode];
  @override
  final String wireName = 'ImageContentMode';

  @override
  Object serialize(Serializers serializers, ImageContentMode object,
          {FullType specifiedType = FullType.unspecified}) =>
      _toWire[object.name] ?? object.name;

  @override
  ImageContentMode deserialize(Serializers serializers, Object serialized,
          {FullType specifiedType = FullType.unspecified}) =>
      ImageContentMode.valueOf(
          _fromWire[serialized] ?? (serialized is String ? serialized : ''));
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
