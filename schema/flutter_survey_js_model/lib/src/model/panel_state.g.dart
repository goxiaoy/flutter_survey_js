// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'panel_state.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const PanelState _$default_ = const PanelState._('default_');
const PanelState _$collapsed = const PanelState._('collapsed');
const PanelState _$expanded = const PanelState._('expanded');
const PanelState _$unknownDefaultOpenApi =
    const PanelState._('unknownDefaultOpenApi');

PanelState _$valueOf(String name) {
  switch (name) {
    case 'default_':
      return _$default_;
    case 'collapsed':
      return _$collapsed;
    case 'expanded':
      return _$expanded;
    case 'unknownDefaultOpenApi':
      return _$unknownDefaultOpenApi;
    default:
      return _$unknownDefaultOpenApi;
  }
}

final BuiltSet<PanelState> _$values =
    new BuiltSet<PanelState>(const <PanelState>[
  _$default_,
  _$collapsed,
  _$expanded,
  _$unknownDefaultOpenApi,
]);

class _$PanelStateMeta {
  const _$PanelStateMeta();
  PanelState get default_ => _$default_;
  PanelState get collapsed => _$collapsed;
  PanelState get expanded => _$expanded;
  PanelState get unknownDefaultOpenApi => _$unknownDefaultOpenApi;
  PanelState valueOf(String name) => _$valueOf(name);
  BuiltSet<PanelState> get values => _$values;
}

abstract class _$PanelStateMixin {
  // ignore: non_constant_identifier_names
  _$PanelStateMeta get PanelState => const _$PanelStateMeta();
}

Serializer<PanelState> _$panelStateSerializer = new _$PanelStateSerializer();

class _$PanelStateSerializer implements PrimitiveSerializer<PanelState> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'default_': 'default',
    'collapsed': 'collapsed',
    'expanded': 'expanded',
    'unknownDefaultOpenApi': 'unknown_default_open_api',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'default': 'default_',
    'collapsed': 'collapsed',
    'expanded': 'expanded',
    'unknown_default_open_api': 'unknownDefaultOpenApi',
  };

  @override
  final Iterable<Type> types = const <Type>[PanelState];
  @override
  final String wireName = 'PanelState';

  @override
  Object serialize(Serializers serializers, PanelState object,
          {FullType specifiedType = FullType.unspecified}) =>
      _toWire[object.name] ?? object.name;

  @override
  PanelState deserialize(Serializers serializers, Object serialized,
          {FullType specifiedType = FullType.unspecified}) =>
      PanelState.valueOf(
          _fromWire[serialized] ?? (serialized is String ? serialized : ''));
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
