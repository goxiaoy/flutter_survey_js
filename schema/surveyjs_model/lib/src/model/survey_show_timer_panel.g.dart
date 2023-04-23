// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'survey_show_timer_panel.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const SurveyShowTimerPanel _$none = const SurveyShowTimerPanel._('none');
const SurveyShowTimerPanel _$top = const SurveyShowTimerPanel._('top');
const SurveyShowTimerPanel _$bottom = const SurveyShowTimerPanel._('bottom');
const SurveyShowTimerPanel _$unknownDefaultOpenApi =
    const SurveyShowTimerPanel._('unknownDefaultOpenApi');

SurveyShowTimerPanel _$valueOf(String name) {
  switch (name) {
    case 'none':
      return _$none;
    case 'top':
      return _$top;
    case 'bottom':
      return _$bottom;
    case 'unknownDefaultOpenApi':
      return _$unknownDefaultOpenApi;
    default:
      return _$unknownDefaultOpenApi;
  }
}

final BuiltSet<SurveyShowTimerPanel> _$values =
    new BuiltSet<SurveyShowTimerPanel>(const <SurveyShowTimerPanel>[
  _$none,
  _$top,
  _$bottom,
  _$unknownDefaultOpenApi,
]);

class _$SurveyShowTimerPanelMeta {
  const _$SurveyShowTimerPanelMeta();
  SurveyShowTimerPanel get none => _$none;
  SurveyShowTimerPanel get top => _$top;
  SurveyShowTimerPanel get bottom => _$bottom;
  SurveyShowTimerPanel get unknownDefaultOpenApi => _$unknownDefaultOpenApi;
  SurveyShowTimerPanel valueOf(String name) => _$valueOf(name);
  BuiltSet<SurveyShowTimerPanel> get values => _$values;
}

abstract class _$SurveyShowTimerPanelMixin {
  // ignore: non_constant_identifier_names
  _$SurveyShowTimerPanelMeta get SurveyShowTimerPanel =>
      const _$SurveyShowTimerPanelMeta();
}

Serializer<SurveyShowTimerPanel> _$surveyShowTimerPanelSerializer =
    new _$SurveyShowTimerPanelSerializer();

class _$SurveyShowTimerPanelSerializer
    implements PrimitiveSerializer<SurveyShowTimerPanel> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'none': 'none',
    'top': 'top',
    'bottom': 'bottom',
    'unknownDefaultOpenApi': 'unknown_default_open_api',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'none': 'none',
    'top': 'top',
    'bottom': 'bottom',
    'unknown_default_open_api': 'unknownDefaultOpenApi',
  };

  @override
  final Iterable<Type> types = const <Type>[SurveyShowTimerPanel];
  @override
  final String wireName = 'SurveyShowTimerPanel';

  @override
  Object serialize(Serializers serializers, SurveyShowTimerPanel object,
          {FullType specifiedType = FullType.unspecified}) =>
      _toWire[object.name] ?? object.name;

  @override
  SurveyShowTimerPanel deserialize(Serializers serializers, Object serialized,
          {FullType specifiedType = FullType.unspecified}) =>
      SurveyShowTimerPanel.valueOf(
          _fromWire[serialized] ?? (serialized is String ? serialized : ''));
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
