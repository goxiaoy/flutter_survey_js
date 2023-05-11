// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'matrixdropdowncolumn_total_type.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const MatrixdropdowncolumnTotalType _$none =
    const MatrixdropdowncolumnTotalType._('none');
const MatrixdropdowncolumnTotalType _$sum =
    const MatrixdropdowncolumnTotalType._('sum');
const MatrixdropdowncolumnTotalType _$count =
    const MatrixdropdowncolumnTotalType._('count');
const MatrixdropdowncolumnTotalType _$min =
    const MatrixdropdowncolumnTotalType._('min');
const MatrixdropdowncolumnTotalType _$max =
    const MatrixdropdowncolumnTotalType._('max');
const MatrixdropdowncolumnTotalType _$avg =
    const MatrixdropdowncolumnTotalType._('avg');
const MatrixdropdowncolumnTotalType _$unknownDefaultOpenApi =
    const MatrixdropdowncolumnTotalType._('unknownDefaultOpenApi');

MatrixdropdowncolumnTotalType _$valueOf(String name) {
  switch (name) {
    case 'none':
      return _$none;
    case 'sum':
      return _$sum;
    case 'count':
      return _$count;
    case 'min':
      return _$min;
    case 'max':
      return _$max;
    case 'avg':
      return _$avg;
    case 'unknownDefaultOpenApi':
      return _$unknownDefaultOpenApi;
    default:
      return _$unknownDefaultOpenApi;
  }
}

final BuiltSet<MatrixdropdowncolumnTotalType> _$values = new BuiltSet<
    MatrixdropdowncolumnTotalType>(const <MatrixdropdowncolumnTotalType>[
  _$none,
  _$sum,
  _$count,
  _$min,
  _$max,
  _$avg,
  _$unknownDefaultOpenApi,
]);

class _$MatrixdropdowncolumnTotalTypeMeta {
  const _$MatrixdropdowncolumnTotalTypeMeta();
  MatrixdropdowncolumnTotalType get none => _$none;
  MatrixdropdowncolumnTotalType get sum => _$sum;
  MatrixdropdowncolumnTotalType get count => _$count;
  MatrixdropdowncolumnTotalType get min => _$min;
  MatrixdropdowncolumnTotalType get max => _$max;
  MatrixdropdowncolumnTotalType get avg => _$avg;
  MatrixdropdowncolumnTotalType get unknownDefaultOpenApi =>
      _$unknownDefaultOpenApi;
  MatrixdropdowncolumnTotalType valueOf(String name) => _$valueOf(name);
  BuiltSet<MatrixdropdowncolumnTotalType> get values => _$values;
}

abstract class _$MatrixdropdowncolumnTotalTypeMixin {
  // ignore: non_constant_identifier_names
  _$MatrixdropdowncolumnTotalTypeMeta get MatrixdropdowncolumnTotalType =>
      const _$MatrixdropdowncolumnTotalTypeMeta();
}

Serializer<MatrixdropdowncolumnTotalType>
    _$matrixdropdowncolumnTotalTypeSerializer =
    new _$MatrixdropdowncolumnTotalTypeSerializer();

class _$MatrixdropdowncolumnTotalTypeSerializer
    implements PrimitiveSerializer<MatrixdropdowncolumnTotalType> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'none': 'none',
    'sum': 'sum',
    'count': 'count',
    'min': 'min',
    'max': 'max',
    'avg': 'avg',
    'unknownDefaultOpenApi': 'unknown_default_open_api',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'none': 'none',
    'sum': 'sum',
    'count': 'count',
    'min': 'min',
    'max': 'max',
    'avg': 'avg',
    'unknown_default_open_api': 'unknownDefaultOpenApi',
  };

  @override
  final Iterable<Type> types = const <Type>[MatrixdropdowncolumnTotalType];
  @override
  final String wireName = 'MatrixdropdowncolumnTotalType';

  @override
  Object serialize(
          Serializers serializers, MatrixdropdowncolumnTotalType object,
          {FullType specifiedType = FullType.unspecified}) =>
      _toWire[object.name] ?? object.name;

  @override
  MatrixdropdowncolumnTotalType deserialize(
          Serializers serializers, Object serialized,
          {FullType specifiedType = FullType.unspecified}) =>
      MatrixdropdowncolumnTotalType.valueOf(
          _fromWire[serialized] ?? (serialized is String ? serialized : ''));
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
