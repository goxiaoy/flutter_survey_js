// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'survey_locale.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const SurveyLocale _$empty = const SurveyLocale._('empty');
const SurveyLocale _$unknownDefaultOpenApi =
    const SurveyLocale._('unknownDefaultOpenApi');

SurveyLocale _$valueOf(String name) {
  switch (name) {
    case 'empty':
      return _$empty;
    case 'unknownDefaultOpenApi':
      return _$unknownDefaultOpenApi;
    default:
      return _$unknownDefaultOpenApi;
  }
}

final BuiltSet<SurveyLocale> _$values =
    new BuiltSet<SurveyLocale>(const <SurveyLocale>[
  _$empty,
  _$unknownDefaultOpenApi,
]);

class _$SurveyLocaleMeta {
  const _$SurveyLocaleMeta();
  SurveyLocale get empty => _$empty;
  SurveyLocale get unknownDefaultOpenApi => _$unknownDefaultOpenApi;
  SurveyLocale valueOf(String name) => _$valueOf(name);
  BuiltSet<SurveyLocale> get values => _$values;
}

abstract class _$SurveyLocaleMixin {
  // ignore: non_constant_identifier_names
  _$SurveyLocaleMeta get SurveyLocale => const _$SurveyLocaleMeta();
}

Serializer<SurveyLocale> _$surveyLocaleSerializer =
    new _$SurveyLocaleSerializer();

class _$SurveyLocaleSerializer implements PrimitiveSerializer<SurveyLocale> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'empty': '',
    'unknownDefaultOpenApi': 'unknown_default_open_api',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    '': 'empty',
    'unknown_default_open_api': 'unknownDefaultOpenApi',
  };

  @override
  final Iterable<Type> types = const <Type>[SurveyLocale];
  @override
  final String wireName = 'SurveyLocale';

  @override
  Object serialize(Serializers serializers, SurveyLocale object,
          {FullType specifiedType = FullType.unspecified}) =>
      _toWire[object.name] ?? object.name;

  @override
  SurveyLocale deserialize(Serializers serializers, Object serialized,
          {FullType specifiedType = FullType.unspecified}) =>
      SurveyLocale.valueOf(
          _fromWire[serialized] ?? (serialized is String ? serialized : ''));
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
