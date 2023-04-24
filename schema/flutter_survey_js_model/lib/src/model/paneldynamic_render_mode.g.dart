// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'paneldynamic_render_mode.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const PaneldynamicRenderMode _$list = const PaneldynamicRenderMode._('list');
const PaneldynamicRenderMode _$progressTop =
    const PaneldynamicRenderMode._('progressTop');
const PaneldynamicRenderMode _$progressBottom =
    const PaneldynamicRenderMode._('progressBottom');
const PaneldynamicRenderMode _$progressTopBottom =
    const PaneldynamicRenderMode._('progressTopBottom');
const PaneldynamicRenderMode _$tab = const PaneldynamicRenderMode._('tab');
const PaneldynamicRenderMode _$unknownDefaultOpenApi =
    const PaneldynamicRenderMode._('unknownDefaultOpenApi');

PaneldynamicRenderMode _$valueOf(String name) {
  switch (name) {
    case 'list':
      return _$list;
    case 'progressTop':
      return _$progressTop;
    case 'progressBottom':
      return _$progressBottom;
    case 'progressTopBottom':
      return _$progressTopBottom;
    case 'tab':
      return _$tab;
    case 'unknownDefaultOpenApi':
      return _$unknownDefaultOpenApi;
    default:
      return _$unknownDefaultOpenApi;
  }
}

final BuiltSet<PaneldynamicRenderMode> _$values =
    new BuiltSet<PaneldynamicRenderMode>(const <PaneldynamicRenderMode>[
  _$list,
  _$progressTop,
  _$progressBottom,
  _$progressTopBottom,
  _$tab,
  _$unknownDefaultOpenApi,
]);

class _$PaneldynamicRenderModeMeta {
  const _$PaneldynamicRenderModeMeta();
  PaneldynamicRenderMode get list => _$list;
  PaneldynamicRenderMode get progressTop => _$progressTop;
  PaneldynamicRenderMode get progressBottom => _$progressBottom;
  PaneldynamicRenderMode get progressTopBottom => _$progressTopBottom;
  PaneldynamicRenderMode get tab => _$tab;
  PaneldynamicRenderMode get unknownDefaultOpenApi => _$unknownDefaultOpenApi;
  PaneldynamicRenderMode valueOf(String name) => _$valueOf(name);
  BuiltSet<PaneldynamicRenderMode> get values => _$values;
}

abstract class _$PaneldynamicRenderModeMixin {
  // ignore: non_constant_identifier_names
  _$PaneldynamicRenderModeMeta get PaneldynamicRenderMode =>
      const _$PaneldynamicRenderModeMeta();
}

Serializer<PaneldynamicRenderMode> _$paneldynamicRenderModeSerializer =
    new _$PaneldynamicRenderModeSerializer();

class _$PaneldynamicRenderModeSerializer
    implements PrimitiveSerializer<PaneldynamicRenderMode> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'list': 'list',
    'progressTop': 'progressTop',
    'progressBottom': 'progressBottom',
    'progressTopBottom': 'progressTopBottom',
    'tab': 'tab',
    'unknownDefaultOpenApi': 'unknown_default_open_api',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'list': 'list',
    'progressTop': 'progressTop',
    'progressBottom': 'progressBottom',
    'progressTopBottom': 'progressTopBottom',
    'tab': 'tab',
    'unknown_default_open_api': 'unknownDefaultOpenApi',
  };

  @override
  final Iterable<Type> types = const <Type>[PaneldynamicRenderMode];
  @override
  final String wireName = 'PaneldynamicRenderMode';

  @override
  Object serialize(Serializers serializers, PaneldynamicRenderMode object,
          {FullType specifiedType = FullType.unspecified}) =>
      _toWire[object.name] ?? object.name;

  @override
  PaneldynamicRenderMode deserialize(Serializers serializers, Object serialized,
          {FullType specifiedType = FullType.unspecified}) =>
      PaneldynamicRenderMode.valueOf(
          _fromWire[serialized] ?? (serialized is String ? serialized : ''));
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
