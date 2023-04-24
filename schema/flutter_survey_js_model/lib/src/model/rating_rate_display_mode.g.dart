// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'rating_rate_display_mode.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const RatingRateDisplayMode _$labels = const RatingRateDisplayMode._('labels');
const RatingRateDisplayMode _$stars = const RatingRateDisplayMode._('stars');
const RatingRateDisplayMode _$smileys =
    const RatingRateDisplayMode._('smileys');
const RatingRateDisplayMode _$unknownDefaultOpenApi =
    const RatingRateDisplayMode._('unknownDefaultOpenApi');

RatingRateDisplayMode _$valueOf(String name) {
  switch (name) {
    case 'labels':
      return _$labels;
    case 'stars':
      return _$stars;
    case 'smileys':
      return _$smileys;
    case 'unknownDefaultOpenApi':
      return _$unknownDefaultOpenApi;
    default:
      return _$unknownDefaultOpenApi;
  }
}

final BuiltSet<RatingRateDisplayMode> _$values =
    new BuiltSet<RatingRateDisplayMode>(const <RatingRateDisplayMode>[
  _$labels,
  _$stars,
  _$smileys,
  _$unknownDefaultOpenApi,
]);

class _$RatingRateDisplayModeMeta {
  const _$RatingRateDisplayModeMeta();
  RatingRateDisplayMode get labels => _$labels;
  RatingRateDisplayMode get stars => _$stars;
  RatingRateDisplayMode get smileys => _$smileys;
  RatingRateDisplayMode get unknownDefaultOpenApi => _$unknownDefaultOpenApi;
  RatingRateDisplayMode valueOf(String name) => _$valueOf(name);
  BuiltSet<RatingRateDisplayMode> get values => _$values;
}

abstract class _$RatingRateDisplayModeMixin {
  // ignore: non_constant_identifier_names
  _$RatingRateDisplayModeMeta get RatingRateDisplayMode =>
      const _$RatingRateDisplayModeMeta();
}

Serializer<RatingRateDisplayMode> _$ratingRateDisplayModeSerializer =
    new _$RatingRateDisplayModeSerializer();

class _$RatingRateDisplayModeSerializer
    implements PrimitiveSerializer<RatingRateDisplayMode> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'labels': 'labels',
    'stars': 'stars',
    'smileys': 'smileys',
    'unknownDefaultOpenApi': 'unknown_default_open_api',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'labels': 'labels',
    'stars': 'stars',
    'smileys': 'smileys',
    'unknown_default_open_api': 'unknownDefaultOpenApi',
  };

  @override
  final Iterable<Type> types = const <Type>[RatingRateDisplayMode];
  @override
  final String wireName = 'RatingRateDisplayMode';

  @override
  Object serialize(Serializers serializers, RatingRateDisplayMode object,
          {FullType specifiedType = FullType.unspecified}) =>
      _toWire[object.name] ?? object.name;

  @override
  RatingRateDisplayMode deserialize(Serializers serializers, Object serialized,
          {FullType specifiedType = FullType.unspecified}) =>
      RatingRateDisplayMode.valueOf(
          _fromWire[serialized] ?? (serialized is String ? serialized : ''));
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
