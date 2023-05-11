// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'matrixdropdowncolumn_cell_type.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const MatrixdropdowncolumnCellType _$default_ =
    const MatrixdropdowncolumnCellType._('default_');
const MatrixdropdowncolumnCellType _$dropdown =
    const MatrixdropdowncolumnCellType._('dropdown');
const MatrixdropdowncolumnCellType _$checkbox =
    const MatrixdropdowncolumnCellType._('checkbox');
const MatrixdropdowncolumnCellType _$radiogroup =
    const MatrixdropdowncolumnCellType._('radiogroup');
const MatrixdropdowncolumnCellType _$tagbox =
    const MatrixdropdowncolumnCellType._('tagbox');
const MatrixdropdowncolumnCellType _$text =
    const MatrixdropdowncolumnCellType._('text');
const MatrixdropdowncolumnCellType _$comment =
    const MatrixdropdowncolumnCellType._('comment');
const MatrixdropdowncolumnCellType _$boolean =
    const MatrixdropdowncolumnCellType._('boolean');
const MatrixdropdowncolumnCellType _$expression =
    const MatrixdropdowncolumnCellType._('expression');
const MatrixdropdowncolumnCellType _$rating =
    const MatrixdropdowncolumnCellType._('rating');
const MatrixdropdowncolumnCellType _$unknownDefaultOpenApi =
    const MatrixdropdowncolumnCellType._('unknownDefaultOpenApi');

MatrixdropdowncolumnCellType _$valueOf(String name) {
  switch (name) {
    case 'default_':
      return _$default_;
    case 'dropdown':
      return _$dropdown;
    case 'checkbox':
      return _$checkbox;
    case 'radiogroup':
      return _$radiogroup;
    case 'tagbox':
      return _$tagbox;
    case 'text':
      return _$text;
    case 'comment':
      return _$comment;
    case 'boolean':
      return _$boolean;
    case 'expression':
      return _$expression;
    case 'rating':
      return _$rating;
    case 'unknownDefaultOpenApi':
      return _$unknownDefaultOpenApi;
    default:
      return _$unknownDefaultOpenApi;
  }
}

final BuiltSet<MatrixdropdowncolumnCellType> _$values = new BuiltSet<
    MatrixdropdowncolumnCellType>(const <MatrixdropdowncolumnCellType>[
  _$default_,
  _$dropdown,
  _$checkbox,
  _$radiogroup,
  _$tagbox,
  _$text,
  _$comment,
  _$boolean,
  _$expression,
  _$rating,
  _$unknownDefaultOpenApi,
]);

class _$MatrixdropdowncolumnCellTypeMeta {
  const _$MatrixdropdowncolumnCellTypeMeta();
  MatrixdropdowncolumnCellType get default_ => _$default_;
  MatrixdropdowncolumnCellType get dropdown => _$dropdown;
  MatrixdropdowncolumnCellType get checkbox => _$checkbox;
  MatrixdropdowncolumnCellType get radiogroup => _$radiogroup;
  MatrixdropdowncolumnCellType get tagbox => _$tagbox;
  MatrixdropdowncolumnCellType get text => _$text;
  MatrixdropdowncolumnCellType get comment => _$comment;
  MatrixdropdowncolumnCellType get boolean => _$boolean;
  MatrixdropdowncolumnCellType get expression => _$expression;
  MatrixdropdowncolumnCellType get rating => _$rating;
  MatrixdropdowncolumnCellType get unknownDefaultOpenApi =>
      _$unknownDefaultOpenApi;
  MatrixdropdowncolumnCellType valueOf(String name) => _$valueOf(name);
  BuiltSet<MatrixdropdowncolumnCellType> get values => _$values;
}

abstract class _$MatrixdropdowncolumnCellTypeMixin {
  // ignore: non_constant_identifier_names
  _$MatrixdropdowncolumnCellTypeMeta get MatrixdropdowncolumnCellType =>
      const _$MatrixdropdowncolumnCellTypeMeta();
}

Serializer<MatrixdropdowncolumnCellType>
    _$matrixdropdowncolumnCellTypeSerializer =
    new _$MatrixdropdowncolumnCellTypeSerializer();

class _$MatrixdropdowncolumnCellTypeSerializer
    implements PrimitiveSerializer<MatrixdropdowncolumnCellType> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'default_': 'default',
    'dropdown': 'dropdown',
    'checkbox': 'checkbox',
    'radiogroup': 'radiogroup',
    'tagbox': 'tagbox',
    'text': 'text',
    'comment': 'comment',
    'boolean': 'boolean',
    'expression': 'expression',
    'rating': 'rating',
    'unknownDefaultOpenApi': 'unknown_default_open_api',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'default': 'default_',
    'dropdown': 'dropdown',
    'checkbox': 'checkbox',
    'radiogroup': 'radiogroup',
    'tagbox': 'tagbox',
    'text': 'text',
    'comment': 'comment',
    'boolean': 'boolean',
    'expression': 'expression',
    'rating': 'rating',
    'unknown_default_open_api': 'unknownDefaultOpenApi',
  };

  @override
  final Iterable<Type> types = const <Type>[MatrixdropdowncolumnCellType];
  @override
  final String wireName = 'MatrixdropdowncolumnCellType';

  @override
  Object serialize(Serializers serializers, MatrixdropdowncolumnCellType object,
          {FullType specifiedType = FullType.unspecified}) =>
      _toWire[object.name] ?? object.name;

  @override
  MatrixdropdowncolumnCellType deserialize(
          Serializers serializers, Object serialized,
          {FullType specifiedType = FullType.unspecified}) =>
      MatrixdropdowncolumnCellType.valueOf(
          _fromWire[serialized] ?? (serialized is String ? serialized : ''));
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
