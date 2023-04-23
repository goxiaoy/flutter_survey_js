// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'matrixdropdowncolumn_total_display_style.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const MatrixdropdowncolumnTotalDisplayStyle _$none =
    const MatrixdropdowncolumnTotalDisplayStyle._('none');
const MatrixdropdowncolumnTotalDisplayStyle _$decimal =
    const MatrixdropdowncolumnTotalDisplayStyle._('decimal');
const MatrixdropdowncolumnTotalDisplayStyle _$currency =
    const MatrixdropdowncolumnTotalDisplayStyle._('currency');
const MatrixdropdowncolumnTotalDisplayStyle _$percent =
    const MatrixdropdowncolumnTotalDisplayStyle._('percent');
const MatrixdropdowncolumnTotalDisplayStyle _$unknownDefaultOpenApi =
    const MatrixdropdowncolumnTotalDisplayStyle._('unknownDefaultOpenApi');

MatrixdropdowncolumnTotalDisplayStyle _$valueOf(String name) {
  switch (name) {
    case 'none':
      return _$none;
    case 'decimal':
      return _$decimal;
    case 'currency':
      return _$currency;
    case 'percent':
      return _$percent;
    case 'unknownDefaultOpenApi':
      return _$unknownDefaultOpenApi;
    default:
      return _$unknownDefaultOpenApi;
  }
}

final BuiltSet<MatrixdropdowncolumnTotalDisplayStyle> _$values = new BuiltSet<
    MatrixdropdowncolumnTotalDisplayStyle>(const <MatrixdropdowncolumnTotalDisplayStyle>[
  _$none,
  _$decimal,
  _$currency,
  _$percent,
  _$unknownDefaultOpenApi,
]);

class _$MatrixdropdowncolumnTotalDisplayStyleMeta {
  const _$MatrixdropdowncolumnTotalDisplayStyleMeta();
  MatrixdropdowncolumnTotalDisplayStyle get none => _$none;
  MatrixdropdowncolumnTotalDisplayStyle get decimal => _$decimal;
  MatrixdropdowncolumnTotalDisplayStyle get currency => _$currency;
  MatrixdropdowncolumnTotalDisplayStyle get percent => _$percent;
  MatrixdropdowncolumnTotalDisplayStyle get unknownDefaultOpenApi =>
      _$unknownDefaultOpenApi;
  MatrixdropdowncolumnTotalDisplayStyle valueOf(String name) => _$valueOf(name);
  BuiltSet<MatrixdropdowncolumnTotalDisplayStyle> get values => _$values;
}

abstract class _$MatrixdropdowncolumnTotalDisplayStyleMixin {
  // ignore: non_constant_identifier_names
  _$MatrixdropdowncolumnTotalDisplayStyleMeta
      get MatrixdropdowncolumnTotalDisplayStyle =>
          const _$MatrixdropdowncolumnTotalDisplayStyleMeta();
}

Serializer<MatrixdropdowncolumnTotalDisplayStyle>
    _$matrixdropdowncolumnTotalDisplayStyleSerializer =
    new _$MatrixdropdowncolumnTotalDisplayStyleSerializer();

class _$MatrixdropdowncolumnTotalDisplayStyleSerializer
    implements PrimitiveSerializer<MatrixdropdowncolumnTotalDisplayStyle> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'none': 'none',
    'decimal': 'decimal',
    'currency': 'currency',
    'percent': 'percent',
    'unknownDefaultOpenApi': 'unknown_default_open_api',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'none': 'none',
    'decimal': 'decimal',
    'currency': 'currency',
    'percent': 'percent',
    'unknown_default_open_api': 'unknownDefaultOpenApi',
  };

  @override
  final Iterable<Type> types = const <Type>[
    MatrixdropdowncolumnTotalDisplayStyle
  ];
  @override
  final String wireName = 'MatrixdropdowncolumnTotalDisplayStyle';

  @override
  Object serialize(
          Serializers serializers, MatrixdropdowncolumnTotalDisplayStyle object,
          {FullType specifiedType = FullType.unspecified}) =>
      _toWire[object.name] ?? object.name;

  @override
  MatrixdropdowncolumnTotalDisplayStyle deserialize(
          Serializers serializers, Object serialized,
          {FullType specifiedType = FullType.unspecified}) =>
      MatrixdropdowncolumnTotalDisplayStyle.valueOf(
          _fromWire[serialized] ?? (serialized is String ? serialized : ''));
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
