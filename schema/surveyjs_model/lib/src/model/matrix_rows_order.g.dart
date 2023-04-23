// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'matrix_rows_order.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const MatrixRowsOrder _$initial = const MatrixRowsOrder._('initial');
const MatrixRowsOrder _$random = const MatrixRowsOrder._('random');
const MatrixRowsOrder _$unknownDefaultOpenApi =
    const MatrixRowsOrder._('unknownDefaultOpenApi');

MatrixRowsOrder _$valueOf(String name) {
  switch (name) {
    case 'initial':
      return _$initial;
    case 'random':
      return _$random;
    case 'unknownDefaultOpenApi':
      return _$unknownDefaultOpenApi;
    default:
      return _$unknownDefaultOpenApi;
  }
}

final BuiltSet<MatrixRowsOrder> _$values =
    new BuiltSet<MatrixRowsOrder>(const <MatrixRowsOrder>[
  _$initial,
  _$random,
  _$unknownDefaultOpenApi,
]);

class _$MatrixRowsOrderMeta {
  const _$MatrixRowsOrderMeta();
  MatrixRowsOrder get initial => _$initial;
  MatrixRowsOrder get random => _$random;
  MatrixRowsOrder get unknownDefaultOpenApi => _$unknownDefaultOpenApi;
  MatrixRowsOrder valueOf(String name) => _$valueOf(name);
  BuiltSet<MatrixRowsOrder> get values => _$values;
}

abstract class _$MatrixRowsOrderMixin {
  // ignore: non_constant_identifier_names
  _$MatrixRowsOrderMeta get MatrixRowsOrder => const _$MatrixRowsOrderMeta();
}

Serializer<MatrixRowsOrder> _$matrixRowsOrderSerializer =
    new _$MatrixRowsOrderSerializer();

class _$MatrixRowsOrderSerializer
    implements PrimitiveSerializer<MatrixRowsOrder> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'initial': 'initial',
    'random': 'random',
    'unknownDefaultOpenApi': 'unknown_default_open_api',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'initial': 'initial',
    'random': 'random',
    'unknown_default_open_api': 'unknownDefaultOpenApi',
  };

  @override
  final Iterable<Type> types = const <Type>[MatrixRowsOrder];
  @override
  final String wireName = 'MatrixRowsOrder';

  @override
  Object serialize(Serializers serializers, MatrixRowsOrder object,
          {FullType specifiedType = FullType.unspecified}) =>
      _toWire[object.name] ?? object.name;

  @override
  MatrixRowsOrder deserialize(Serializers serializers, Object serialized,
          {FullType specifiedType = FullType.unspecified}) =>
      MatrixRowsOrder.valueOf(
          _fromWire[serialized] ?? (serialized is String ? serialized : ''));
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
