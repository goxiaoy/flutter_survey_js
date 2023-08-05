// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'text_update_mode.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const TextUpdateMode _$default_ = const TextUpdateMode._('default_');
const TextUpdateMode _$onBlur = const TextUpdateMode._('onBlur');
const TextUpdateMode _$onTyping = const TextUpdateMode._('onTyping');
const TextUpdateMode _$unknownDefaultOpenApi =
    const TextUpdateMode._('unknownDefaultOpenApi');

TextUpdateMode _$valueOf(String name) {
  switch (name) {
    case 'default_':
      return _$default_;
    case 'onBlur':
      return _$onBlur;
    case 'onTyping':
      return _$onTyping;
    case 'unknownDefaultOpenApi':
      return _$unknownDefaultOpenApi;
    default:
      return _$unknownDefaultOpenApi;
  }
}

final BuiltSet<TextUpdateMode> _$values =
    new BuiltSet<TextUpdateMode>(const <TextUpdateMode>[
  _$default_,
  _$onBlur,
  _$onTyping,
  _$unknownDefaultOpenApi,
]);

class _$TextUpdateModeMeta {
  const _$TextUpdateModeMeta();
  TextUpdateMode get default_ => _$default_;
  TextUpdateMode get onBlur => _$onBlur;
  TextUpdateMode get onTyping => _$onTyping;
  TextUpdateMode get unknownDefaultOpenApi => _$unknownDefaultOpenApi;
  TextUpdateMode valueOf(String name) => _$valueOf(name);
  BuiltSet<TextUpdateMode> get values => _$values;
}

abstract class _$TextUpdateModeMixin {
  // ignore: non_constant_identifier_names
  _$TextUpdateModeMeta get TextUpdateMode => const _$TextUpdateModeMeta();
}

Serializer<TextUpdateMode> _$textUpdateModeSerializer =
    new _$TextUpdateModeSerializer();

class _$TextUpdateModeSerializer
    implements PrimitiveSerializer<TextUpdateMode> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'default_': 'default',
    'onBlur': 'onBlur',
    'onTyping': 'onTyping',
    'unknownDefaultOpenApi': 'unknown_default_open_api',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'default': 'default_',
    'onBlur': 'onBlur',
    'onTyping': 'onTyping',
    'unknown_default_open_api': 'unknownDefaultOpenApi',
  };

  @override
  final Iterable<Type> types = const <Type>[TextUpdateMode];
  @override
  final String wireName = 'TextUpdateMode';

  @override
  Object serialize(Serializers serializers, TextUpdateMode object,
          {FullType specifiedType = FullType.unspecified}) =>
      _toWire[object.name] ?? object.name;

  @override
  TextUpdateMode deserialize(Serializers serializers, Object serialized,
          {FullType specifiedType = FullType.unspecified}) =>
      TextUpdateMode.valueOf(
          _fromWire[serialized] ?? (serialized is String ? serialized : ''));
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
