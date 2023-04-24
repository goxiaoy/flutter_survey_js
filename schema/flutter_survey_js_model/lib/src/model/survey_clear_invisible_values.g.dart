// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'survey_clear_invisible_values.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const SurveyClearInvisibleValues _$none =
    const SurveyClearInvisibleValues._('none');
const SurveyClearInvisibleValues _$onComplete =
    const SurveyClearInvisibleValues._('onComplete');
const SurveyClearInvisibleValues _$onHidden =
    const SurveyClearInvisibleValues._('onHidden');
const SurveyClearInvisibleValues _$onHiddenContainer =
    const SurveyClearInvisibleValues._('onHiddenContainer');
const SurveyClearInvisibleValues _$unknownDefaultOpenApi =
    const SurveyClearInvisibleValues._('unknownDefaultOpenApi');

SurveyClearInvisibleValues _$valueOf(String name) {
  switch (name) {
    case 'none':
      return _$none;
    case 'onComplete':
      return _$onComplete;
    case 'onHidden':
      return _$onHidden;
    case 'onHiddenContainer':
      return _$onHiddenContainer;
    case 'unknownDefaultOpenApi':
      return _$unknownDefaultOpenApi;
    default:
      return _$unknownDefaultOpenApi;
  }
}

final BuiltSet<SurveyClearInvisibleValues> _$values =
    new BuiltSet<SurveyClearInvisibleValues>(const <SurveyClearInvisibleValues>[
  _$none,
  _$onComplete,
  _$onHidden,
  _$onHiddenContainer,
  _$unknownDefaultOpenApi,
]);

class _$SurveyClearInvisibleValuesMeta {
  const _$SurveyClearInvisibleValuesMeta();
  SurveyClearInvisibleValues get none => _$none;
  SurveyClearInvisibleValues get onComplete => _$onComplete;
  SurveyClearInvisibleValues get onHidden => _$onHidden;
  SurveyClearInvisibleValues get onHiddenContainer => _$onHiddenContainer;
  SurveyClearInvisibleValues get unknownDefaultOpenApi =>
      _$unknownDefaultOpenApi;
  SurveyClearInvisibleValues valueOf(String name) => _$valueOf(name);
  BuiltSet<SurveyClearInvisibleValues> get values => _$values;
}

abstract class _$SurveyClearInvisibleValuesMixin {
  // ignore: non_constant_identifier_names
  _$SurveyClearInvisibleValuesMeta get SurveyClearInvisibleValues =>
      const _$SurveyClearInvisibleValuesMeta();
}

Serializer<SurveyClearInvisibleValues> _$surveyClearInvisibleValuesSerializer =
    new _$SurveyClearInvisibleValuesSerializer();

class _$SurveyClearInvisibleValuesSerializer
    implements PrimitiveSerializer<SurveyClearInvisibleValues> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'none': 'none',
    'onComplete': 'onComplete',
    'onHidden': 'onHidden',
    'onHiddenContainer': 'onHiddenContainer',
    'unknownDefaultOpenApi': 'unknown_default_open_api',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'none': 'none',
    'onComplete': 'onComplete',
    'onHidden': 'onHidden',
    'onHiddenContainer': 'onHiddenContainer',
    'unknown_default_open_api': 'unknownDefaultOpenApi',
  };

  @override
  final Iterable<Type> types = const <Type>[SurveyClearInvisibleValues];
  @override
  final String wireName = 'SurveyClearInvisibleValues';

  @override
  Object serialize(Serializers serializers, SurveyClearInvisibleValues object,
          {FullType specifiedType = FullType.unspecified}) =>
      _toWire[object.name] ?? object.name;

  @override
  SurveyClearInvisibleValues deserialize(
          Serializers serializers, Object serialized,
          {FullType specifiedType = FullType.unspecified}) =>
      SurveyClearInvisibleValues.valueOf(
          _fromWire[serialized] ?? (serialized is String ? serialized : ''));
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
