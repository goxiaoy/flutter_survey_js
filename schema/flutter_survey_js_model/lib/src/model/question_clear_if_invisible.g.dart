// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'question_clear_if_invisible.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const QuestionClearIfInvisible _$default_ =
    const QuestionClearIfInvisible._('default_');
const QuestionClearIfInvisible _$none =
    const QuestionClearIfInvisible._('none');
const QuestionClearIfInvisible _$onComplete =
    const QuestionClearIfInvisible._('onComplete');
const QuestionClearIfInvisible _$onHidden =
    const QuestionClearIfInvisible._('onHidden');
const QuestionClearIfInvisible _$onHiddenContainer =
    const QuestionClearIfInvisible._('onHiddenContainer');
const QuestionClearIfInvisible _$unknownDefaultOpenApi =
    const QuestionClearIfInvisible._('unknownDefaultOpenApi');

QuestionClearIfInvisible _$valueOf(String name) {
  switch (name) {
    case 'default_':
      return _$default_;
    case 'none':
      return _$none;
    case 'onComplete':
      return _$onComplete;
    case 'onHidden':
      return _$onHidden;
    case 'onHiddenContainer':
      return _$onHiddenContainer;
    case 'unknownDefaultOpenApi':
      return _$unknownDefaultOpenApi;
    default:
      return _$unknownDefaultOpenApi;
  }
}

final BuiltSet<QuestionClearIfInvisible> _$values =
    new BuiltSet<QuestionClearIfInvisible>(const <QuestionClearIfInvisible>[
  _$default_,
  _$none,
  _$onComplete,
  _$onHidden,
  _$onHiddenContainer,
  _$unknownDefaultOpenApi,
]);

class _$QuestionClearIfInvisibleMeta {
  const _$QuestionClearIfInvisibleMeta();
  QuestionClearIfInvisible get default_ => _$default_;
  QuestionClearIfInvisible get none => _$none;
  QuestionClearIfInvisible get onComplete => _$onComplete;
  QuestionClearIfInvisible get onHidden => _$onHidden;
  QuestionClearIfInvisible get onHiddenContainer => _$onHiddenContainer;
  QuestionClearIfInvisible get unknownDefaultOpenApi => _$unknownDefaultOpenApi;
  QuestionClearIfInvisible valueOf(String name) => _$valueOf(name);
  BuiltSet<QuestionClearIfInvisible> get values => _$values;
}

abstract class _$QuestionClearIfInvisibleMixin {
  // ignore: non_constant_identifier_names
  _$QuestionClearIfInvisibleMeta get QuestionClearIfInvisible =>
      const _$QuestionClearIfInvisibleMeta();
}

Serializer<QuestionClearIfInvisible> _$questionClearIfInvisibleSerializer =
    new _$QuestionClearIfInvisibleSerializer();

class _$QuestionClearIfInvisibleSerializer
    implements PrimitiveSerializer<QuestionClearIfInvisible> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'default_': 'default',
    'none': 'none',
    'onComplete': 'onComplete',
    'onHidden': 'onHidden',
    'onHiddenContainer': 'onHiddenContainer',
    'unknownDefaultOpenApi': 'unknown_default_open_api',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'default': 'default_',
    'none': 'none',
    'onComplete': 'onComplete',
    'onHidden': 'onHidden',
    'onHiddenContainer': 'onHiddenContainer',
    'unknown_default_open_api': 'unknownDefaultOpenApi',
  };

  @override
  final Iterable<Type> types = const <Type>[QuestionClearIfInvisible];
  @override
  final String wireName = 'QuestionClearIfInvisible';

  @override
  Object serialize(Serializers serializers, QuestionClearIfInvisible object,
          {FullType specifiedType = FullType.unspecified}) =>
      _toWire[object.name] ?? object.name;

  @override
  QuestionClearIfInvisible deserialize(
          Serializers serializers, Object serialized,
          {FullType specifiedType = FullType.unspecified}) =>
      QuestionClearIfInvisible.valueOf(
          _fromWire[serialized] ?? (serialized is String ? serialized : ''));
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
