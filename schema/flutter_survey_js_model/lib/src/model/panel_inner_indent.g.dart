// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'panel_inner_indent.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const PanelInnerIndent _$n0 = const PanelInnerIndent._('n0');
const PanelInnerIndent _$n1 = const PanelInnerIndent._('n1');
const PanelInnerIndent _$n2 = const PanelInnerIndent._('n2');
const PanelInnerIndent _$n3 = const PanelInnerIndent._('n3');
const PanelInnerIndent _$unknownDefaultOpenApi =
    const PanelInnerIndent._('unknownDefaultOpenApi');

PanelInnerIndent _$valueOf(String name) {
  switch (name) {
    case 'n0':
      return _$n0;
    case 'n1':
      return _$n1;
    case 'n2':
      return _$n2;
    case 'n3':
      return _$n3;
    case 'unknownDefaultOpenApi':
      return _$unknownDefaultOpenApi;
    default:
      return _$unknownDefaultOpenApi;
  }
}

final BuiltSet<PanelInnerIndent> _$values =
    new BuiltSet<PanelInnerIndent>(const <PanelInnerIndent>[
  _$n0,
  _$n1,
  _$n2,
  _$n3,
  _$unknownDefaultOpenApi,
]);

class _$PanelInnerIndentMeta {
  const _$PanelInnerIndentMeta();
  PanelInnerIndent get n0 => _$n0;
  PanelInnerIndent get n1 => _$n1;
  PanelInnerIndent get n2 => _$n2;
  PanelInnerIndent get n3 => _$n3;
  PanelInnerIndent get unknownDefaultOpenApi => _$unknownDefaultOpenApi;
  PanelInnerIndent valueOf(String name) => _$valueOf(name);
  BuiltSet<PanelInnerIndent> get values => _$values;
}

abstract class _$PanelInnerIndentMixin {
  // ignore: non_constant_identifier_names
  _$PanelInnerIndentMeta get PanelInnerIndent => const _$PanelInnerIndentMeta();
}

Serializer<PanelInnerIndent> _$panelInnerIndentSerializer =
    new _$PanelInnerIndentSerializer();

class _$PanelInnerIndentSerializer
    implements PrimitiveSerializer<PanelInnerIndent> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'n0': '0',
    'n1': '1',
    'n2': '2',
    'n3': '3',
    'unknownDefaultOpenApi': '11184809',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    '0': 'n0',
    '1': 'n1',
    '2': 'n2',
    '3': 'n3',
    '11184809': 'unknownDefaultOpenApi',
  };

  @override
  final Iterable<Type> types = const <Type>[PanelInnerIndent];
  @override
  final String wireName = 'PanelInnerIndent';

  @override
  Object serialize(Serializers serializers, PanelInnerIndent object,
          {FullType specifiedType = FullType.unspecified}) =>
      _toWire[object.name] ?? object.name;

  @override
  PanelInnerIndent deserialize(Serializers serializers, Object serialized,
          {FullType specifiedType = FullType.unspecified}) =>
      PanelInnerIndent.valueOf(
          _fromWire[serialized] ?? (serialized is String ? serialized : ''));
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
