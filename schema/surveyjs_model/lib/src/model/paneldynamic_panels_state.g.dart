// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'paneldynamic_panels_state.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const PaneldynamicPanelsState _$default_ =
    const PaneldynamicPanelsState._('default_');
const PaneldynamicPanelsState _$collapsed =
    const PaneldynamicPanelsState._('collapsed');
const PaneldynamicPanelsState _$expanded =
    const PaneldynamicPanelsState._('expanded');
const PaneldynamicPanelsState _$firstExpanded =
    const PaneldynamicPanelsState._('firstExpanded');
const PaneldynamicPanelsState _$unknownDefaultOpenApi =
    const PaneldynamicPanelsState._('unknownDefaultOpenApi');

PaneldynamicPanelsState _$valueOf(String name) {
  switch (name) {
    case 'default_':
      return _$default_;
    case 'collapsed':
      return _$collapsed;
    case 'expanded':
      return _$expanded;
    case 'firstExpanded':
      return _$firstExpanded;
    case 'unknownDefaultOpenApi':
      return _$unknownDefaultOpenApi;
    default:
      return _$unknownDefaultOpenApi;
  }
}

final BuiltSet<PaneldynamicPanelsState> _$values =
    new BuiltSet<PaneldynamicPanelsState>(const <PaneldynamicPanelsState>[
  _$default_,
  _$collapsed,
  _$expanded,
  _$firstExpanded,
  _$unknownDefaultOpenApi,
]);

class _$PaneldynamicPanelsStateMeta {
  const _$PaneldynamicPanelsStateMeta();
  PaneldynamicPanelsState get default_ => _$default_;
  PaneldynamicPanelsState get collapsed => _$collapsed;
  PaneldynamicPanelsState get expanded => _$expanded;
  PaneldynamicPanelsState get firstExpanded => _$firstExpanded;
  PaneldynamicPanelsState get unknownDefaultOpenApi => _$unknownDefaultOpenApi;
  PaneldynamicPanelsState valueOf(String name) => _$valueOf(name);
  BuiltSet<PaneldynamicPanelsState> get values => _$values;
}

abstract class _$PaneldynamicPanelsStateMixin {
  // ignore: non_constant_identifier_names
  _$PaneldynamicPanelsStateMeta get PaneldynamicPanelsState =>
      const _$PaneldynamicPanelsStateMeta();
}

Serializer<PaneldynamicPanelsState> _$paneldynamicPanelsStateSerializer =
    new _$PaneldynamicPanelsStateSerializer();

class _$PaneldynamicPanelsStateSerializer
    implements PrimitiveSerializer<PaneldynamicPanelsState> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'default_': 'default',
    'collapsed': 'collapsed',
    'expanded': 'expanded',
    'firstExpanded': 'firstExpanded',
    'unknownDefaultOpenApi': 'unknown_default_open_api',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'default': 'default_',
    'collapsed': 'collapsed',
    'expanded': 'expanded',
    'firstExpanded': 'firstExpanded',
    'unknown_default_open_api': 'unknownDefaultOpenApi',
  };

  @override
  final Iterable<Type> types = const <Type>[PaneldynamicPanelsState];
  @override
  final String wireName = 'PaneldynamicPanelsState';

  @override
  Object serialize(Serializers serializers, PaneldynamicPanelsState object,
          {FullType specifiedType = FullType.unspecified}) =>
      _toWire[object.name] ?? object.name;

  @override
  PaneldynamicPanelsState deserialize(
          Serializers serializers, Object serialized,
          {FullType specifiedType = FullType.unspecified}) =>
      PaneldynamicPanelsState.valueOf(
          _fromWire[serialized] ?? (serialized is String ? serialized : ''));
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
