// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'imagepicker_content_mode.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const ImagepickerContentMode _$image = const ImagepickerContentMode._('image');
const ImagepickerContentMode _$video = const ImagepickerContentMode._('video');
const ImagepickerContentMode _$unknownDefaultOpenApi =
    const ImagepickerContentMode._('unknownDefaultOpenApi');

ImagepickerContentMode _$valueOf(String name) {
  switch (name) {
    case 'image':
      return _$image;
    case 'video':
      return _$video;
    case 'unknownDefaultOpenApi':
      return _$unknownDefaultOpenApi;
    default:
      return _$unknownDefaultOpenApi;
  }
}

final BuiltSet<ImagepickerContentMode> _$values =
    new BuiltSet<ImagepickerContentMode>(const <ImagepickerContentMode>[
  _$image,
  _$video,
  _$unknownDefaultOpenApi,
]);

class _$ImagepickerContentModeMeta {
  const _$ImagepickerContentModeMeta();
  ImagepickerContentMode get image => _$image;
  ImagepickerContentMode get video => _$video;
  ImagepickerContentMode get unknownDefaultOpenApi => _$unknownDefaultOpenApi;
  ImagepickerContentMode valueOf(String name) => _$valueOf(name);
  BuiltSet<ImagepickerContentMode> get values => _$values;
}

abstract class _$ImagepickerContentModeMixin {
  // ignore: non_constant_identifier_names
  _$ImagepickerContentModeMeta get ImagepickerContentMode =>
      const _$ImagepickerContentModeMeta();
}

Serializer<ImagepickerContentMode> _$imagepickerContentModeSerializer =
    new _$ImagepickerContentModeSerializer();

class _$ImagepickerContentModeSerializer
    implements PrimitiveSerializer<ImagepickerContentMode> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'image': 'image',
    'video': 'video',
    'unknownDefaultOpenApi': 'unknown_default_open_api',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'image': 'image',
    'video': 'video',
    'unknown_default_open_api': 'unknownDefaultOpenApi',
  };

  @override
  final Iterable<Type> types = const <Type>[ImagepickerContentMode];
  @override
  final String wireName = 'ImagepickerContentMode';

  @override
  Object serialize(Serializers serializers, ImagepickerContentMode object,
          {FullType specifiedType = FullType.unspecified}) =>
      _toWire[object.name] ?? object.name;

  @override
  ImagepickerContentMode deserialize(Serializers serializers, Object serialized,
          {FullType specifiedType = FullType.unspecified}) =>
      ImagepickerContentMode.valueOf(
          _fromWire[serialized] ?? (serialized is String ? serialized : ''));
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
