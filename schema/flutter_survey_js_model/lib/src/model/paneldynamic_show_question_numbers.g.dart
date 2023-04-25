// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'paneldynamic_show_question_numbers.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const PaneldynamicShowQuestionNumbers _$off =
    const PaneldynamicShowQuestionNumbers._('off');
const PaneldynamicShowQuestionNumbers _$onPanel =
    const PaneldynamicShowQuestionNumbers._('onPanel');
const PaneldynamicShowQuestionNumbers _$onSurvey =
    const PaneldynamicShowQuestionNumbers._('onSurvey');
const PaneldynamicShowQuestionNumbers _$unknownDefaultOpenApi =
    const PaneldynamicShowQuestionNumbers._('unknownDefaultOpenApi');

PaneldynamicShowQuestionNumbers _$valueOf(String name) {
  switch (name) {
    case 'off':
      return _$off;
    case 'onPanel':
      return _$onPanel;
    case 'onSurvey':
      return _$onSurvey;
    case 'unknownDefaultOpenApi':
      return _$unknownDefaultOpenApi;
    default:
      return _$unknownDefaultOpenApi;
  }
}

final BuiltSet<PaneldynamicShowQuestionNumbers> _$values = new BuiltSet<
    PaneldynamicShowQuestionNumbers>(const <PaneldynamicShowQuestionNumbers>[
  _$off,
  _$onPanel,
  _$onSurvey,
  _$unknownDefaultOpenApi,
]);

class _$PaneldynamicShowQuestionNumbersMeta {
  const _$PaneldynamicShowQuestionNumbersMeta();
  PaneldynamicShowQuestionNumbers get off => _$off;
  PaneldynamicShowQuestionNumbers get onPanel => _$onPanel;
  PaneldynamicShowQuestionNumbers get onSurvey => _$onSurvey;
  PaneldynamicShowQuestionNumbers get unknownDefaultOpenApi =>
      _$unknownDefaultOpenApi;
  PaneldynamicShowQuestionNumbers valueOf(String name) => _$valueOf(name);
  BuiltSet<PaneldynamicShowQuestionNumbers> get values => _$values;
}

abstract class _$PaneldynamicShowQuestionNumbersMixin {
  // ignore: non_constant_identifier_names
  _$PaneldynamicShowQuestionNumbersMeta get PaneldynamicShowQuestionNumbers =>
      const _$PaneldynamicShowQuestionNumbersMeta();
}

Serializer<PaneldynamicShowQuestionNumbers>
    _$paneldynamicShowQuestionNumbersSerializer =
    new _$PaneldynamicShowQuestionNumbersSerializer();

class _$PaneldynamicShowQuestionNumbersSerializer
    implements PrimitiveSerializer<PaneldynamicShowQuestionNumbers> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'off': 'off',
    'onPanel': 'onPanel',
    'onSurvey': 'onSurvey',
    'unknownDefaultOpenApi': 'unknown_default_open_api',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'off': 'off',
    'onPanel': 'onPanel',
    'onSurvey': 'onSurvey',
    'unknown_default_open_api': 'unknownDefaultOpenApi',
  };

  @override
  final Iterable<Type> types = const <Type>[PaneldynamicShowQuestionNumbers];
  @override
  final String wireName = 'PaneldynamicShowQuestionNumbers';

  @override
  Object serialize(
          Serializers serializers, PaneldynamicShowQuestionNumbers object,
          {FullType specifiedType = FullType.unspecified}) =>
      _toWire[object.name] ?? object.name;

  @override
  PaneldynamicShowQuestionNumbers deserialize(
          Serializers serializers, Object serialized,
          {FullType specifiedType = FullType.unspecified}) =>
      PaneldynamicShowQuestionNumbers.valueOf(
          _fromWire[serialized] ?? (serialized is String ? serialized : ''));
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
