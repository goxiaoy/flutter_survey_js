//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:flutter_survey_js_model/src/model/expression_display_style.dart';
import 'package:flutter_survey_js_model/src/model/expression_currency.dart';
import 'package:built_value/json_object.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'expression_all_of.g.dart';

/// ExpressionAllOf
///
/// Properties:
/// * [expression] 
/// * [format] 
/// * [displayStyle] 
/// * [currency] 
/// * [maximumFractionDigits] 
/// * [minimumFractionDigits] 
/// * [useGrouping] 
/// * [enableIf] 
/// * [isRequired] 
/// * [readOnly] 
/// * [requiredErrorText] 
/// * [defaultValueExpression] 
/// * [defaultValue] 
/// * [correctAnswer] 
/// * [requiredIf] 
@BuiltValue(instantiable: false)
abstract class ExpressionAllOf  {
  @BuiltValueField(wireName: r'expression')
  String? get expression;

  @BuiltValueField(wireName: r'format')
  String? get format;

  @BuiltValueField(wireName: r'displayStyle')
  ExpressionDisplayStyle? get displayStyle;
  // enum displayStyleEnum {  none,  decimal,  currency,  percent,  date,  };

  @BuiltValueField(wireName: r'currency')
  ExpressionCurrency? get currency;
  // enum currencyEnum {  AED,  AFN,  ALL,  AMD,  ANG,  AOA,  ARS,  AUD,  AWG,  AZN,  BAM,  BBD,  BDT,  BGN,  BHD,  BIF,  BMD,  BND,  BOB,  BOV,  BRL,  BSD,  BTN,  BWP,  BYN,  BZD,  CAD,  CDF,  CHE,  CHF,  CHW,  CLF,  CLP,  CNY,  COP,  COU,  CRC,  CUC,  CUP,  CVE,  CZK,  DJF,  DKK,  DOP,  DZD,  EGP,  ERN,  ETB,  EUR,  FJD,  FKP,  GBP,  GEL,  GHS,  GIP,  GMD,  GNF,  GTQ,  GYD,  HKD,  HNL,  HRK,  HTG,  HUF,  IDR,  ILS,  INR,  IQD,  IRR,  ISK,  JMD,  JOD,  JPY,  KES,  KGS,  KHR,  KMF,  KPW,  KRW,  KWD,  KYD,  KZT,  LAK,  LBP,  LKR,  LRD,  LSL,  LYD,  MAD,  MDL,  MGA,  MKD,  MMK,  MNT,  MOP,  MRO,  MUR,  MVR,  MWK,  MXN,  MXV,  MYR,  MZN,  NAD,  NGN,  NIO,  NOK,  NPR,  NZD,  OMR,  PAB,  PEN,  PGK,  PHP,  PKR,  PLN,  PYG,  QAR,  RON,  RSD,  RUB,  RWF,  SAR,  SBD,  SCR,  SDG,  SEK,  SGD,  SHP,  SLL,  SOS,  SRD,  SSP,  STD,  SVC,  SYP,  SZL,  THB,  TJS,  TMT,  TND,  TOP,  TRY,  TTD,  TWD,  TZS,  UAH,  UGX,  USD,  USN,  UYI,  UYU,  UZS,  VEF,  VND,  VUV,  WST,  XAF,  XAG,  XAU,  XBA,  XBB,  XBC,  XBD,  XCD,  XDR,  XOF,  XPD,  XPF,  XPT,  XSU,  XTS,  XUA,  XXX,  YER,  ZAR,  ZMW,  ZWL,  };

  @BuiltValueField(wireName: r'maximumFractionDigits')
  num? get maximumFractionDigits;

  @BuiltValueField(wireName: r'minimumFractionDigits')
  num? get minimumFractionDigits;

  @BuiltValueField(wireName: r'useGrouping')
  bool? get useGrouping;

  @BuiltValueField(wireName: r'enableIf')
  String? get enableIf;

  @BuiltValueField(wireName: r'isRequired')
  bool? get isRequired;

  @BuiltValueField(wireName: r'readOnly')
  String? get readOnly;

  @BuiltValueField(wireName: r'requiredErrorText')
  String? get requiredErrorText;

  @BuiltValueField(wireName: r'defaultValueExpression')
  String? get defaultValueExpression;

  @BuiltValueField(wireName: r'defaultValue')
  JsonObject? get defaultValue;

  @BuiltValueField(wireName: r'correctAnswer')
  JsonObject? get correctAnswer;

  @BuiltValueField(wireName: r'requiredIf')
  String? get requiredIf;

  @BuiltValueSerializer(custom: true)
  static Serializer<ExpressionAllOf> get serializer => _$ExpressionAllOfSerializer();
}

class _$ExpressionAllOfSerializer implements PrimitiveSerializer<ExpressionAllOf> {
  @override
  final Iterable<Type> types = const [ExpressionAllOf];

  @override
  final String wireName = r'ExpressionAllOf';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    ExpressionAllOf object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.expression != null) {
      yield r'expression';
      yield serializers.serialize(
        object.expression,
        specifiedType: const FullType(String),
      );
    }
    if (object.format != null) {
      yield r'format';
      yield serializers.serialize(
        object.format,
        specifiedType: const FullType(String),
      );
    }
    if (object.displayStyle != null) {
      yield r'displayStyle';
      yield serializers.serialize(
        object.displayStyle,
        specifiedType: const FullType(ExpressionDisplayStyle),
      );
    }
    if (object.currency != null) {
      yield r'currency';
      yield serializers.serialize(
        object.currency,
        specifiedType: const FullType(ExpressionCurrency),
      );
    }
    if (object.maximumFractionDigits != null) {
      yield r'maximumFractionDigits';
      yield serializers.serialize(
        object.maximumFractionDigits,
        specifiedType: const FullType(num),
      );
    }
    if (object.minimumFractionDigits != null) {
      yield r'minimumFractionDigits';
      yield serializers.serialize(
        object.minimumFractionDigits,
        specifiedType: const FullType(num),
      );
    }
    if (object.useGrouping != null) {
      yield r'useGrouping';
      yield serializers.serialize(
        object.useGrouping,
        specifiedType: const FullType(bool),
      );
    }
    if (object.enableIf != null) {
      yield r'enableIf';
      yield serializers.serialize(
        object.enableIf,
        specifiedType: const FullType(String),
      );
    }
    if (object.isRequired != null) {
      yield r'isRequired';
      yield serializers.serialize(
        object.isRequired,
        specifiedType: const FullType(bool),
      );
    }
    if (object.readOnly != null) {
      yield r'readOnly';
      yield serializers.serialize(
        object.readOnly,
        specifiedType: const FullType(String),
      );
    }
    if (object.requiredErrorText != null) {
      yield r'requiredErrorText';
      yield serializers.serialize(
        object.requiredErrorText,
        specifiedType: const FullType(String),
      );
    }
    if (object.defaultValueExpression != null) {
      yield r'defaultValueExpression';
      yield serializers.serialize(
        object.defaultValueExpression,
        specifiedType: const FullType(String),
      );
    }
    if (object.defaultValue != null) {
      yield r'defaultValue';
      yield serializers.serialize(
        object.defaultValue,
        specifiedType: const FullType.nullable(JsonObject),
      );
    }
    if (object.correctAnswer != null) {
      yield r'correctAnswer';
      yield serializers.serialize(
        object.correctAnswer,
        specifiedType: const FullType.nullable(JsonObject),
      );
    }
    if (object.requiredIf != null) {
      yield r'requiredIf';
      yield serializers.serialize(
        object.requiredIf,
        specifiedType: const FullType(String),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    ExpressionAllOf object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  @override
  ExpressionAllOf deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return serializers.deserialize(serialized, specifiedType: FullType($ExpressionAllOf)) as $ExpressionAllOf;
  }
}

/// a concrete implementation of [ExpressionAllOf], since [ExpressionAllOf] is not instantiable
@BuiltValue(instantiable: true)
abstract class $ExpressionAllOf implements ExpressionAllOf, Built<$ExpressionAllOf, $ExpressionAllOfBuilder> {
  $ExpressionAllOf._();

  factory $ExpressionAllOf([void Function($ExpressionAllOfBuilder)? updates]) = _$$ExpressionAllOf;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults($ExpressionAllOfBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<$ExpressionAllOf> get serializer => _$$ExpressionAllOfSerializer();
}

class _$$ExpressionAllOfSerializer implements PrimitiveSerializer<$ExpressionAllOf> {
  @override
  final Iterable<Type> types = const [$ExpressionAllOf, _$$ExpressionAllOf];

  @override
  final String wireName = r'$ExpressionAllOf';

  @override
  Object serialize(
    Serializers serializers,
    $ExpressionAllOf object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return serializers.serialize(object, specifiedType: FullType(ExpressionAllOf))!;
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required ExpressionAllOfBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'expression':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.expression = valueDes;
          break;
        case r'format':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.format = valueDes;
          break;
        case r'displayStyle':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(ExpressionDisplayStyle),
          ) as ExpressionDisplayStyle;
          result.displayStyle = valueDes;
          break;
        case r'currency':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(ExpressionCurrency),
          ) as ExpressionCurrency;
          result.currency = valueDes;
          break;
        case r'maximumFractionDigits':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(num),
          ) as num;
          result.maximumFractionDigits = valueDes;
          break;
        case r'minimumFractionDigits':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(num),
          ) as num;
          result.minimumFractionDigits = valueDes;
          break;
        case r'useGrouping':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool;
          result.useGrouping = valueDes;
          break;
        case r'enableIf':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.enableIf = valueDes;
          break;
        case r'isRequired':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool;
          result.isRequired = valueDes;
          break;
        case r'readOnly':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.readOnly = valueDes;
          break;
        case r'requiredErrorText':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.requiredErrorText = valueDes;
          break;
        case r'defaultValueExpression':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.defaultValueExpression = valueDes;
          break;
        case r'defaultValue':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(JsonObject),
          ) as JsonObject?;
          if (valueDes == null) continue;
          result.defaultValue = valueDes;
          break;
        case r'correctAnswer':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(JsonObject),
          ) as JsonObject?;
          if (valueDes == null) continue;
          result.correctAnswer = valueDes;
          break;
        case r'requiredIf':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.requiredIf = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  $ExpressionAllOf deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = $ExpressionAllOfBuilder();
    final serializedList = (serialized as Iterable<Object?>).toList();
    final unhandled = <Object?>[];
    _deserializeProperties(
      serializers,
      serialized,
      specifiedType: specifiedType,
      serializedList: serializedList,
      unhandled: unhandled,
      result: result,
    );
    return result.build();
  }
}

