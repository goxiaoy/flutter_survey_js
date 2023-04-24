//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'signaturepad_data_format.g.dart';

class SignaturepadDataFormat extends EnumClass {

  @BuiltValueEnumConst(wireName: r'{\"value\":\"\",\"text\":\"PNG\"}')
  static const SignaturepadDataFormat doubleQuoteCommaDoubleQuoteTextDoubleQuoteColonDoubleQuotePNGDoubleQuoteRightCurlyBracket = _$doubleQuoteCommaDoubleQuoteTextDoubleQuoteColonDoubleQuotePNGDoubleQuoteRightCurlyBracket;
  @BuiltValueEnumConst(wireName: r'{\"value\":\"image/jpeg\",\"text\":\"JPEG\"}')
  static const SignaturepadDataFormat imageSlashJpegDoubleQuoteCommaDoubleQuoteTextDoubleQuoteColonDoubleQuoteJPEGDoubleQuoteRightCurlyBracket = _$imageSlashJpegDoubleQuoteCommaDoubleQuoteTextDoubleQuoteColonDoubleQuoteJPEGDoubleQuoteRightCurlyBracket;
  @BuiltValueEnumConst(wireName: r'{\"value\":\"image/svg+xml\",\"text\":\"SVG\"}')
  static const SignaturepadDataFormat imageSlashSvgPlusXmlDoubleQuoteCommaDoubleQuoteTextDoubleQuoteColonDoubleQuoteSVGDoubleQuoteRightCurlyBracket = _$imageSlashSvgPlusXmlDoubleQuoteCommaDoubleQuoteTextDoubleQuoteColonDoubleQuoteSVGDoubleQuoteRightCurlyBracket;
  @BuiltValueEnumConst(wireName: r'unknown_default_open_api', fallback: true)
  static const SignaturepadDataFormat unknownDefaultOpenApi = _$unknownDefaultOpenApi;

  static Serializer<SignaturepadDataFormat> get serializer => _$signaturepadDataFormatSerializer;

  const SignaturepadDataFormat._(String name): super(name);

  static BuiltSet<SignaturepadDataFormat> get values => _$values;
  static SignaturepadDataFormat valueOf(String name) => _$valueOf(name);
}

/// Optionally, enum_class can generate a mixin to go with your enum for use
/// with Angular. It exposes your enum constants as getters. So, if you mix it
/// in to your Dart component class, the values become available to the
/// corresponding Angular template.
///
/// Trigger mixin generation by writing a line like this one next to your enum.
abstract class SignaturepadDataFormatMixin = Object with _$SignaturepadDataFormatMixin;

