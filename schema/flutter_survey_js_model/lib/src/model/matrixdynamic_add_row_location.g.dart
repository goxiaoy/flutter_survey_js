// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'matrixdynamic_add_row_location.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const MatrixdynamicAddRowLocation _$default_ =
    const MatrixdynamicAddRowLocation._('default_');
const MatrixdynamicAddRowLocation _$top =
    const MatrixdynamicAddRowLocation._('top');
const MatrixdynamicAddRowLocation _$bottom =
    const MatrixdynamicAddRowLocation._('bottom');
const MatrixdynamicAddRowLocation _$topBottom =
    const MatrixdynamicAddRowLocation._('topBottom');
const MatrixdynamicAddRowLocation _$unknownDefaultOpenApi =
    const MatrixdynamicAddRowLocation._('unknownDefaultOpenApi');

MatrixdynamicAddRowLocation _$valueOf(String name) {
  switch (name) {
    case 'default_':
      return _$default_;
    case 'top':
      return _$top;
    case 'bottom':
      return _$bottom;
    case 'topBottom':
      return _$topBottom;
    case 'unknownDefaultOpenApi':
      return _$unknownDefaultOpenApi;
    default:
      return _$unknownDefaultOpenApi;
  }
}

final BuiltSet<MatrixdynamicAddRowLocation> _$values = new BuiltSet<
    MatrixdynamicAddRowLocation>(const <MatrixdynamicAddRowLocation>[
  _$default_,
  _$top,
  _$bottom,
  _$topBottom,
  _$unknownDefaultOpenApi,
]);

class _$MatrixdynamicAddRowLocationMeta {
  const _$MatrixdynamicAddRowLocationMeta();
  MatrixdynamicAddRowLocation get default_ => _$default_;
  MatrixdynamicAddRowLocation get top => _$top;
  MatrixdynamicAddRowLocation get bottom => _$bottom;
  MatrixdynamicAddRowLocation get topBottom => _$topBottom;
  MatrixdynamicAddRowLocation get unknownDefaultOpenApi =>
      _$unknownDefaultOpenApi;
  MatrixdynamicAddRowLocation valueOf(String name) => _$valueOf(name);
  BuiltSet<MatrixdynamicAddRowLocation> get values => _$values;
}

abstract class _$MatrixdynamicAddRowLocationMixin {
  // ignore: non_constant_identifier_names
  _$MatrixdynamicAddRowLocationMeta get MatrixdynamicAddRowLocation =>
      const _$MatrixdynamicAddRowLocationMeta();
}

Serializer<MatrixdynamicAddRowLocation>
    _$matrixdynamicAddRowLocationSerializer =
    new _$MatrixdynamicAddRowLocationSerializer();

class _$MatrixdynamicAddRowLocationSerializer
    implements PrimitiveSerializer<MatrixdynamicAddRowLocation> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'default_': 'default',
    'top': 'top',
    'bottom': 'bottom',
    'topBottom': 'topBottom',
    'unknownDefaultOpenApi': 'unknown_default_open_api',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'default': 'default_',
    'top': 'top',
    'bottom': 'bottom',
    'topBottom': 'topBottom',
    'unknown_default_open_api': 'unknownDefaultOpenApi',
  };

  @override
  final Iterable<Type> types = const <Type>[MatrixdynamicAddRowLocation];
  @override
  final String wireName = 'MatrixdynamicAddRowLocation';

  @override
  Object serialize(Serializers serializers, MatrixdynamicAddRowLocation object,
          {FullType specifiedType = FullType.unspecified}) =>
      _toWire[object.name] ?? object.name;

  @override
  MatrixdynamicAddRowLocation deserialize(
          Serializers serializers, Object serialized,
          {FullType specifiedType = FullType.unspecified}) =>
      MatrixdynamicAddRowLocation.valueOf(
          _fromWire[serialized] ?? (serialized is String ? serialized : ''));
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
