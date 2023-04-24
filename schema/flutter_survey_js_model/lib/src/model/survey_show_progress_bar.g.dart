// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'survey_show_progress_bar.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const SurveyShowProgressBar _$false_ = const SurveyShowProgressBar._('false_');
const SurveyShowProgressBar _$top = const SurveyShowProgressBar._('top');
const SurveyShowProgressBar _$bottom = const SurveyShowProgressBar._('bottom');
const SurveyShowProgressBar _$both = const SurveyShowProgressBar._('both');
const SurveyShowProgressBar _$unknownDefaultOpenApi =
    const SurveyShowProgressBar._('unknownDefaultOpenApi');

SurveyShowProgressBar _$valueOf(String name) {
  switch (name) {
    case 'false_':
      return _$false_;
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

final BuiltSet<SurveyShowProgressBar> _$values =
    new BuiltSet<SurveyShowProgressBar>(const <SurveyShowProgressBar>[
  _$false_,
  _$top,
  _$bottom,
  _$both,
  _$unknownDefaultOpenApi,
]);

class _$SurveyShowProgressBarMeta {
  const _$SurveyShowProgressBarMeta();
  SurveyShowProgressBar get false_ => _$false_;
  SurveyShowProgressBar get top => _$top;
  SurveyShowProgressBar get bottom => _$bottom;
  SurveyShowProgressBar get both => _$both;
  SurveyShowProgressBar get unknownDefaultOpenApi => _$unknownDefaultOpenApi;
  SurveyShowProgressBar valueOf(String name) => _$valueOf(name);
  BuiltSet<SurveyShowProgressBar> get values => _$values;
}

abstract class _$SurveyShowProgressBarMixin {
  // ignore: non_constant_identifier_names
  _$SurveyShowProgressBarMeta get SurveyShowProgressBar =>
      const _$SurveyShowProgressBarMeta();
}

Serializer<SurveyShowProgressBar> _$surveyShowProgressBarSerializer =
    new _$SurveyShowProgressBarSerializer();

class _$SurveyShowProgressBarSerializer
    implements PrimitiveSerializer<SurveyShowProgressBar> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'false_': 'false',
    'top': 'top',
    'bottom': 'bottom',
    'both': 'both',
    'unknownDefaultOpenApi': 'unknown_default_open_api',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'false': 'false_',
    'top': 'top',
    'bottom': 'bottom',
    'both': 'both',
    'unknown_default_open_api': 'unknownDefaultOpenApi',
  };

  @override
  final Iterable<Type> types = const <Type>[SurveyShowProgressBar];
  @override
  final String wireName = 'SurveyShowProgressBar';

  @override
  Object serialize(Serializers serializers, SurveyShowProgressBar object,
          {FullType specifiedType = FullType.unspecified}) =>
      _toWire[object.name] ?? object.name;

  @override
  SurveyShowProgressBar deserialize(Serializers serializers, Object serialized,
          {FullType specifiedType = FullType.unspecified}) =>
      SurveyShowProgressBar.valueOf(
          _fromWire[serialized] ?? (serialized is String ? serialized : ''));
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
