// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'rating_display_mode.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const RatingDisplayMode _$auto = const RatingDisplayMode._('auto');
const RatingDisplayMode _$buttons = const RatingDisplayMode._('buttons');
const RatingDisplayMode _$dropdown = const RatingDisplayMode._('dropdown');
const RatingDisplayMode _$unknownDefaultOpenApi =
    const RatingDisplayMode._('unknownDefaultOpenApi');

RatingDisplayMode _$valueOf(String name) {
  switch (name) {
    case 'auto':
      return _$auto;
    case 'buttons':
      return _$buttons;
    case 'dropdown':
      return _$dropdown;
    case 'unknownDefaultOpenApi':
      return _$unknownDefaultOpenApi;
    default:
      return _$unknownDefaultOpenApi;
  }
}

final BuiltSet<RatingDisplayMode> _$values =
    new BuiltSet<RatingDisplayMode>(const <RatingDisplayMode>[
  _$auto,
  _$buttons,
  _$dropdown,
  _$unknownDefaultOpenApi,
]);

class _$RatingDisplayModeMeta {
  const _$RatingDisplayModeMeta();
  RatingDisplayMode get auto => _$auto;
  RatingDisplayMode get buttons => _$buttons;
  RatingDisplayMode get dropdown => _$dropdown;
  RatingDisplayMode get unknownDefaultOpenApi => _$unknownDefaultOpenApi;
  RatingDisplayMode valueOf(String name) => _$valueOf(name);
  BuiltSet<RatingDisplayMode> get values => _$values;
}

abstract class _$RatingDisplayModeMixin {
  // ignore: non_constant_identifier_names
  _$RatingDisplayModeMeta get RatingDisplayMode =>
      const _$RatingDisplayModeMeta();
}

Serializer<RatingDisplayMode> _$ratingDisplayModeSerializer =
    new _$RatingDisplayModeSerializer();

class _$RatingDisplayModeSerializer
    implements PrimitiveSerializer<RatingDisplayMode> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'auto': 'auto',
    'buttons': 'buttons',
    'dropdown': 'dropdown',
    'unknownDefaultOpenApi': 'unknown_default_open_api',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'auto': 'auto',
    'buttons': 'buttons',
    'dropdown': 'dropdown',
    'unknown_default_open_api': 'unknownDefaultOpenApi',
  };

  @override
  final Iterable<Type> types = const <Type>[RatingDisplayMode];
  @override
  final String wireName = 'RatingDisplayMode';

  @override
  Object serialize(Serializers serializers, RatingDisplayMode object,
          {FullType specifiedType = FullType.unspecified}) =>
      _toWire[object.name] ?? object.name;

  @override
  RatingDisplayMode deserialize(Serializers serializers, Object serialized,
          {FullType specifiedType = FullType.unspecified}) =>
      RatingDisplayMode.valueOf(
          _fromWire[serialized] ?? (serialized is String ? serialized : ''));
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
