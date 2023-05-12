// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'matrixbase_vertical_align.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const MatrixbaseVerticalAlign _$top = const MatrixbaseVerticalAlign._('top');
const MatrixbaseVerticalAlign _$middle =
    const MatrixbaseVerticalAlign._('middle');
const MatrixbaseVerticalAlign _$unknownDefaultOpenApi =
    const MatrixbaseVerticalAlign._('unknownDefaultOpenApi');

MatrixbaseVerticalAlign _$valueOf(String name) {
  switch (name) {
    case 'top':
      return _$top;
    case 'middle':
      return _$middle;
    case 'unknownDefaultOpenApi':
      return _$unknownDefaultOpenApi;
    default:
      return _$unknownDefaultOpenApi;
  }
}

final BuiltSet<MatrixbaseVerticalAlign> _$values =
    new BuiltSet<MatrixbaseVerticalAlign>(const <MatrixbaseVerticalAlign>[
  _$top,
  _$middle,
  _$unknownDefaultOpenApi,
]);

class _$MatrixbaseVerticalAlignMeta {
  const _$MatrixbaseVerticalAlignMeta();
  MatrixbaseVerticalAlign get top => _$top;
  MatrixbaseVerticalAlign get middle => _$middle;
  MatrixbaseVerticalAlign get unknownDefaultOpenApi => _$unknownDefaultOpenApi;
  MatrixbaseVerticalAlign valueOf(String name) => _$valueOf(name);
  BuiltSet<MatrixbaseVerticalAlign> get values => _$values;
}

abstract class _$MatrixbaseVerticalAlignMixin {
  // ignore: non_constant_identifier_names
  _$MatrixbaseVerticalAlignMeta get MatrixbaseVerticalAlign =>
      const _$MatrixbaseVerticalAlignMeta();
}

Serializer<MatrixbaseVerticalAlign> _$matrixbaseVerticalAlignSerializer =
    new _$MatrixbaseVerticalAlignSerializer();

class _$MatrixbaseVerticalAlignSerializer
    implements PrimitiveSerializer<MatrixbaseVerticalAlign> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'top': 'top',
    'middle': 'middle',
    'unknownDefaultOpenApi': 'unknown_default_open_api',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'top': 'top',
    'middle': 'middle',
    'unknown_default_open_api': 'unknownDefaultOpenApi',
  };

  @override
  final Iterable<Type> types = const <Type>[MatrixbaseVerticalAlign];
  @override
  final String wireName = 'MatrixbaseVerticalAlign';

  @override
  Object serialize(Serializers serializers, MatrixbaseVerticalAlign object,
          {FullType specifiedType = FullType.unspecified}) =>
      _toWire[object.name] ?? object.name;

  @override
  MatrixbaseVerticalAlign deserialize(
          Serializers serializers, Object serialized,
          {FullType specifiedType = FullType.unspecified}) =>
      MatrixbaseVerticalAlign.valueOf(
          _fromWire[serialized] ?? (serialized is String ? serialized : ''));
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
