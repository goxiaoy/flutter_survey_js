// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'rating_rate_type.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const RatingRateType _$labels = const RatingRateType._('labels');
const RatingRateType _$stars = const RatingRateType._('stars');
const RatingRateType _$smileys = const RatingRateType._('smileys');
const RatingRateType _$unknownDefaultOpenApi =
    const RatingRateType._('unknownDefaultOpenApi');

RatingRateType _$valueOf(String name) {
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

final BuiltSet<RatingRateType> _$values =
    new BuiltSet<RatingRateType>(const <RatingRateType>[
  _$labels,
  _$stars,
  _$smileys,
  _$unknownDefaultOpenApi,
]);

class _$RatingRateTypeMeta {
  const _$RatingRateTypeMeta();
  RatingRateType get labels => _$labels;
  RatingRateType get stars => _$stars;
  RatingRateType get smileys => _$smileys;
  RatingRateType get unknownDefaultOpenApi => _$unknownDefaultOpenApi;
  RatingRateType valueOf(String name) => _$valueOf(name);
  BuiltSet<RatingRateType> get values => _$values;
}

abstract class _$RatingRateTypeMixin {
  // ignore: non_constant_identifier_names
  _$RatingRateTypeMeta get RatingRateType => const _$RatingRateTypeMeta();
}

Serializer<RatingRateType> _$ratingRateTypeSerializer =
    new _$RatingRateTypeSerializer();

class _$RatingRateTypeSerializer
    implements PrimitiveSerializer<RatingRateType> {
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
  final Iterable<Type> types = const <Type>[RatingRateType];
  @override
  final String wireName = 'RatingRateType';

  @override
  Object serialize(Serializers serializers, RatingRateType object,
          {FullType specifiedType = FullType.unspecified}) =>
      _toWire[object.name] ?? object.name;

  @override
  RatingRateType deserialize(Serializers serializers, Object serialized,
          {FullType specifiedType = FullType.unspecified}) =>
      RatingRateType.valueOf(
          _fromWire[serialized] ?? (serialized is String ? serialized : ''));
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
