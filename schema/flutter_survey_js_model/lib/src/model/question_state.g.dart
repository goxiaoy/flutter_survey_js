// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'question_state.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const QuestionState _$default_ = const QuestionState._('default_');
const QuestionState _$collapsed = const QuestionState._('collapsed');
const QuestionState _$expanded = const QuestionState._('expanded');
const QuestionState _$unknownDefaultOpenApi =
    const QuestionState._('unknownDefaultOpenApi');

QuestionState _$valueOf(String name) {
  switch (name) {
    case 'default_':
      return _$default_;
    case 'collapsed':
      return _$collapsed;
    case 'expanded':
      return _$expanded;
    case 'unknownDefaultOpenApi':
      return _$unknownDefaultOpenApi;
    default:
      return _$unknownDefaultOpenApi;
  }
}

final BuiltSet<QuestionState> _$values =
    new BuiltSet<QuestionState>(const <QuestionState>[
  _$default_,
  _$collapsed,
  _$expanded,
  _$unknownDefaultOpenApi,
]);

class _$QuestionStateMeta {
  const _$QuestionStateMeta();
  QuestionState get default_ => _$default_;
  QuestionState get collapsed => _$collapsed;
  QuestionState get expanded => _$expanded;
  QuestionState get unknownDefaultOpenApi => _$unknownDefaultOpenApi;
  QuestionState valueOf(String name) => _$valueOf(name);
  BuiltSet<QuestionState> get values => _$values;
}

abstract class _$QuestionStateMixin {
  // ignore: non_constant_identifier_names
  _$QuestionStateMeta get QuestionState => const _$QuestionStateMeta();
}

Serializer<QuestionState> _$questionStateSerializer =
    new _$QuestionStateSerializer();

class _$QuestionStateSerializer implements PrimitiveSerializer<QuestionState> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'default_': 'default',
    'collapsed': 'collapsed',
    'expanded': 'expanded',
    'unknownDefaultOpenApi': 'unknown_default_open_api',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'default': 'default_',
    'collapsed': 'collapsed',
    'expanded': 'expanded',
    'unknown_default_open_api': 'unknownDefaultOpenApi',
  };

  @override
  final Iterable<Type> types = const <Type>[QuestionState];
  @override
  final String wireName = 'QuestionState';

  @override
  Object serialize(Serializers serializers, QuestionState object,
          {FullType specifiedType = FullType.unspecified}) =>
      _toWire[object.name] ?? object.name;

  @override
  QuestionState deserialize(Serializers serializers, Object serialized,
          {FullType specifiedType = FullType.unspecified}) =>
      QuestionState.valueOf(
          _fromWire[serialized] ?? (serialized is String ? serialized : ''));
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
