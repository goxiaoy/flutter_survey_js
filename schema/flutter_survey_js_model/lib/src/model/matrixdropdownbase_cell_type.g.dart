// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'matrixdropdownbase_cell_type.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const MatrixdropdownbaseCellType _$dropdown =
    const MatrixdropdownbaseCellType._('dropdown');
const MatrixdropdownbaseCellType _$checkbox =
    const MatrixdropdownbaseCellType._('checkbox');
const MatrixdropdownbaseCellType _$radiogroup =
    const MatrixdropdownbaseCellType._('radiogroup');
const MatrixdropdownbaseCellType _$tagbox =
    const MatrixdropdownbaseCellType._('tagbox');
const MatrixdropdownbaseCellType _$text =
    const MatrixdropdownbaseCellType._('text');
const MatrixdropdownbaseCellType _$comment =
    const MatrixdropdownbaseCellType._('comment');
const MatrixdropdownbaseCellType _$boolean =
    const MatrixdropdownbaseCellType._('boolean');
const MatrixdropdownbaseCellType _$expression =
    const MatrixdropdownbaseCellType._('expression');
const MatrixdropdownbaseCellType _$rating =
    const MatrixdropdownbaseCellType._('rating');
const MatrixdropdownbaseCellType _$unknownDefaultOpenApi =
    const MatrixdropdownbaseCellType._('unknownDefaultOpenApi');

MatrixdropdownbaseCellType _$valueOf(String name) {
  switch (name) {
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

final BuiltSet<MatrixdropdownbaseCellType> _$values =
    new BuiltSet<MatrixdropdownbaseCellType>(const <MatrixdropdownbaseCellType>[
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

class _$MatrixdropdownbaseCellTypeMeta {
  const _$MatrixdropdownbaseCellTypeMeta();
  MatrixdropdownbaseCellType get dropdown => _$dropdown;
  MatrixdropdownbaseCellType get checkbox => _$checkbox;
  MatrixdropdownbaseCellType get radiogroup => _$radiogroup;
  MatrixdropdownbaseCellType get tagbox => _$tagbox;
  MatrixdropdownbaseCellType get text => _$text;
  MatrixdropdownbaseCellType get comment => _$comment;
  MatrixdropdownbaseCellType get boolean => _$boolean;
  MatrixdropdownbaseCellType get expression => _$expression;
  MatrixdropdownbaseCellType get rating => _$rating;
  MatrixdropdownbaseCellType get unknownDefaultOpenApi =>
      _$unknownDefaultOpenApi;
  MatrixdropdownbaseCellType valueOf(String name) => _$valueOf(name);
  BuiltSet<MatrixdropdownbaseCellType> get values => _$values;
}

abstract class _$MatrixdropdownbaseCellTypeMixin {
  // ignore: non_constant_identifier_names
  _$MatrixdropdownbaseCellTypeMeta get MatrixdropdownbaseCellType =>
      const _$MatrixdropdownbaseCellTypeMeta();
}

Serializer<MatrixdropdownbaseCellType> _$matrixdropdownbaseCellTypeSerializer =
    new _$MatrixdropdownbaseCellTypeSerializer();

class _$MatrixdropdownbaseCellTypeSerializer
    implements PrimitiveSerializer<MatrixdropdownbaseCellType> {
  static const Map<String, Object> _toWire = const <String, Object>{
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
  final Iterable<Type> types = const <Type>[MatrixdropdownbaseCellType];
  @override
  final String wireName = 'MatrixdropdownbaseCellType';

  @override
  Object serialize(Serializers serializers, MatrixdropdownbaseCellType object,
          {FullType specifiedType = FullType.unspecified}) =>
      _toWire[object.name] ?? object.name;

  @override
  MatrixdropdownbaseCellType deserialize(
          Serializers serializers, Object serialized,
          {FullType specifiedType = FullType.unspecified}) =>
      MatrixdropdownbaseCellType.valueOf(
          _fromWire[serialized] ?? (serialized is String ? serialized : ''));
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
