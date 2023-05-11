// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'question_title_location.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const QuestionTitleLocation _$default_ =
    const QuestionTitleLocation._('default_');
const QuestionTitleLocation _$top = const QuestionTitleLocation._('top');
const QuestionTitleLocation _$bottom = const QuestionTitleLocation._('bottom');
const QuestionTitleLocation _$left = const QuestionTitleLocation._('left');
const QuestionTitleLocation _$hidden = const QuestionTitleLocation._('hidden');
const QuestionTitleLocation _$unknownDefaultOpenApi =
    const QuestionTitleLocation._('unknownDefaultOpenApi');

QuestionTitleLocation _$valueOf(String name) {
  switch (name) {
    case 'default_':
      return _$default_;
    case 'top':
      return _$top;
    case 'bottom':
      return _$bottom;
    case 'left':
      return _$left;
    case 'hidden':
      return _$hidden;
    case 'unknownDefaultOpenApi':
      return _$unknownDefaultOpenApi;
    default:
      return _$unknownDefaultOpenApi;
  }
}

final BuiltSet<QuestionTitleLocation> _$values =
    new BuiltSet<QuestionTitleLocation>(const <QuestionTitleLocation>[
  _$default_,
  _$top,
  _$bottom,
  _$left,
  _$hidden,
  _$unknownDefaultOpenApi,
]);

class _$QuestionTitleLocationMeta {
  const _$QuestionTitleLocationMeta();
  QuestionTitleLocation get default_ => _$default_;
  QuestionTitleLocation get top => _$top;
  QuestionTitleLocation get bottom => _$bottom;
  QuestionTitleLocation get left => _$left;
  QuestionTitleLocation get hidden => _$hidden;
  QuestionTitleLocation get unknownDefaultOpenApi => _$unknownDefaultOpenApi;
  QuestionTitleLocation valueOf(String name) => _$valueOf(name);
  BuiltSet<QuestionTitleLocation> get values => _$values;
}

abstract class _$QuestionTitleLocationMixin {
  // ignore: non_constant_identifier_names
  _$QuestionTitleLocationMeta get QuestionTitleLocation =>
      const _$QuestionTitleLocationMeta();
}

Serializer<QuestionTitleLocation> _$questionTitleLocationSerializer =
    new _$QuestionTitleLocationSerializer();

class _$QuestionTitleLocationSerializer
    implements PrimitiveSerializer<QuestionTitleLocation> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'default_': 'default',
    'top': 'top',
    'bottom': 'bottom',
    'left': 'left',
    'hidden': 'hidden',
    'unknownDefaultOpenApi': 'unknown_default_open_api',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'default': 'default_',
    'top': 'top',
    'bottom': 'bottom',
    'left': 'left',
    'hidden': 'hidden',
    'unknown_default_open_api': 'unknownDefaultOpenApi',
  };

  @override
  final Iterable<Type> types = const <Type>[QuestionTitleLocation];
  @override
  final String wireName = 'QuestionTitleLocation';

  @override
  Object serialize(Serializers serializers, QuestionTitleLocation object,
          {FullType specifiedType = FullType.unspecified}) =>
      _toWire[object.name] ?? object.name;

  @override
  QuestionTitleLocation deserialize(Serializers serializers, Object serialized,
          {FullType specifiedType = FullType.unspecified}) =>
      QuestionTitleLocation.valueOf(
          _fromWire[serialized] ?? (serialized is String ? serialized : ''));
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
