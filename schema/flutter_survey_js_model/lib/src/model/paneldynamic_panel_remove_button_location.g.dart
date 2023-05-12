// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'paneldynamic_panel_remove_button_location.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const PaneldynamicPanelRemoveButtonLocation _$bottom =
    const PaneldynamicPanelRemoveButtonLocation._('bottom');
const PaneldynamicPanelRemoveButtonLocation _$right =
    const PaneldynamicPanelRemoveButtonLocation._('right');
const PaneldynamicPanelRemoveButtonLocation _$unknownDefaultOpenApi =
    const PaneldynamicPanelRemoveButtonLocation._('unknownDefaultOpenApi');

PaneldynamicPanelRemoveButtonLocation _$valueOf(String name) {
  switch (name) {
    case 'bottom':
      return _$bottom;
    case 'right':
      return _$right;
    case 'unknownDefaultOpenApi':
      return _$unknownDefaultOpenApi;
    default:
      return _$unknownDefaultOpenApi;
  }
}

final BuiltSet<PaneldynamicPanelRemoveButtonLocation> _$values = new BuiltSet<
    PaneldynamicPanelRemoveButtonLocation>(const <PaneldynamicPanelRemoveButtonLocation>[
  _$bottom,
  _$right,
  _$unknownDefaultOpenApi,
]);

class _$PaneldynamicPanelRemoveButtonLocationMeta {
  const _$PaneldynamicPanelRemoveButtonLocationMeta();
  PaneldynamicPanelRemoveButtonLocation get bottom => _$bottom;
  PaneldynamicPanelRemoveButtonLocation get right => _$right;
  PaneldynamicPanelRemoveButtonLocation get unknownDefaultOpenApi =>
      _$unknownDefaultOpenApi;
  PaneldynamicPanelRemoveButtonLocation valueOf(String name) => _$valueOf(name);
  BuiltSet<PaneldynamicPanelRemoveButtonLocation> get values => _$values;
}

abstract class _$PaneldynamicPanelRemoveButtonLocationMixin {
  // ignore: non_constant_identifier_names
  _$PaneldynamicPanelRemoveButtonLocationMeta
      get PaneldynamicPanelRemoveButtonLocation =>
          const _$PaneldynamicPanelRemoveButtonLocationMeta();
}

Serializer<PaneldynamicPanelRemoveButtonLocation>
    _$paneldynamicPanelRemoveButtonLocationSerializer =
    new _$PaneldynamicPanelRemoveButtonLocationSerializer();

class _$PaneldynamicPanelRemoveButtonLocationSerializer
    implements PrimitiveSerializer<PaneldynamicPanelRemoveButtonLocation> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'bottom': 'bottom',
    'right': 'right',
    'unknownDefaultOpenApi': 'unknown_default_open_api',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'bottom': 'bottom',
    'right': 'right',
    'unknown_default_open_api': 'unknownDefaultOpenApi',
  };

  @override
  final Iterable<Type> types = const <Type>[
    PaneldynamicPanelRemoveButtonLocation
  ];
  @override
  final String wireName = 'PaneldynamicPanelRemoveButtonLocation';

  @override
  Object serialize(
          Serializers serializers, PaneldynamicPanelRemoveButtonLocation object,
          {FullType specifiedType = FullType.unspecified}) =>
      _toWire[object.name] ?? object.name;

  @override
  PaneldynamicPanelRemoveButtonLocation deserialize(
          Serializers serializers, Object serialized,
          {FullType specifiedType = FullType.unspecified}) =>
      PaneldynamicPanelRemoveButtonLocation.valueOf(
          _fromWire[serialized] ?? (serialized is String ? serialized : ''));
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
