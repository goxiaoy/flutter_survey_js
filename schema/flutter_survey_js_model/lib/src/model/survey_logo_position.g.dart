// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'survey_logo_position.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const SurveyLogoPosition _$none = const SurveyLogoPosition._('none');
const SurveyLogoPosition _$left = const SurveyLogoPosition._('left');
const SurveyLogoPosition _$right = const SurveyLogoPosition._('right');
const SurveyLogoPosition _$top = const SurveyLogoPosition._('top');
const SurveyLogoPosition _$bottom = const SurveyLogoPosition._('bottom');
const SurveyLogoPosition _$unknownDefaultOpenApi =
    const SurveyLogoPosition._('unknownDefaultOpenApi');

SurveyLogoPosition _$valueOf(String name) {
  switch (name) {
    case 'none':
      return _$none;
    case 'left':
      return _$left;
    case 'right':
      return _$right;
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

final BuiltSet<SurveyLogoPosition> _$values =
    new BuiltSet<SurveyLogoPosition>(const <SurveyLogoPosition>[
  _$none,
  _$left,
  _$right,
  _$top,
  _$bottom,
  _$unknownDefaultOpenApi,
]);

class _$SurveyLogoPositionMeta {
  const _$SurveyLogoPositionMeta();
  SurveyLogoPosition get none => _$none;
  SurveyLogoPosition get left => _$left;
  SurveyLogoPosition get right => _$right;
  SurveyLogoPosition get top => _$top;
  SurveyLogoPosition get bottom => _$bottom;
  SurveyLogoPosition get unknownDefaultOpenApi => _$unknownDefaultOpenApi;
  SurveyLogoPosition valueOf(String name) => _$valueOf(name);
  BuiltSet<SurveyLogoPosition> get values => _$values;
}

abstract class _$SurveyLogoPositionMixin {
  // ignore: non_constant_identifier_names
  _$SurveyLogoPositionMeta get SurveyLogoPosition =>
      const _$SurveyLogoPositionMeta();
}

Serializer<SurveyLogoPosition> _$surveyLogoPositionSerializer =
    new _$SurveyLogoPositionSerializer();

class _$SurveyLogoPositionSerializer
    implements PrimitiveSerializer<SurveyLogoPosition> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'none': 'none',
    'left': 'left',
    'right': 'right',
    'top': 'top',
    'bottom': 'bottom',
    'unknownDefaultOpenApi': 'unknown_default_open_api',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'none': 'none',
    'left': 'left',
    'right': 'right',
    'top': 'top',
    'bottom': 'bottom',
    'unknown_default_open_api': 'unknownDefaultOpenApi',
  };

  @override
  final Iterable<Type> types = const <Type>[SurveyLogoPosition];
  @override
  final String wireName = 'SurveyLogoPosition';

  @override
  Object serialize(Serializers serializers, SurveyLogoPosition object,
          {FullType specifiedType = FullType.unspecified}) =>
      _toWire[object.name] ?? object.name;

  @override
  SurveyLogoPosition deserialize(Serializers serializers, Object serialized,
          {FullType specifiedType = FullType.unspecified}) =>
      SurveyLogoPosition.valueOf(
          _fromWire[serialized] ?? (serialized is String ? serialized : ''));
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
