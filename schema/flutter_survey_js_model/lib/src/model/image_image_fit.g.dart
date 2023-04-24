// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'image_image_fit.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const ImageImageFit _$none = const ImageImageFit._('none');
const ImageImageFit _$contain = const ImageImageFit._('contain');
const ImageImageFit _$cover = const ImageImageFit._('cover');
const ImageImageFit _$fill = const ImageImageFit._('fill');
const ImageImageFit _$unknownDefaultOpenApi =
    const ImageImageFit._('unknownDefaultOpenApi');

ImageImageFit _$valueOf(String name) {
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

final BuiltSet<ImageImageFit> _$values =
    new BuiltSet<ImageImageFit>(const <ImageImageFit>[
  _$none,
  _$contain,
  _$cover,
  _$fill,
  _$unknownDefaultOpenApi,
]);

class _$ImageImageFitMeta {
  const _$ImageImageFitMeta();
  ImageImageFit get none => _$none;
  ImageImageFit get contain => _$contain;
  ImageImageFit get cover => _$cover;
  ImageImageFit get fill => _$fill;
  ImageImageFit get unknownDefaultOpenApi => _$unknownDefaultOpenApi;
  ImageImageFit valueOf(String name) => _$valueOf(name);
  BuiltSet<ImageImageFit> get values => _$values;
}

abstract class _$ImageImageFitMixin {
  // ignore: non_constant_identifier_names
  _$ImageImageFitMeta get ImageImageFit => const _$ImageImageFitMeta();
}

Serializer<ImageImageFit> _$imageImageFitSerializer =
    new _$ImageImageFitSerializer();

class _$ImageImageFitSerializer implements PrimitiveSerializer<ImageImageFit> {
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
  final Iterable<Type> types = const <Type>[ImageImageFit];
  @override
  final String wireName = 'ImageImageFit';

  @override
  Object serialize(Serializers serializers, ImageImageFit object,
          {FullType specifiedType = FullType.unspecified}) =>
      _toWire[object.name] ?? object.name;

  @override
  ImageImageFit deserialize(Serializers serializers, Object serialized,
          {FullType specifiedType = FullType.unspecified}) =>
      ImageImageFit.valueOf(
          _fromWire[serialized] ?? (serialized is String ? serialized : ''));
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
