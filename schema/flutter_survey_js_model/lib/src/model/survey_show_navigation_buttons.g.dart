// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'survey_show_navigation_buttons.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const SurveyShowNavigationButtons _$none =
    const SurveyShowNavigationButtons._('none');
const SurveyShowNavigationButtons _$top =
    const SurveyShowNavigationButtons._('top');
const SurveyShowNavigationButtons _$bottom =
    const SurveyShowNavigationButtons._('bottom');
const SurveyShowNavigationButtons _$both =
    const SurveyShowNavigationButtons._('both');
const SurveyShowNavigationButtons _$unknownDefaultOpenApi =
    const SurveyShowNavigationButtons._('unknownDefaultOpenApi');

SurveyShowNavigationButtons _$valueOf(String name) {
  switch (name) {
    case 'none':
      return _$none;
    case 'top':
      return _$top;
    case 'bottom':
      return _$bottom;
    case 'both':
      return _$both;
    case 'unknownDefaultOpenApi':
      return _$unknownDefaultOpenApi;
    default:
      return _$unknownDefaultOpenApi;
  }
}

final BuiltSet<SurveyShowNavigationButtons> _$values = new BuiltSet<
    SurveyShowNavigationButtons>(const <SurveyShowNavigationButtons>[
  _$none,
  _$top,
  _$bottom,
  _$both,
  _$unknownDefaultOpenApi,
]);

class _$SurveyShowNavigationButtonsMeta {
  const _$SurveyShowNavigationButtonsMeta();
  SurveyShowNavigationButtons get none => _$none;
  SurveyShowNavigationButtons get top => _$top;
  SurveyShowNavigationButtons get bottom => _$bottom;
  SurveyShowNavigationButtons get both => _$both;
  SurveyShowNavigationButtons get unknownDefaultOpenApi =>
      _$unknownDefaultOpenApi;
  SurveyShowNavigationButtons valueOf(String name) => _$valueOf(name);
  BuiltSet<SurveyShowNavigationButtons> get values => _$values;
}

abstract class _$SurveyShowNavigationButtonsMixin {
  // ignore: non_constant_identifier_names
  _$SurveyShowNavigationButtonsMeta get SurveyShowNavigationButtons =>
      const _$SurveyShowNavigationButtonsMeta();
}

Serializer<SurveyShowNavigationButtons>
    _$surveyShowNavigationButtonsSerializer =
    new _$SurveyShowNavigationButtonsSerializer();

class _$SurveyShowNavigationButtonsSerializer
    implements PrimitiveSerializer<SurveyShowNavigationButtons> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'none': 'none',
    'top': 'top',
    'bottom': 'bottom',
    'both': 'both',
    'unknownDefaultOpenApi': 'unknown_default_open_api',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'none': 'none',
    'top': 'top',
    'bottom': 'bottom',
    'both': 'both',
    'unknown_default_open_api': 'unknownDefaultOpenApi',
  };

  @override
  final Iterable<Type> types = const <Type>[SurveyShowNavigationButtons];
  @override
  final String wireName = 'SurveyShowNavigationButtons';

  @override
  Object serialize(Serializers serializers, SurveyShowNavigationButtons object,
          {FullType specifiedType = FullType.unspecified}) =>
      _toWire[object.name] ?? object.name;

  @override
  SurveyShowNavigationButtons deserialize(
          Serializers serializers, Object serialized,
          {FullType specifiedType = FullType.unspecified}) =>
      SurveyShowNavigationButtons.valueOf(
          _fromWire[serialized] ?? (serialized is String ? serialized : ''));
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
