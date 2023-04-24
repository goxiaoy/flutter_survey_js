//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:flutter_survey_js_model/src/model/matrixdropdowncolumn_total_type.dart';
import 'package:flutter_survey_js_model/src/model/matrixdropdowncolumn_cell_type.dart';
import 'package:flutter_survey_js_model/src/model/matrixdropdowncolumn_total_display_style.dart';
import 'package:flutter_survey_js_model/src/model/surveyvalidator.dart';
import 'package:flutter_survey_js_model/src/model/matrixdropdowncolumn_total_currency.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'matrixdropdowncolumn.g.dart';

/// Matrixdropdowncolumn
///
/// Properties:
/// * [name] 
/// * [title] 
/// * [cellHint] 
/// * [cellType] 
/// * [isRequired] 
/// * [isUnique] 
/// * [requiredErrorText] 
/// * [readOnly] 
/// * [minWidth] 
/// * [width] 
/// * [visibleIf] 
/// * [enableIf] 
/// * [requiredIf] 
/// * [showInMultipleColumns] 
/// * [validators] 
/// * [totalType] 
/// * [totalExpression] 
/// * [totalFormat] 
/// * [totalDisplayStyle] 
/// * [totalCurrency] 
/// * [totalMaximumFractionDigits] 
/// * [totalMinimumFractionDigits] 
/// * [renderAs] 
@BuiltValue()
abstract class Matrixdropdowncolumn implements Built<Matrixdropdowncolumn, MatrixdropdowncolumnBuilder> {
  @BuiltValueField(wireName: r'name')
  String? get name;

  @BuiltValueField(wireName: r'title')
  String? get title;

  @BuiltValueField(wireName: r'cellHint')
  String? get cellHint;

  @BuiltValueField(wireName: r'cellType')
  MatrixdropdowncolumnCellType? get cellType;
  // enum cellTypeEnum {  default,  dropdown,  checkbox,  radiogroup,  tagbox,  text,  comment,  boolean,  expression,  rating,  };

  @BuiltValueField(wireName: r'isRequired')
  bool? get isRequired;

  @BuiltValueField(wireName: r'isUnique')
  bool? get isUnique;

  @BuiltValueField(wireName: r'requiredErrorText')
  String? get requiredErrorText;

  @BuiltValueField(wireName: r'readOnly')
  bool? get readOnly;

  @BuiltValueField(wireName: r'minWidth')
  String? get minWidth;

  @BuiltValueField(wireName: r'width')
  String? get width;

  @BuiltValueField(wireName: r'visibleIf')
  String? get visibleIf;

  @BuiltValueField(wireName: r'enableIf')
  String? get enableIf;

  @BuiltValueField(wireName: r'requiredIf')
  String? get requiredIf;

  @BuiltValueField(wireName: r'showInMultipleColumns')
  bool? get showInMultipleColumns;

  @BuiltValueField(wireName: r'validators')
  Surveyvalidator? get validators;

  @BuiltValueField(wireName: r'totalType')
  MatrixdropdowncolumnTotalType? get totalType;
  // enum totalTypeEnum {  none,  sum,  count,  min,  max,  avg,  };

  @BuiltValueField(wireName: r'totalExpression')
  String? get totalExpression;

  @BuiltValueField(wireName: r'totalFormat')
  String? get totalFormat;

  @BuiltValueField(wireName: r'totalDisplayStyle')
  MatrixdropdowncolumnTotalDisplayStyle? get totalDisplayStyle;
  // enum totalDisplayStyleEnum {  none,  decimal,  currency,  percent,  };

  @BuiltValueField(wireName: r'totalCurrency')
  MatrixdropdowncolumnTotalCurrency? get totalCurrency;
  // enum totalCurrencyEnum {  AED,  AFN,  ALL,  AMD,  ANG,  AOA,  ARS,  AUD,  AWG,  AZN,  BAM,  BBD,  BDT,  BGN,  BHD,  BIF,  BMD,  BND,  BOB,  BOV,  BRL,  BSD,  BTN,  BWP,  BYN,  BZD,  CAD,  CDF,  CHE,  CHF,  CHW,  CLF,  CLP,  CNY,  COP,  COU,  CRC,  CUC,  CUP,  CVE,  CZK,  DJF,  DKK,  DOP,  DZD,  EGP,  ERN,  ETB,  EUR,  FJD,  FKP,  GBP,  GEL,  GHS,  GIP,  GMD,  GNF,  GTQ,  GYD,  HKD,  HNL,  HRK,  HTG,  HUF,  IDR,  ILS,  INR,  IQD,  IRR,  ISK,  JMD,  JOD,  JPY,  KES,  KGS,  KHR,  KMF,  KPW,  KRW,  KWD,  KYD,  KZT,  LAK,  LBP,  LKR,  LRD,  LSL,  LYD,  MAD,  MDL,  MGA,  MKD,  MMK,  MNT,  MOP,  MRO,  MUR,  MVR,  MWK,  MXN,  MXV,  MYR,  MZN,  NAD,  NGN,  NIO,  NOK,  NPR,  NZD,  OMR,  PAB,  PEN,  PGK,  PHP,  PKR,  PLN,  PYG,  QAR,  RON,  RSD,  RUB,  RWF,  SAR,  SBD,  SCR,  SDG,  SEK,  SGD,  SHP,  SLL,  SOS,  SRD,  SSP,  STD,  SVC,  SYP,  SZL,  THB,  TJS,  TMT,  TND,  TOP,  TRY,  TTD,  TWD,  TZS,  UAH,  UGX,  USD,  USN,  UYI,  UYU,  UZS,  VEF,  VND,  VUV,  WST,  XAF,  XAG,  XAU,  XBA,  XBB,  XBC,  XBD,  XCD,  XDR,  XOF,  XPD,  XPF,  XPT,  XSU,  XTS,  XUA,  XXX,  YER,  ZAR,  ZMW,  ZWL,  };

  @BuiltValueField(wireName: r'totalMaximumFractionDigits')
  num? get totalMaximumFractionDigits;

  @BuiltValueField(wireName: r'totalMinimumFractionDigits')
  num? get totalMinimumFractionDigits;

  @BuiltValueField(wireName: r'renderAs')
  String? get renderAs;

  Matrixdropdowncolumn._();

  factory Matrixdropdowncolumn([void updates(MatrixdropdowncolumnBuilder b)]) = _$Matrixdropdowncolumn;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(MatrixdropdowncolumnBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<Matrixdropdowncolumn> get serializer => _$MatrixdropdowncolumnSerializer();
}

class _$MatrixdropdowncolumnSerializer implements PrimitiveSerializer<Matrixdropdowncolumn> {
  @override
  final Iterable<Type> types = const [Matrixdropdowncolumn, _$Matrixdropdowncolumn];

  @override
  final String wireName = r'Matrixdropdowncolumn';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    Matrixdropdowncolumn object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.name != null) {
      yield r'name';
      yield serializers.serialize(
        object.name,
        specifiedType: const FullType(String),
      );
    }
    if (object.title != null) {
      yield r'title';
      yield serializers.serialize(
        object.title,
        specifiedType: const FullType(String),
      );
    }
    if (object.cellHint != null) {
      yield r'cellHint';
      yield serializers.serialize(
        object.cellHint,
        specifiedType: const FullType(String),
      );
    }
    if (object.cellType != null) {
      yield r'cellType';
      yield serializers.serialize(
        object.cellType,
        specifiedType: const FullType(MatrixdropdowncolumnCellType),
      );
    }
    if (object.isRequired != null) {
      yield r'isRequired';
      yield serializers.serialize(
        object.isRequired,
        specifiedType: const FullType(bool),
      );
    }
    if (object.isUnique != null) {
      yield r'isUnique';
      yield serializers.serialize(
        object.isUnique,
        specifiedType: const FullType(bool),
      );
    }
    if (object.requiredErrorText != null) {
      yield r'requiredErrorText';
      yield serializers.serialize(
        object.requiredErrorText,
        specifiedType: const FullType(String),
      );
    }
    if (object.readOnly != null) {
      yield r'readOnly';
      yield serializers.serialize(
        object.readOnly,
        specifiedType: const FullType(bool),
      );
    }
    if (object.minWidth != null) {
      yield r'minWidth';
      yield serializers.serialize(
        object.minWidth,
        specifiedType: const FullType(String),
      );
    }
    if (object.width != null) {
      yield r'width';
      yield serializers.serialize(
        object.width,
        specifiedType: const FullType(String),
      );
    }
    if (object.visibleIf != null) {
      yield r'visibleIf';
      yield serializers.serialize(
        object.visibleIf,
        specifiedType: const FullType(String),
      );
    }
    if (object.enableIf != null) {
      yield r'enableIf';
      yield serializers.serialize(
        object.enableIf,
        specifiedType: const FullType(String),
      );
    }
    if (object.requiredIf != null) {
      yield r'requiredIf';
      yield serializers.serialize(
        object.requiredIf,
        specifiedType: const FullType(String),
      );
    }
    if (object.showInMultipleColumns != null) {
      yield r'showInMultipleColumns';
      yield serializers.serialize(
        object.showInMultipleColumns,
        specifiedType: const FullType(bool),
      );
    }
    if (object.validators != null) {
      yield r'validators';
      yield serializers.serialize(
        object.validators,
        specifiedType: const FullType(Surveyvalidator),
      );
    }
    if (object.totalType != null) {
      yield r'totalType';
      yield serializers.serialize(
        object.totalType,
        specifiedType: const FullType(MatrixdropdowncolumnTotalType),
      );
    }
    if (object.totalExpression != null) {
      yield r'totalExpression';
      yield serializers.serialize(
        object.totalExpression,
        specifiedType: const FullType(String),
      );
    }
    if (object.totalFormat != null) {
      yield r'totalFormat';
      yield serializers.serialize(
        object.totalFormat,
        specifiedType: const FullType(String),
      );
    }
    if (object.totalDisplayStyle != null) {
      yield r'totalDisplayStyle';
      yield serializers.serialize(
        object.totalDisplayStyle,
        specifiedType: const FullType(MatrixdropdowncolumnTotalDisplayStyle),
      );
    }
    if (object.totalCurrency != null) {
      yield r'totalCurrency';
      yield serializers.serialize(
        object.totalCurrency,
        specifiedType: const FullType(MatrixdropdowncolumnTotalCurrency),
      );
    }
    if (object.totalMaximumFractionDigits != null) {
      yield r'totalMaximumFractionDigits';
      yield serializers.serialize(
        object.totalMaximumFractionDigits,
        specifiedType: const FullType(num),
      );
    }
    if (object.totalMinimumFractionDigits != null) {
      yield r'totalMinimumFractionDigits';
      yield serializers.serialize(
        object.totalMinimumFractionDigits,
        specifiedType: const FullType(num),
      );
    }
    if (object.renderAs != null) {
      yield r'renderAs';
      yield serializers.serialize(
        object.renderAs,
        specifiedType: const FullType(String),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    Matrixdropdowncolumn object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required MatrixdropdowncolumnBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'name':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.name = valueDes;
          break;
        case r'title':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.title = valueDes;
          break;
        case r'cellHint':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.cellHint = valueDes;
          break;
        case r'cellType':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(MatrixdropdowncolumnCellType),
          ) as MatrixdropdowncolumnCellType;
          result.cellType = valueDes;
          break;
        case r'isRequired':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool;
          result.isRequired = valueDes;
          break;
        case r'isUnique':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool;
          result.isUnique = valueDes;
          break;
        case r'requiredErrorText':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.requiredErrorText = valueDes;
          break;
        case r'readOnly':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool;
          result.readOnly = valueDes;
          break;
        case r'minWidth':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.minWidth = valueDes;
          break;
        case r'width':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.width = valueDes;
          break;
        case r'visibleIf':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.visibleIf = valueDes;
          break;
        case r'enableIf':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.enableIf = valueDes;
          break;
        case r'requiredIf':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.requiredIf = valueDes;
          break;
        case r'showInMultipleColumns':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool;
          result.showInMultipleColumns = valueDes;
          break;
        case r'validators':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(Surveyvalidator),
          ) as Surveyvalidator;
          result.validators = valueDes;
          break;
        case r'totalType':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(MatrixdropdowncolumnTotalType),
          ) as MatrixdropdowncolumnTotalType;
          result.totalType = valueDes;
          break;
        case r'totalExpression':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.totalExpression = valueDes;
          break;
        case r'totalFormat':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.totalFormat = valueDes;
          break;
        case r'totalDisplayStyle':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(MatrixdropdowncolumnTotalDisplayStyle),
          ) as MatrixdropdowncolumnTotalDisplayStyle;
          result.totalDisplayStyle = valueDes;
          break;
        case r'totalCurrency':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(MatrixdropdowncolumnTotalCurrency),
          ) as MatrixdropdowncolumnTotalCurrency;
          result.totalCurrency = valueDes;
          break;
        case r'totalMaximumFractionDigits':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(num),
          ) as num;
          result.totalMaximumFractionDigits = valueDes;
          break;
        case r'totalMinimumFractionDigits':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(num),
          ) as num;
          result.totalMinimumFractionDigits = valueDes;
          break;
        case r'renderAs':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.renderAs = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  Matrixdropdowncolumn deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = MatrixdropdowncolumnBuilder();
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

