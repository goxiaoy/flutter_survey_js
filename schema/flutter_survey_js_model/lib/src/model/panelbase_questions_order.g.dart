// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'panelbase_questions_order.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const PanelbaseQuestionsOrder _$default_ =
    const PanelbaseQuestionsOrder._('default_');
const PanelbaseQuestionsOrder _$initial =
    const PanelbaseQuestionsOrder._('initial');
const PanelbaseQuestionsOrder _$random =
    const PanelbaseQuestionsOrder._('random');
const PanelbaseQuestionsOrder _$unknownDefaultOpenApi =
    const PanelbaseQuestionsOrder._('unknownDefaultOpenApi');

PanelbaseQuestionsOrder _$valueOf(String name) {
  switch (name) {
    case 'default_':
      return _$default_;
    case 'initial':
      return _$initial;
    case 'random':
      return _$random;
    case 'unknownDefaultOpenApi':
      return _$unknownDefaultOpenApi;
    default:
      return _$unknownDefaultOpenApi;
  }
}

final BuiltSet<PanelbaseQuestionsOrder> _$values =
    new BuiltSet<PanelbaseQuestionsOrder>(const <PanelbaseQuestionsOrder>[
  _$default_,
  _$initial,
  _$random,
  _$unknownDefaultOpenApi,
]);

class _$PanelbaseQuestionsOrderMeta {
  const _$PanelbaseQuestionsOrderMeta();
  PanelbaseQuestionsOrder get default_ => _$default_;
  PanelbaseQuestionsOrder get initial => _$initial;
  PanelbaseQuestionsOrder get random => _$random;
  PanelbaseQuestionsOrder get unknownDefaultOpenApi => _$unknownDefaultOpenApi;
  PanelbaseQuestionsOrder valueOf(String name) => _$valueOf(name);
  BuiltSet<PanelbaseQuestionsOrder> get values => _$values;
}

abstract class _$PanelbaseQuestionsOrderMixin {
  // ignore: non_constant_identifier_names
  _$PanelbaseQuestionsOrderMeta get PanelbaseQuestionsOrder =>
      const _$PanelbaseQuestionsOrderMeta();
}

Serializer<PanelbaseQuestionsOrder> _$panelbaseQuestionsOrderSerializer =
    new _$PanelbaseQuestionsOrderSerializer();

class _$PanelbaseQuestionsOrderSerializer
    implements PrimitiveSerializer<PanelbaseQuestionsOrder> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'default_': 'default',
    'initial': 'initial',
    'random': 'random',
    'unknownDefaultOpenApi': 'unknown_default_open_api',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'default': 'default_',
    'initial': 'initial',
    'random': 'random',
    'unknown_default_open_api': 'unknownDefaultOpenApi',
  };

  @override
  final Iterable<Type> types = const <Type>[PanelbaseQuestionsOrder];
  @override
  final String wireName = 'PanelbaseQuestionsOrder';

  @override
  Object serialize(Serializers serializers, PanelbaseQuestionsOrder object,
          {FullType specifiedType = FullType.unspecified}) =>
      _toWire[object.name] ?? object.name;

  @override
  PanelbaseQuestionsOrder deserialize(
          Serializers serializers, Object serialized,
          {FullType specifiedType = FullType.unspecified}) =>
      PanelbaseQuestionsOrder.valueOf(
          _fromWire[serialized] ?? (serialized is String ? serialized : ''));
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
