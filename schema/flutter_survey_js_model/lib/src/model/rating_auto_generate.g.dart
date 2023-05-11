// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'rating_auto_generate.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const RatingAutoGenerate
    _$trueCommaDoubleQuoteTextDoubleQuoteColonDoubleQuoteGenerateDoubleQuoteRightCurlyBracket =
    const RatingAutoGenerate._(
        'trueCommaDoubleQuoteTextDoubleQuoteColonDoubleQuoteGenerateDoubleQuoteRightCurlyBracket');
const RatingAutoGenerate
    _$falseCommaDoubleQuoteTextDoubleQuoteColonDoubleQuoteEnterManuallyDoubleQuoteRightCurlyBracket =
    const RatingAutoGenerate._(
        'falseCommaDoubleQuoteTextDoubleQuoteColonDoubleQuoteEnterManuallyDoubleQuoteRightCurlyBracket');
const RatingAutoGenerate _$unknownDefaultOpenApi =
    const RatingAutoGenerate._('unknownDefaultOpenApi');

RatingAutoGenerate _$valueOf(String name) {
  switch (name) {
    case 'trueCommaDoubleQuoteTextDoubleQuoteColonDoubleQuoteGenerateDoubleQuoteRightCurlyBracket':
      return _$trueCommaDoubleQuoteTextDoubleQuoteColonDoubleQuoteGenerateDoubleQuoteRightCurlyBracket;
    case 'falseCommaDoubleQuoteTextDoubleQuoteColonDoubleQuoteEnterManuallyDoubleQuoteRightCurlyBracket':
      return _$falseCommaDoubleQuoteTextDoubleQuoteColonDoubleQuoteEnterManuallyDoubleQuoteRightCurlyBracket;
    case 'unknownDefaultOpenApi':
      return _$unknownDefaultOpenApi;
    default:
      return _$unknownDefaultOpenApi;
  }
}

final BuiltSet<RatingAutoGenerate> _$values =
    new BuiltSet<RatingAutoGenerate>(const <RatingAutoGenerate>[
  _$trueCommaDoubleQuoteTextDoubleQuoteColonDoubleQuoteGenerateDoubleQuoteRightCurlyBracket,
  _$falseCommaDoubleQuoteTextDoubleQuoteColonDoubleQuoteEnterManuallyDoubleQuoteRightCurlyBracket,
  _$unknownDefaultOpenApi,
]);

class _$RatingAutoGenerateMeta {
  const _$RatingAutoGenerateMeta();
  RatingAutoGenerate
      get trueCommaDoubleQuoteTextDoubleQuoteColonDoubleQuoteGenerateDoubleQuoteRightCurlyBracket =>
          _$trueCommaDoubleQuoteTextDoubleQuoteColonDoubleQuoteGenerateDoubleQuoteRightCurlyBracket;
  RatingAutoGenerate
      get falseCommaDoubleQuoteTextDoubleQuoteColonDoubleQuoteEnterManuallyDoubleQuoteRightCurlyBracket =>
          _$falseCommaDoubleQuoteTextDoubleQuoteColonDoubleQuoteEnterManuallyDoubleQuoteRightCurlyBracket;
  RatingAutoGenerate get unknownDefaultOpenApi => _$unknownDefaultOpenApi;
  RatingAutoGenerate valueOf(String name) => _$valueOf(name);
  BuiltSet<RatingAutoGenerate> get values => _$values;
}

abstract class _$RatingAutoGenerateMixin {
  // ignore: non_constant_identifier_names
  _$RatingAutoGenerateMeta get RatingAutoGenerate =>
      const _$RatingAutoGenerateMeta();
}

Serializer<RatingAutoGenerate> _$ratingAutoGenerateSerializer =
    new _$RatingAutoGenerateSerializer();

class _$RatingAutoGenerateSerializer
    implements PrimitiveSerializer<RatingAutoGenerate> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'trueCommaDoubleQuoteTextDoubleQuoteColonDoubleQuoteGenerateDoubleQuoteRightCurlyBracket':
        '{\"value\":true,\"text\":\"Generate\"}',
    'falseCommaDoubleQuoteTextDoubleQuoteColonDoubleQuoteEnterManuallyDoubleQuoteRightCurlyBracket':
        '{\"value\":false,\"text\":\"Enter manually\"}',
    'unknownDefaultOpenApi': 'unknown_default_open_api',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    '{\"value\":true,\"text\":\"Generate\"}':
        'trueCommaDoubleQuoteTextDoubleQuoteColonDoubleQuoteGenerateDoubleQuoteRightCurlyBracket',
    '{\"value\":false,\"text\":\"Enter manually\"}':
        'falseCommaDoubleQuoteTextDoubleQuoteColonDoubleQuoteEnterManuallyDoubleQuoteRightCurlyBracket',
    'unknown_default_open_api': 'unknownDefaultOpenApi',
  };

  @override
  final Iterable<Type> types = const <Type>[RatingAutoGenerate];
  @override
  final String wireName = 'RatingAutoGenerate';

  @override
  Object serialize(Serializers serializers, RatingAutoGenerate object,
          {FullType specifiedType = FullType.unspecified}) =>
      _toWire[object.name] ?? object.name;

  @override
  RatingAutoGenerate deserialize(Serializers serializers, Object serialized,
          {FullType specifiedType = FullType.unspecified}) =>
      RatingAutoGenerate.valueOf(
          _fromWire[serialized] ?? (serialized is String ? serialized : ''));
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
