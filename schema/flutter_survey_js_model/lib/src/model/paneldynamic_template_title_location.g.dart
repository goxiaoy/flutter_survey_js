// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'paneldynamic_template_title_location.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const PaneldynamicTemplateTitleLocation _$default_ =
    const PaneldynamicTemplateTitleLocation._('default_');
const PaneldynamicTemplateTitleLocation _$top =
    const PaneldynamicTemplateTitleLocation._('top');
const PaneldynamicTemplateTitleLocation _$bottom =
    const PaneldynamicTemplateTitleLocation._('bottom');
const PaneldynamicTemplateTitleLocation _$left =
    const PaneldynamicTemplateTitleLocation._('left');
const PaneldynamicTemplateTitleLocation _$unknownDefaultOpenApi =
    const PaneldynamicTemplateTitleLocation._('unknownDefaultOpenApi');

PaneldynamicTemplateTitleLocation _$valueOf(String name) {
  switch (name) {
    case 'default_':
      return _$default_;
    case 'top':
      return _$top;
    case 'bottom':
      return _$bottom;
    case 'left':
      return _$left;
    case 'unknownDefaultOpenApi':
      return _$unknownDefaultOpenApi;
    default:
      return _$unknownDefaultOpenApi;
  }
}

final BuiltSet<PaneldynamicTemplateTitleLocation> _$values = new BuiltSet<
    PaneldynamicTemplateTitleLocation>(const <PaneldynamicTemplateTitleLocation>[
  _$default_,
  _$top,
  _$bottom,
  _$left,
  _$unknownDefaultOpenApi,
]);

class _$PaneldynamicTemplateTitleLocationMeta {
  const _$PaneldynamicTemplateTitleLocationMeta();
  PaneldynamicTemplateTitleLocation get default_ => _$default_;
  PaneldynamicTemplateTitleLocation get top => _$top;
  PaneldynamicTemplateTitleLocation get bottom => _$bottom;
  PaneldynamicTemplateTitleLocation get left => _$left;
  PaneldynamicTemplateTitleLocation get unknownDefaultOpenApi =>
      _$unknownDefaultOpenApi;
  PaneldynamicTemplateTitleLocation valueOf(String name) => _$valueOf(name);
  BuiltSet<PaneldynamicTemplateTitleLocation> get values => _$values;
}

abstract class _$PaneldynamicTemplateTitleLocationMixin {
  // ignore: non_constant_identifier_names
  _$PaneldynamicTemplateTitleLocationMeta
      get PaneldynamicTemplateTitleLocation =>
          const _$PaneldynamicTemplateTitleLocationMeta();
}

Serializer<PaneldynamicTemplateTitleLocation>
    _$paneldynamicTemplateTitleLocationSerializer =
    new _$PaneldynamicTemplateTitleLocationSerializer();

class _$PaneldynamicTemplateTitleLocationSerializer
    implements PrimitiveSerializer<PaneldynamicTemplateTitleLocation> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'default_': 'default',
    'top': 'top',
    'bottom': 'bottom',
    'left': 'left',
    'unknownDefaultOpenApi': 'unknown_default_open_api',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'default': 'default_',
    'top': 'top',
    'bottom': 'bottom',
    'left': 'left',
    'unknown_default_open_api': 'unknownDefaultOpenApi',
  };

  @override
  final Iterable<Type> types = const <Type>[PaneldynamicTemplateTitleLocation];
  @override
  final String wireName = 'PaneldynamicTemplateTitleLocation';

  @override
  Object serialize(
          Serializers serializers, PaneldynamicTemplateTitleLocation object,
          {FullType specifiedType = FullType.unspecified}) =>
      _toWire[object.name] ?? object.name;

  @override
  PaneldynamicTemplateTitleLocation deserialize(
          Serializers serializers, Object serialized,
          {FullType specifiedType = FullType.unspecified}) =>
      PaneldynamicTemplateTitleLocation.valueOf(
          _fromWire[serialized] ?? (serialized is String ? serialized : ''));
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
