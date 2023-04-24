// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'matrixdropdownbase_detail_panel_mode.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const MatrixdropdownbaseDetailPanelMode _$none =
    const MatrixdropdownbaseDetailPanelMode._('none');
const MatrixdropdownbaseDetailPanelMode _$underRow =
    const MatrixdropdownbaseDetailPanelMode._('underRow');
const MatrixdropdownbaseDetailPanelMode _$underRowSingle =
    const MatrixdropdownbaseDetailPanelMode._('underRowSingle');
const MatrixdropdownbaseDetailPanelMode _$unknownDefaultOpenApi =
    const MatrixdropdownbaseDetailPanelMode._('unknownDefaultOpenApi');

MatrixdropdownbaseDetailPanelMode _$valueOf(String name) {
  switch (name) {
    case 'none':
      return _$none;
    case 'underRow':
      return _$underRow;
    case 'underRowSingle':
      return _$underRowSingle;
    case 'unknownDefaultOpenApi':
      return _$unknownDefaultOpenApi;
    default:
      return _$unknownDefaultOpenApi;
  }
}

final BuiltSet<MatrixdropdownbaseDetailPanelMode> _$values = new BuiltSet<
    MatrixdropdownbaseDetailPanelMode>(const <MatrixdropdownbaseDetailPanelMode>[
  _$none,
  _$underRow,
  _$underRowSingle,
  _$unknownDefaultOpenApi,
]);

class _$MatrixdropdownbaseDetailPanelModeMeta {
  const _$MatrixdropdownbaseDetailPanelModeMeta();
  MatrixdropdownbaseDetailPanelMode get none => _$none;
  MatrixdropdownbaseDetailPanelMode get underRow => _$underRow;
  MatrixdropdownbaseDetailPanelMode get underRowSingle => _$underRowSingle;
  MatrixdropdownbaseDetailPanelMode get unknownDefaultOpenApi =>
      _$unknownDefaultOpenApi;
  MatrixdropdownbaseDetailPanelMode valueOf(String name) => _$valueOf(name);
  BuiltSet<MatrixdropdownbaseDetailPanelMode> get values => _$values;
}

abstract class _$MatrixdropdownbaseDetailPanelModeMixin {
  // ignore: non_constant_identifier_names
  _$MatrixdropdownbaseDetailPanelModeMeta
      get MatrixdropdownbaseDetailPanelMode =>
          const _$MatrixdropdownbaseDetailPanelModeMeta();
}

Serializer<MatrixdropdownbaseDetailPanelMode>
    _$matrixdropdownbaseDetailPanelModeSerializer =
    new _$MatrixdropdownbaseDetailPanelModeSerializer();

class _$MatrixdropdownbaseDetailPanelModeSerializer
    implements PrimitiveSerializer<MatrixdropdownbaseDetailPanelMode> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'none': 'none',
    'underRow': 'underRow',
    'underRowSingle': 'underRowSingle',
    'unknownDefaultOpenApi': 'unknown_default_open_api',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'none': 'none',
    'underRow': 'underRow',
    'underRowSingle': 'underRowSingle',
    'unknown_default_open_api': 'unknownDefaultOpenApi',
  };

  @override
  final Iterable<Type> types = const <Type>[MatrixdropdownbaseDetailPanelMode];
  @override
  final String wireName = 'MatrixdropdownbaseDetailPanelMode';

  @override
  Object serialize(
          Serializers serializers, MatrixdropdownbaseDetailPanelMode object,
          {FullType specifiedType = FullType.unspecified}) =>
      _toWire[object.name] ?? object.name;

  @override
  MatrixdropdownbaseDetailPanelMode deserialize(
          Serializers serializers, Object serialized,
          {FullType specifiedType = FullType.unspecified}) =>
      MatrixdropdownbaseDetailPanelMode.valueOf(
          _fromWire[serialized] ?? (serialized is String ? serialized : ''));
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
