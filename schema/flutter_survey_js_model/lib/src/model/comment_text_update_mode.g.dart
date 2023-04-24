// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'comment_text_update_mode.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const CommentTextUpdateMode _$default_ =
    const CommentTextUpdateMode._('default_');
const CommentTextUpdateMode _$onBlur = const CommentTextUpdateMode._('onBlur');
const CommentTextUpdateMode _$onTyping =
    const CommentTextUpdateMode._('onTyping');
const CommentTextUpdateMode _$unknownDefaultOpenApi =
    const CommentTextUpdateMode._('unknownDefaultOpenApi');

CommentTextUpdateMode _$valueOf(String name) {
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

final BuiltSet<CommentTextUpdateMode> _$values =
    new BuiltSet<CommentTextUpdateMode>(const <CommentTextUpdateMode>[
  _$default_,
  _$onBlur,
  _$onTyping,
  _$unknownDefaultOpenApi,
]);

class _$CommentTextUpdateModeMeta {
  const _$CommentTextUpdateModeMeta();
  CommentTextUpdateMode get default_ => _$default_;
  CommentTextUpdateMode get onBlur => _$onBlur;
  CommentTextUpdateMode get onTyping => _$onTyping;
  CommentTextUpdateMode get unknownDefaultOpenApi => _$unknownDefaultOpenApi;
  CommentTextUpdateMode valueOf(String name) => _$valueOf(name);
  BuiltSet<CommentTextUpdateMode> get values => _$values;
}

abstract class _$CommentTextUpdateModeMixin {
  // ignore: non_constant_identifier_names
  _$CommentTextUpdateModeMeta get CommentTextUpdateMode =>
      const _$CommentTextUpdateModeMeta();
}

Serializer<CommentTextUpdateMode> _$commentTextUpdateModeSerializer =
    new _$CommentTextUpdateModeSerializer();

class _$CommentTextUpdateModeSerializer
    implements PrimitiveSerializer<CommentTextUpdateMode> {
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
  final Iterable<Type> types = const <Type>[CommentTextUpdateMode];
  @override
  final String wireName = 'CommentTextUpdateMode';

  @override
  Object serialize(Serializers serializers, CommentTextUpdateMode object,
          {FullType specifiedType = FullType.unspecified}) =>
      _toWire[object.name] ?? object.name;

  @override
  CommentTextUpdateMode deserialize(Serializers serializers, Object serialized,
          {FullType specifiedType = FullType.unspecified}) =>
      CommentTextUpdateMode.valueOf(
          _fromWire[serialized] ?? (serialized is String ? serialized : ''));
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
