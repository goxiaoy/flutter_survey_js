// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'panel_show_question_numbers.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const PanelShowQuestionNumbers _$default_ =
    const PanelShowQuestionNumbers._('default_');
const PanelShowQuestionNumbers _$onpanel =
    const PanelShowQuestionNumbers._('onpanel');
const PanelShowQuestionNumbers _$off = const PanelShowQuestionNumbers._('off');
const PanelShowQuestionNumbers _$unknownDefaultOpenApi =
    const PanelShowQuestionNumbers._('unknownDefaultOpenApi');

PanelShowQuestionNumbers _$valueOf(String name) {
  switch (name) {
    case 'default_':
      return _$default_;
    case 'onpanel':
      return _$onpanel;
    case 'off':
      return _$off;
    case 'unknownDefaultOpenApi':
      return _$unknownDefaultOpenApi;
    default:
      return _$unknownDefaultOpenApi;
  }
}

final BuiltSet<PanelShowQuestionNumbers> _$values =
    new BuiltSet<PanelShowQuestionNumbers>(const <PanelShowQuestionNumbers>[
  _$default_,
  _$onpanel,
  _$off,
  _$unknownDefaultOpenApi,
]);

class _$PanelShowQuestionNumbersMeta {
  const _$PanelShowQuestionNumbersMeta();
  PanelShowQuestionNumbers get default_ => _$default_;
  PanelShowQuestionNumbers get onpanel => _$onpanel;
  PanelShowQuestionNumbers get off => _$off;
  PanelShowQuestionNumbers get unknownDefaultOpenApi => _$unknownDefaultOpenApi;
  PanelShowQuestionNumbers valueOf(String name) => _$valueOf(name);
  BuiltSet<PanelShowQuestionNumbers> get values => _$values;
}

abstract class _$PanelShowQuestionNumbersMixin {
  // ignore: non_constant_identifier_names
  _$PanelShowQuestionNumbersMeta get PanelShowQuestionNumbers =>
      const _$PanelShowQuestionNumbersMeta();
}

Serializer<PanelShowQuestionNumbers> _$panelShowQuestionNumbersSerializer =
    new _$PanelShowQuestionNumbersSerializer();

class _$PanelShowQuestionNumbersSerializer
    implements PrimitiveSerializer<PanelShowQuestionNumbers> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'default_': 'default',
    'onpanel': 'onpanel',
    'off': 'off',
    'unknownDefaultOpenApi': 'unknown_default_open_api',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'default': 'default_',
    'onpanel': 'onpanel',
    'off': 'off',
    'unknown_default_open_api': 'unknownDefaultOpenApi',
  };

  @override
  final Iterable<Type> types = const <Type>[PanelShowQuestionNumbers];
  @override
  final String wireName = 'PanelShowQuestionNumbers';

  @override
  Object serialize(Serializers serializers, PanelShowQuestionNumbers object,
          {FullType specifiedType = FullType.unspecified}) =>
      _toWire[object.name] ?? object.name;

  @override
  PanelShowQuestionNumbers deserialize(
          Serializers serializers, Object serialized,
          {FullType specifiedType = FullType.unspecified}) =>
      PanelShowQuestionNumbers.valueOf(
          _fromWire[serialized] ?? (serialized is String ? serialized : ''));
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
