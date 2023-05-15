// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'rating_rate_color_mode.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const RatingRateColorMode _$default_ = const RatingRateColorMode._('default_');
const RatingRateColorMode _$scale = const RatingRateColorMode._('scale');
const RatingRateColorMode _$unknownDefaultOpenApi =
    const RatingRateColorMode._('unknownDefaultOpenApi');

RatingRateColorMode _$valueOf(String name) {
  switch (name) {
    case 'default_':
      return _$default_;
    case 'scale':
      return _$scale;
    case 'unknownDefaultOpenApi':
      return _$unknownDefaultOpenApi;
    default:
      return _$unknownDefaultOpenApi;
  }
}

final BuiltSet<RatingRateColorMode> _$values =
    new BuiltSet<RatingRateColorMode>(const <RatingRateColorMode>[
  _$default_,
  _$scale,
  _$unknownDefaultOpenApi,
]);

class _$RatingRateColorModeMeta {
  const _$RatingRateColorModeMeta();
  RatingRateColorMode get default_ => _$default_;
  RatingRateColorMode get scale => _$scale;
  RatingRateColorMode get unknownDefaultOpenApi => _$unknownDefaultOpenApi;
  RatingRateColorMode valueOf(String name) => _$valueOf(name);
  BuiltSet<RatingRateColorMode> get values => _$values;
}

abstract class _$RatingRateColorModeMixin {
  // ignore: non_constant_identifier_names
  _$RatingRateColorModeMeta get RatingRateColorMode =>
      const _$RatingRateColorModeMeta();
}

Serializer<RatingRateColorMode> _$ratingRateColorModeSerializer =
    new _$RatingRateColorModeSerializer();

class _$RatingRateColorModeSerializer
    implements PrimitiveSerializer<RatingRateColorMode> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'default_': 'default',
    'scale': 'scale',
    'unknownDefaultOpenApi': 'unknown_default_open_api',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'default': 'default_',
    'scale': 'scale',
    'unknown_default_open_api': 'unknownDefaultOpenApi',
  };

  @override
  final Iterable<Type> types = const <Type>[RatingRateColorMode];
  @override
  final String wireName = 'RatingRateColorMode';

  @override
  Object serialize(Serializers serializers, RatingRateColorMode object,
          {FullType specifiedType = FullType.unspecified}) =>
      _toWire[object.name] ?? object.name;

  @override
  RatingRateColorMode deserialize(Serializers serializers, Object serialized,
          {FullType specifiedType = FullType.unspecified}) =>
      RatingRateColorMode.valueOf(
          _fromWire[serialized] ?? (serialized is String ? serialized : ''));
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
