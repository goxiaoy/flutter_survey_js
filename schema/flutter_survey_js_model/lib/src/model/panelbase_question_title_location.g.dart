// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'panelbase_question_title_location.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const PanelbaseQuestionTitleLocation _$default_ =
    const PanelbaseQuestionTitleLocation._('default_');
const PanelbaseQuestionTitleLocation _$top =
    const PanelbaseQuestionTitleLocation._('top');
const PanelbaseQuestionTitleLocation _$bottom =
    const PanelbaseQuestionTitleLocation._('bottom');
const PanelbaseQuestionTitleLocation _$left =
    const PanelbaseQuestionTitleLocation._('left');
const PanelbaseQuestionTitleLocation _$hidden =
    const PanelbaseQuestionTitleLocation._('hidden');
const PanelbaseQuestionTitleLocation _$unknownDefaultOpenApi =
    const PanelbaseQuestionTitleLocation._('unknownDefaultOpenApi');

PanelbaseQuestionTitleLocation _$valueOf(String name) {
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

final BuiltSet<PanelbaseQuestionTitleLocation> _$values = new BuiltSet<
    PanelbaseQuestionTitleLocation>(const <PanelbaseQuestionTitleLocation>[
  _$default_,
  _$top,
  _$bottom,
  _$left,
  _$hidden,
  _$unknownDefaultOpenApi,
]);

class _$PanelbaseQuestionTitleLocationMeta {
  const _$PanelbaseQuestionTitleLocationMeta();
  PanelbaseQuestionTitleLocation get default_ => _$default_;
  PanelbaseQuestionTitleLocation get top => _$top;
  PanelbaseQuestionTitleLocation get bottom => _$bottom;
  PanelbaseQuestionTitleLocation get left => _$left;
  PanelbaseQuestionTitleLocation get hidden => _$hidden;
  PanelbaseQuestionTitleLocation get unknownDefaultOpenApi =>
      _$unknownDefaultOpenApi;
  PanelbaseQuestionTitleLocation valueOf(String name) => _$valueOf(name);
  BuiltSet<PanelbaseQuestionTitleLocation> get values => _$values;
}

abstract class _$PanelbaseQuestionTitleLocationMixin {
  // ignore: non_constant_identifier_names
  _$PanelbaseQuestionTitleLocationMeta get PanelbaseQuestionTitleLocation =>
      const _$PanelbaseQuestionTitleLocationMeta();
}

Serializer<PanelbaseQuestionTitleLocation>
    _$panelbaseQuestionTitleLocationSerializer =
    new _$PanelbaseQuestionTitleLocationSerializer();

class _$PanelbaseQuestionTitleLocationSerializer
    implements PrimitiveSerializer<PanelbaseQuestionTitleLocation> {
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
  final Iterable<Type> types = const <Type>[PanelbaseQuestionTitleLocation];
  @override
  final String wireName = 'PanelbaseQuestionTitleLocation';

  @override
  Object serialize(
          Serializers serializers, PanelbaseQuestionTitleLocation object,
          {FullType specifiedType = FullType.unspecified}) =>
      _toWire[object.name] ?? object.name;

  @override
  PanelbaseQuestionTitleLocation deserialize(
          Serializers serializers, Object serialized,
          {FullType specifiedType = FullType.unspecified}) =>
      PanelbaseQuestionTitleLocation.valueOf(
          _fromWire[serialized] ?? (serialized is String ? serialized : ''));
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
