// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'question_indent.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const QuestionIndent _$n0 = const QuestionIndent._('n0');
const QuestionIndent _$n1 = const QuestionIndent._('n1');
const QuestionIndent _$n2 = const QuestionIndent._('n2');
const QuestionIndent _$n3 = const QuestionIndent._('n3');
const QuestionIndent _$unknownDefaultOpenApi =
    const QuestionIndent._('unknownDefaultOpenApi');

QuestionIndent _$valueOf(String name) {
  switch (name) {
    case 'n0':
      return _$n0;
    case 'n1':
      return _$n1;
    case 'n2':
      return _$n2;
    case 'n3':
      return _$n3;
    case 'unknownDefaultOpenApi':
      return _$unknownDefaultOpenApi;
    default:
      return _$unknownDefaultOpenApi;
  }
}

final BuiltSet<QuestionIndent> _$values =
    new BuiltSet<QuestionIndent>(const <QuestionIndent>[
  _$n0,
  _$n1,
  _$n2,
  _$n3,
  _$unknownDefaultOpenApi,
]);

class _$QuestionIndentMeta {
  const _$QuestionIndentMeta();
  QuestionIndent get n0 => _$n0;
  QuestionIndent get n1 => _$n1;
  QuestionIndent get n2 => _$n2;
  QuestionIndent get n3 => _$n3;
  QuestionIndent get unknownDefaultOpenApi => _$unknownDefaultOpenApi;
  QuestionIndent valueOf(String name) => _$valueOf(name);
  BuiltSet<QuestionIndent> get values => _$values;
}

abstract class _$QuestionIndentMixin {
  // ignore: non_constant_identifier_names
  _$QuestionIndentMeta get QuestionIndent => const _$QuestionIndentMeta();
}

Serializer<QuestionIndent> _$questionIndentSerializer =
    new _$QuestionIndentSerializer();

class _$QuestionIndentSerializer
    implements PrimitiveSerializer<QuestionIndent> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'n0': '0',
    'n1': '1',
    'n2': '2',
    'n3': '3',
    'unknownDefaultOpenApi': '11184809',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    '0': 'n0',
    '1': 'n1',
    '2': 'n2',
    '3': 'n3',
    '11184809': 'unknownDefaultOpenApi',
  };

  @override
  final Iterable<Type> types = const <Type>[QuestionIndent];
  @override
  final String wireName = 'QuestionIndent';

  @override
  Object serialize(Serializers serializers, QuestionIndent object,
          {FullType specifiedType = FullType.unspecified}) =>
      _toWire[object.name] ?? object.name;

  @override
  QuestionIndent deserialize(Serializers serializers, Object serialized,
          {FullType specifiedType = FullType.unspecified}) =>
      QuestionIndent.valueOf(
          _fromWire[serialized] ?? (serialized is String ? serialized : ''));
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
