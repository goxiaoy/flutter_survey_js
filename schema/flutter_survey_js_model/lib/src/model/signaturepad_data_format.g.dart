// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'signaturepad_data_format.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const SignaturepadDataFormat
    _$doubleQuoteCommaDoubleQuoteTextDoubleQuoteColonDoubleQuotePNGDoubleQuoteRightCurlyBracket =
    const SignaturepadDataFormat._(
        'doubleQuoteCommaDoubleQuoteTextDoubleQuoteColonDoubleQuotePNGDoubleQuoteRightCurlyBracket');
const SignaturepadDataFormat
    _$imageSlashJpegDoubleQuoteCommaDoubleQuoteTextDoubleQuoteColonDoubleQuoteJPEGDoubleQuoteRightCurlyBracket =
    const SignaturepadDataFormat._(
        'imageSlashJpegDoubleQuoteCommaDoubleQuoteTextDoubleQuoteColonDoubleQuoteJPEGDoubleQuoteRightCurlyBracket');
const SignaturepadDataFormat
    _$imageSlashSvgPlusXmlDoubleQuoteCommaDoubleQuoteTextDoubleQuoteColonDoubleQuoteSVGDoubleQuoteRightCurlyBracket =
    const SignaturepadDataFormat._(
        'imageSlashSvgPlusXmlDoubleQuoteCommaDoubleQuoteTextDoubleQuoteColonDoubleQuoteSVGDoubleQuoteRightCurlyBracket');
const SignaturepadDataFormat _$unknownDefaultOpenApi =
    const SignaturepadDataFormat._('unknownDefaultOpenApi');

SignaturepadDataFormat _$valueOf(String name) {
  switch (name) {
    case 'doubleQuoteCommaDoubleQuoteTextDoubleQuoteColonDoubleQuotePNGDoubleQuoteRightCurlyBracket':
      return _$doubleQuoteCommaDoubleQuoteTextDoubleQuoteColonDoubleQuotePNGDoubleQuoteRightCurlyBracket;
    case 'imageSlashJpegDoubleQuoteCommaDoubleQuoteTextDoubleQuoteColonDoubleQuoteJPEGDoubleQuoteRightCurlyBracket':
      return _$imageSlashJpegDoubleQuoteCommaDoubleQuoteTextDoubleQuoteColonDoubleQuoteJPEGDoubleQuoteRightCurlyBracket;
    case 'imageSlashSvgPlusXmlDoubleQuoteCommaDoubleQuoteTextDoubleQuoteColonDoubleQuoteSVGDoubleQuoteRightCurlyBracket':
      return _$imageSlashSvgPlusXmlDoubleQuoteCommaDoubleQuoteTextDoubleQuoteColonDoubleQuoteSVGDoubleQuoteRightCurlyBracket;
    case 'unknownDefaultOpenApi':
      return _$unknownDefaultOpenApi;
    default:
      return _$unknownDefaultOpenApi;
  }
}

final BuiltSet<SignaturepadDataFormat> _$values =
    new BuiltSet<SignaturepadDataFormat>(const <SignaturepadDataFormat>[
  _$doubleQuoteCommaDoubleQuoteTextDoubleQuoteColonDoubleQuotePNGDoubleQuoteRightCurlyBracket,
  _$imageSlashJpegDoubleQuoteCommaDoubleQuoteTextDoubleQuoteColonDoubleQuoteJPEGDoubleQuoteRightCurlyBracket,
  _$imageSlashSvgPlusXmlDoubleQuoteCommaDoubleQuoteTextDoubleQuoteColonDoubleQuoteSVGDoubleQuoteRightCurlyBracket,
  _$unknownDefaultOpenApi,
]);

class _$SignaturepadDataFormatMeta {
  const _$SignaturepadDataFormatMeta();
  SignaturepadDataFormat
      get doubleQuoteCommaDoubleQuoteTextDoubleQuoteColonDoubleQuotePNGDoubleQuoteRightCurlyBracket =>
          _$doubleQuoteCommaDoubleQuoteTextDoubleQuoteColonDoubleQuotePNGDoubleQuoteRightCurlyBracket;
  SignaturepadDataFormat
      get imageSlashJpegDoubleQuoteCommaDoubleQuoteTextDoubleQuoteColonDoubleQuoteJPEGDoubleQuoteRightCurlyBracket =>
          _$imageSlashJpegDoubleQuoteCommaDoubleQuoteTextDoubleQuoteColonDoubleQuoteJPEGDoubleQuoteRightCurlyBracket;
  SignaturepadDataFormat
      get imageSlashSvgPlusXmlDoubleQuoteCommaDoubleQuoteTextDoubleQuoteColonDoubleQuoteSVGDoubleQuoteRightCurlyBracket =>
          _$imageSlashSvgPlusXmlDoubleQuoteCommaDoubleQuoteTextDoubleQuoteColonDoubleQuoteSVGDoubleQuoteRightCurlyBracket;
  SignaturepadDataFormat get unknownDefaultOpenApi => _$unknownDefaultOpenApi;
  SignaturepadDataFormat valueOf(String name) => _$valueOf(name);
  BuiltSet<SignaturepadDataFormat> get values => _$values;
}

abstract class _$SignaturepadDataFormatMixin {
  // ignore: non_constant_identifier_names
  _$SignaturepadDataFormatMeta get SignaturepadDataFormat =>
      const _$SignaturepadDataFormatMeta();
}

Serializer<SignaturepadDataFormat> _$signaturepadDataFormatSerializer =
    new _$SignaturepadDataFormatSerializer();

class _$SignaturepadDataFormatSerializer
    implements PrimitiveSerializer<SignaturepadDataFormat> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'doubleQuoteCommaDoubleQuoteTextDoubleQuoteColonDoubleQuotePNGDoubleQuoteRightCurlyBracket':
        '{\"value\":\"\",\"text\":\"PNG\"}',
    'imageSlashJpegDoubleQuoteCommaDoubleQuoteTextDoubleQuoteColonDoubleQuoteJPEGDoubleQuoteRightCurlyBracket':
        '{\"value\":\"image/jpeg\",\"text\":\"JPEG\"}',
    'imageSlashSvgPlusXmlDoubleQuoteCommaDoubleQuoteTextDoubleQuoteColonDoubleQuoteSVGDoubleQuoteRightCurlyBracket':
        '{\"value\":\"image/svg+xml\",\"text\":\"SVG\"}',
    'unknownDefaultOpenApi': 'unknown_default_open_api',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    '{\"value\":\"\",\"text\":\"PNG\"}':
        'doubleQuoteCommaDoubleQuoteTextDoubleQuoteColonDoubleQuotePNGDoubleQuoteRightCurlyBracket',
    '{\"value\":\"image/jpeg\",\"text\":\"JPEG\"}':
        'imageSlashJpegDoubleQuoteCommaDoubleQuoteTextDoubleQuoteColonDoubleQuoteJPEGDoubleQuoteRightCurlyBracket',
    '{\"value\":\"image/svg+xml\",\"text\":\"SVG\"}':
        'imageSlashSvgPlusXmlDoubleQuoteCommaDoubleQuoteTextDoubleQuoteColonDoubleQuoteSVGDoubleQuoteRightCurlyBracket',
    'unknown_default_open_api': 'unknownDefaultOpenApi',
  };

  @override
  final Iterable<Type> types = const <Type>[SignaturepadDataFormat];
  @override
  final String wireName = 'SignaturepadDataFormat';

  @override
  Object serialize(Serializers serializers, SignaturepadDataFormat object,
          {FullType specifiedType = FullType.unspecified}) =>
      _toWire[object.name] ?? object.name;

  @override
  SignaturepadDataFormat deserialize(Serializers serializers, Object serialized,
          {FullType specifiedType = FullType.unspecified}) =>
      SignaturepadDataFormat.valueOf(
          _fromWire[serialized] ?? (serialized is String ? serialized : ''));
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
