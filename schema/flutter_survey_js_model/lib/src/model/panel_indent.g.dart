// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'panel_indent.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const PanelIndent _$n0 = const PanelIndent._('n0');
const PanelIndent _$n1 = const PanelIndent._('n1');
const PanelIndent _$n2 = const PanelIndent._('n2');
const PanelIndent _$n3 = const PanelIndent._('n3');
const PanelIndent _$unknownDefaultOpenApi =
    const PanelIndent._('unknownDefaultOpenApi');

PanelIndent _$valueOf(String name) {
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

final BuiltSet<PanelIndent> _$values =
    new BuiltSet<PanelIndent>(const <PanelIndent>[
  _$n0,
  _$n1,
  _$n2,
  _$n3,
  _$unknownDefaultOpenApi,
]);

class _$PanelIndentMeta {
  const _$PanelIndentMeta();
  PanelIndent get n0 => _$n0;
  PanelIndent get n1 => _$n1;
  PanelIndent get n2 => _$n2;
  PanelIndent get n3 => _$n3;
  PanelIndent get unknownDefaultOpenApi => _$unknownDefaultOpenApi;
  PanelIndent valueOf(String name) => _$valueOf(name);
  BuiltSet<PanelIndent> get values => _$values;
}

abstract class _$PanelIndentMixin {
  // ignore: non_constant_identifier_names
  _$PanelIndentMeta get PanelIndent => const _$PanelIndentMeta();
}

Serializer<PanelIndent> _$panelIndentSerializer = new _$PanelIndentSerializer();

class _$PanelIndentSerializer implements PrimitiveSerializer<PanelIndent> {
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
  final Iterable<Type> types = const <Type>[PanelIndent];
  @override
  final String wireName = 'PanelIndent';

  @override
  Object serialize(Serializers serializers, PanelIndent object,
          {FullType specifiedType = FullType.unspecified}) =>
      _toWire[object.name] ?? object.name;

  @override
  PanelIndent deserialize(Serializers serializers, Object serialized,
          {FullType specifiedType = FullType.unspecified}) =>
      PanelIndent.valueOf(
          _fromWire[serialized] ?? (serialized is String ? serialized : ''));
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
