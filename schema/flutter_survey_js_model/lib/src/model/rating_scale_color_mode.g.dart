// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'rating_scale_color_mode.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const RatingScaleColorMode _$monochrome =
    const RatingScaleColorMode._('monochrome');
const RatingScaleColorMode _$colored = const RatingScaleColorMode._('colored');
const RatingScaleColorMode _$unknownDefaultOpenApi =
    const RatingScaleColorMode._('unknownDefaultOpenApi');

RatingScaleColorMode _$valueOf(String name) {
  switch (name) {
    case 'monochrome':
      return _$monochrome;
    case 'colored':
      return _$colored;
    case 'unknownDefaultOpenApi':
      return _$unknownDefaultOpenApi;
    default:
      return _$unknownDefaultOpenApi;
  }
}

final BuiltSet<RatingScaleColorMode> _$values =
    new BuiltSet<RatingScaleColorMode>(const <RatingScaleColorMode>[
  _$monochrome,
  _$colored,
  _$unknownDefaultOpenApi,
]);

class _$RatingScaleColorModeMeta {
  const _$RatingScaleColorModeMeta();
  RatingScaleColorMode get monochrome => _$monochrome;
  RatingScaleColorMode get colored => _$colored;
  RatingScaleColorMode get unknownDefaultOpenApi => _$unknownDefaultOpenApi;
  RatingScaleColorMode valueOf(String name) => _$valueOf(name);
  BuiltSet<RatingScaleColorMode> get values => _$values;
}

abstract class _$RatingScaleColorModeMixin {
  // ignore: non_constant_identifier_names
  _$RatingScaleColorModeMeta get RatingScaleColorMode =>
      const _$RatingScaleColorModeMeta();
}

Serializer<RatingScaleColorMode> _$ratingScaleColorModeSerializer =
    new _$RatingScaleColorModeSerializer();

class _$RatingScaleColorModeSerializer
    implements PrimitiveSerializer<RatingScaleColorMode> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'monochrome': 'monochrome',
    'colored': 'colored',
    'unknownDefaultOpenApi': 'unknown_default_open_api',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'monochrome': 'monochrome',
    'colored': 'colored',
    'unknown_default_open_api': 'unknownDefaultOpenApi',
  };

  @override
  final Iterable<Type> types = const <Type>[RatingScaleColorMode];
  @override
  final String wireName = 'RatingScaleColorMode';

  @override
  Object serialize(Serializers serializers, RatingScaleColorMode object,
          {FullType specifiedType = FullType.unspecified}) =>
      _toWire[object.name] ?? object.name;

  @override
  RatingScaleColorMode deserialize(Serializers serializers, Object serialized,
          {FullType specifiedType = FullType.unspecified}) =>
      RatingScaleColorMode.valueOf(
          _fromWire[serialized] ?? (serialized is String ? serialized : ''));
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
