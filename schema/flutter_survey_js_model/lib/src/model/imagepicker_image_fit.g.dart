// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'imagepicker_image_fit.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const ImagepickerImageFit _$none = const ImagepickerImageFit._('none');
const ImagepickerImageFit _$contain = const ImagepickerImageFit._('contain');
const ImagepickerImageFit _$cover = const ImagepickerImageFit._('cover');
const ImagepickerImageFit _$fill = const ImagepickerImageFit._('fill');
const ImagepickerImageFit _$unknownDefaultOpenApi =
    const ImagepickerImageFit._('unknownDefaultOpenApi');

ImagepickerImageFit _$valueOf(String name) {
  switch (name) {
    case 'none':
      return _$none;
    case 'contain':
      return _$contain;
    case 'cover':
      return _$cover;
    case 'fill':
      return _$fill;
    case 'unknownDefaultOpenApi':
      return _$unknownDefaultOpenApi;
    default:
      return _$unknownDefaultOpenApi;
  }
}

final BuiltSet<ImagepickerImageFit> _$values =
    new BuiltSet<ImagepickerImageFit>(const <ImagepickerImageFit>[
  _$none,
  _$contain,
  _$cover,
  _$fill,
  _$unknownDefaultOpenApi,
]);

class _$ImagepickerImageFitMeta {
  const _$ImagepickerImageFitMeta();
  ImagepickerImageFit get none => _$none;
  ImagepickerImageFit get contain => _$contain;
  ImagepickerImageFit get cover => _$cover;
  ImagepickerImageFit get fill => _$fill;
  ImagepickerImageFit get unknownDefaultOpenApi => _$unknownDefaultOpenApi;
  ImagepickerImageFit valueOf(String name) => _$valueOf(name);
  BuiltSet<ImagepickerImageFit> get values => _$values;
}

abstract class _$ImagepickerImageFitMixin {
  // ignore: non_constant_identifier_names
  _$ImagepickerImageFitMeta get ImagepickerImageFit =>
      const _$ImagepickerImageFitMeta();
}

Serializer<ImagepickerImageFit> _$imagepickerImageFitSerializer =
    new _$ImagepickerImageFitSerializer();

class _$ImagepickerImageFitSerializer
    implements PrimitiveSerializer<ImagepickerImageFit> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'none': 'none',
    'contain': 'contain',
    'cover': 'cover',
    'fill': 'fill',
    'unknownDefaultOpenApi': 'unknown_default_open_api',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'none': 'none',
    'contain': 'contain',
    'cover': 'cover',
    'fill': 'fill',
    'unknown_default_open_api': 'unknownDefaultOpenApi',
  };

  @override
  final Iterable<Type> types = const <Type>[ImagepickerImageFit];
  @override
  final String wireName = 'ImagepickerImageFit';

  @override
  Object serialize(Serializers serializers, ImagepickerImageFit object,
          {FullType specifiedType = FullType.unspecified}) =>
      _toWire[object.name] ?? object.name;

  @override
  ImagepickerImageFit deserialize(Serializers serializers, Object serialized,
          {FullType specifiedType = FullType.unspecified}) =>
      ImagepickerImageFit.valueOf(
          _fromWire[serialized] ?? (serialized is String ? serialized : ''));
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
