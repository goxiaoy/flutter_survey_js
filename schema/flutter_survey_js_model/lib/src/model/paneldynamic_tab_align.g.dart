// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'paneldynamic_tab_align.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const PaneldynamicTabAlign _$center = const PaneldynamicTabAlign._('center');
const PaneldynamicTabAlign _$left = const PaneldynamicTabAlign._('left');
const PaneldynamicTabAlign _$right = const PaneldynamicTabAlign._('right');
const PaneldynamicTabAlign _$unknownDefaultOpenApi =
    const PaneldynamicTabAlign._('unknownDefaultOpenApi');

PaneldynamicTabAlign _$valueOf(String name) {
  switch (name) {
    case 'center':
      return _$center;
    case 'left':
      return _$left;
    case 'right':
      return _$right;
    case 'unknownDefaultOpenApi':
      return _$unknownDefaultOpenApi;
    default:
      return _$unknownDefaultOpenApi;
  }
}

final BuiltSet<PaneldynamicTabAlign> _$values =
    new BuiltSet<PaneldynamicTabAlign>(const <PaneldynamicTabAlign>[
  _$center,
  _$left,
  _$right,
  _$unknownDefaultOpenApi,
]);

class _$PaneldynamicTabAlignMeta {
  const _$PaneldynamicTabAlignMeta();
  PaneldynamicTabAlign get center => _$center;
  PaneldynamicTabAlign get left => _$left;
  PaneldynamicTabAlign get right => _$right;
  PaneldynamicTabAlign get unknownDefaultOpenApi => _$unknownDefaultOpenApi;
  PaneldynamicTabAlign valueOf(String name) => _$valueOf(name);
  BuiltSet<PaneldynamicTabAlign> get values => _$values;
}

abstract class _$PaneldynamicTabAlignMixin {
  // ignore: non_constant_identifier_names
  _$PaneldynamicTabAlignMeta get PaneldynamicTabAlign =>
      const _$PaneldynamicTabAlignMeta();
}

Serializer<PaneldynamicTabAlign> _$paneldynamicTabAlignSerializer =
    new _$PaneldynamicTabAlignSerializer();

class _$PaneldynamicTabAlignSerializer
    implements PrimitiveSerializer<PaneldynamicTabAlign> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'center': 'center',
    'left': 'left',
    'right': 'right',
    'unknownDefaultOpenApi': 'unknown_default_open_api',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'center': 'center',
    'left': 'left',
    'right': 'right',
    'unknown_default_open_api': 'unknownDefaultOpenApi',
  };

  @override
  final Iterable<Type> types = const <Type>[PaneldynamicTabAlign];
  @override
  final String wireName = 'PaneldynamicTabAlign';

  @override
  Object serialize(Serializers serializers, PaneldynamicTabAlign object,
          {FullType specifiedType = FullType.unspecified}) =>
      _toWire[object.name] ?? object.name;

  @override
  PaneldynamicTabAlign deserialize(Serializers serializers, Object serialized,
          {FullType specifiedType = FullType.unspecified}) =>
      PaneldynamicTabAlign.valueOf(
          _fromWire[serialized] ?? (serialized is String ? serialized : ''));
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
