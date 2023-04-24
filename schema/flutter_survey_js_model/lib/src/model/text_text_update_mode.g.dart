// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'text_text_update_mode.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const TextTextUpdateMode _$default_ = const TextTextUpdateMode._('default_');
const TextTextUpdateMode _$onBlur = const TextTextUpdateMode._('onBlur');
const TextTextUpdateMode _$onTyping = const TextTextUpdateMode._('onTyping');
const TextTextUpdateMode _$unknownDefaultOpenApi =
    const TextTextUpdateMode._('unknownDefaultOpenApi');

TextTextUpdateMode _$valueOf(String name) {
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

final BuiltSet<TextTextUpdateMode> _$values =
    new BuiltSet<TextTextUpdateMode>(const <TextTextUpdateMode>[
  _$default_,
  _$onBlur,
  _$onTyping,
  _$unknownDefaultOpenApi,
]);

class _$TextTextUpdateModeMeta {
  const _$TextTextUpdateModeMeta();
  TextTextUpdateMode get default_ => _$default_;
  TextTextUpdateMode get onBlur => _$onBlur;
  TextTextUpdateMode get onTyping => _$onTyping;
  TextTextUpdateMode get unknownDefaultOpenApi => _$unknownDefaultOpenApi;
  TextTextUpdateMode valueOf(String name) => _$valueOf(name);
  BuiltSet<TextTextUpdateMode> get values => _$values;
}

abstract class _$TextTextUpdateModeMixin {
  // ignore: non_constant_identifier_names
  _$TextTextUpdateModeMeta get TextTextUpdateMode =>
      const _$TextTextUpdateModeMeta();
}

Serializer<TextTextUpdateMode> _$textTextUpdateModeSerializer =
    new _$TextTextUpdateModeSerializer();

class _$TextTextUpdateModeSerializer
    implements PrimitiveSerializer<TextTextUpdateMode> {
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
  final Iterable<Type> types = const <Type>[TextTextUpdateMode];
  @override
  final String wireName = 'TextTextUpdateMode';

  @override
  Object serialize(Serializers serializers, TextTextUpdateMode object,
          {FullType specifiedType = FullType.unspecified}) =>
      _toWire[object.name] ?? object.name;

  @override
  TextTextUpdateMode deserialize(Serializers serializers, Object serialized,
          {FullType specifiedType = FullType.unspecified}) =>
      TextTextUpdateMode.valueOf(
          _fromWire[serialized] ?? (serialized is String ? serialized : ''));
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
