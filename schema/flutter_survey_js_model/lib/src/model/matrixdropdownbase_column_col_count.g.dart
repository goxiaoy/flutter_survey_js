// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'matrixdropdownbase_column_col_count.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const MatrixdropdownbaseColumnColCount _$n0 =
    const MatrixdropdownbaseColumnColCount._('n0');
const MatrixdropdownbaseColumnColCount _$n1 =
    const MatrixdropdownbaseColumnColCount._('n1');
const MatrixdropdownbaseColumnColCount _$n2 =
    const MatrixdropdownbaseColumnColCount._('n2');
const MatrixdropdownbaseColumnColCount _$n3 =
    const MatrixdropdownbaseColumnColCount._('n3');
const MatrixdropdownbaseColumnColCount _$n4 =
    const MatrixdropdownbaseColumnColCount._('n4');
const MatrixdropdownbaseColumnColCount _$unknownDefaultOpenApi =
    const MatrixdropdownbaseColumnColCount._('unknownDefaultOpenApi');

MatrixdropdownbaseColumnColCount _$valueOf(String name) {
  switch (name) {
    case 'n0':
      return _$n0;
    case 'n1':
      return _$n1;
    case 'n2':
      return _$n2;
    case 'n3':
      return _$n3;
    case 'n4':
      return _$n4;
    case 'unknownDefaultOpenApi':
      return _$unknownDefaultOpenApi;
    default:
      return _$unknownDefaultOpenApi;
  }
}

final BuiltSet<MatrixdropdownbaseColumnColCount> _$values = new BuiltSet<
    MatrixdropdownbaseColumnColCount>(const <MatrixdropdownbaseColumnColCount>[
  _$n0,
  _$n1,
  _$n2,
  _$n3,
  _$n4,
  _$unknownDefaultOpenApi,
]);

class _$MatrixdropdownbaseColumnColCountMeta {
  const _$MatrixdropdownbaseColumnColCountMeta();
  MatrixdropdownbaseColumnColCount get n0 => _$n0;
  MatrixdropdownbaseColumnColCount get n1 => _$n1;
  MatrixdropdownbaseColumnColCount get n2 => _$n2;
  MatrixdropdownbaseColumnColCount get n3 => _$n3;
  MatrixdropdownbaseColumnColCount get n4 => _$n4;
  MatrixdropdownbaseColumnColCount get unknownDefaultOpenApi =>
      _$unknownDefaultOpenApi;
  MatrixdropdownbaseColumnColCount valueOf(String name) => _$valueOf(name);
  BuiltSet<MatrixdropdownbaseColumnColCount> get values => _$values;
}

abstract class _$MatrixdropdownbaseColumnColCountMixin {
  // ignore: non_constant_identifier_names
  _$MatrixdropdownbaseColumnColCountMeta get MatrixdropdownbaseColumnColCount =>
      const _$MatrixdropdownbaseColumnColCountMeta();
}

Serializer<MatrixdropdownbaseColumnColCount>
    _$matrixdropdownbaseColumnColCountSerializer =
    new _$MatrixdropdownbaseColumnColCountSerializer();

class _$MatrixdropdownbaseColumnColCountSerializer
    implements PrimitiveSerializer<MatrixdropdownbaseColumnColCount> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'n0': '0',
    'n1': '1',
    'n2': '2',
    'n3': '3',
    'n4': '4',
    'unknownDefaultOpenApi': 'unknown_default_open_api',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    '0': 'n0',
    '1': 'n1',
    '2': 'n2',
    '3': 'n3',
    '4': 'n4',
    'unknown_default_open_api': 'unknownDefaultOpenApi',
  };

  @override
  final Iterable<Type> types = const <Type>[MatrixdropdownbaseColumnColCount];
  @override
  final String wireName = 'MatrixdropdownbaseColumnColCount';

  @override
  Object serialize(
          Serializers serializers, MatrixdropdownbaseColumnColCount object,
          {FullType specifiedType = FullType.unspecified}) =>
      _toWire[object.name] ?? object.name;

  @override
  MatrixdropdownbaseColumnColCount deserialize(
          Serializers serializers, Object serialized,
          {FullType specifiedType = FullType.unspecified}) =>
      MatrixdropdownbaseColumnColCount.valueOf(
          _fromWire[serialized] ?? (serialized is String ? serialized : ''));
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
