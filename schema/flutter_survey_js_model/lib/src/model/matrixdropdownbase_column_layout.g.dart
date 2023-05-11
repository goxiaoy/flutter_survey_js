// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'matrixdropdownbase_column_layout.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const MatrixdropdownbaseColumnLayout _$horizontal =
    const MatrixdropdownbaseColumnLayout._('horizontal');
const MatrixdropdownbaseColumnLayout _$vertical =
    const MatrixdropdownbaseColumnLayout._('vertical');
const MatrixdropdownbaseColumnLayout _$unknownDefaultOpenApi =
    const MatrixdropdownbaseColumnLayout._('unknownDefaultOpenApi');

MatrixdropdownbaseColumnLayout _$valueOf(String name) {
  switch (name) {
    case 'horizontal':
      return _$horizontal;
    case 'vertical':
      return _$vertical;
    case 'unknownDefaultOpenApi':
      return _$unknownDefaultOpenApi;
    default:
      return _$unknownDefaultOpenApi;
  }
}

final BuiltSet<MatrixdropdownbaseColumnLayout> _$values = new BuiltSet<
    MatrixdropdownbaseColumnLayout>(const <MatrixdropdownbaseColumnLayout>[
  _$horizontal,
  _$vertical,
  _$unknownDefaultOpenApi,
]);

class _$MatrixdropdownbaseColumnLayoutMeta {
  const _$MatrixdropdownbaseColumnLayoutMeta();
  MatrixdropdownbaseColumnLayout get horizontal => _$horizontal;
  MatrixdropdownbaseColumnLayout get vertical => _$vertical;
  MatrixdropdownbaseColumnLayout get unknownDefaultOpenApi =>
      _$unknownDefaultOpenApi;
  MatrixdropdownbaseColumnLayout valueOf(String name) => _$valueOf(name);
  BuiltSet<MatrixdropdownbaseColumnLayout> get values => _$values;
}

abstract class _$MatrixdropdownbaseColumnLayoutMixin {
  // ignore: non_constant_identifier_names
  _$MatrixdropdownbaseColumnLayoutMeta get MatrixdropdownbaseColumnLayout =>
      const _$MatrixdropdownbaseColumnLayoutMeta();
}

Serializer<MatrixdropdownbaseColumnLayout>
    _$matrixdropdownbaseColumnLayoutSerializer =
    new _$MatrixdropdownbaseColumnLayoutSerializer();

class _$MatrixdropdownbaseColumnLayoutSerializer
    implements PrimitiveSerializer<MatrixdropdownbaseColumnLayout> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'horizontal': 'horizontal',
    'vertical': 'vertical',
    'unknownDefaultOpenApi': 'unknown_default_open_api',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'horizontal': 'horizontal',
    'vertical': 'vertical',
    'unknown_default_open_api': 'unknownDefaultOpenApi',
  };

  @override
  final Iterable<Type> types = const <Type>[MatrixdropdownbaseColumnLayout];
  @override
  final String wireName = 'MatrixdropdownbaseColumnLayout';

  @override
  Object serialize(
          Serializers serializers, MatrixdropdownbaseColumnLayout object,
          {FullType specifiedType = FullType.unspecified}) =>
      _toWire[object.name] ?? object.name;

  @override
  MatrixdropdownbaseColumnLayout deserialize(
          Serializers serializers, Object serialized,
          {FullType specifiedType = FullType.unspecified}) =>
      MatrixdropdownbaseColumnLayout.valueOf(
          _fromWire[serialized] ?? (serialized is String ? serialized : ''));
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
