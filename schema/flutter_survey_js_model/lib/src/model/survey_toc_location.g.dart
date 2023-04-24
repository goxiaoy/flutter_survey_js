// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'survey_toc_location.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const SurveyTocLocation _$left = const SurveyTocLocation._('left');
const SurveyTocLocation _$right = const SurveyTocLocation._('right');
const SurveyTocLocation _$unknownDefaultOpenApi =
    const SurveyTocLocation._('unknownDefaultOpenApi');

SurveyTocLocation _$valueOf(String name) {
  switch (name) {
    case 'left':
      return _$left;
    case 'right':
      return _$right;
    case 'unknownDefaultOpenApi':
      return _$unknownDefaultOpenApi;
    default:
      return _$unknownDefaultOpenApi;
  }
}

final BuiltSet<SurveyTocLocation> _$values =
    new BuiltSet<SurveyTocLocation>(const <SurveyTocLocation>[
  _$left,
  _$right,
  _$unknownDefaultOpenApi,
]);

class _$SurveyTocLocationMeta {
  const _$SurveyTocLocationMeta();
  SurveyTocLocation get left => _$left;
  SurveyTocLocation get right => _$right;
  SurveyTocLocation get unknownDefaultOpenApi => _$unknownDefaultOpenApi;
  SurveyTocLocation valueOf(String name) => _$valueOf(name);
  BuiltSet<SurveyTocLocation> get values => _$values;
}

abstract class _$SurveyTocLocationMixin {
  // ignore: non_constant_identifier_names
  _$SurveyTocLocationMeta get SurveyTocLocation =>
      const _$SurveyTocLocationMeta();
}

Serializer<SurveyTocLocation> _$surveyTocLocationSerializer =
    new _$SurveyTocLocationSerializer();

class _$SurveyTocLocationSerializer
    implements PrimitiveSerializer<SurveyTocLocation> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'left': 'left',
    'right': 'right',
    'unknownDefaultOpenApi': 'unknown_default_open_api',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'left': 'left',
    'right': 'right',
    'unknown_default_open_api': 'unknownDefaultOpenApi',
  };

  @override
  final Iterable<Type> types = const <Type>[SurveyTocLocation];
  @override
  final String wireName = 'SurveyTocLocation';

  @override
  Object serialize(Serializers serializers, SurveyTocLocation object,
          {FullType specifiedType = FullType.unspecified}) =>
      _toWire[object.name] ?? object.name;

  @override
  SurveyTocLocation deserialize(Serializers serializers, Object serialized,
          {FullType specifiedType = FullType.unspecified}) =>
      SurveyTocLocation.valueOf(
          _fromWire[serialized] ?? (serialized is String ? serialized : ''));
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
