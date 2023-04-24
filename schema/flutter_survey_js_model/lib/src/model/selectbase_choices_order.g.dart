// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'selectbase_choices_order.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const SelectbaseChoicesOrder _$none = const SelectbaseChoicesOrder._('none');
const SelectbaseChoicesOrder _$asc = const SelectbaseChoicesOrder._('asc');
const SelectbaseChoicesOrder _$desc = const SelectbaseChoicesOrder._('desc');
const SelectbaseChoicesOrder _$random =
    const SelectbaseChoicesOrder._('random');
const SelectbaseChoicesOrder _$unknownDefaultOpenApi =
    const SelectbaseChoicesOrder._('unknownDefaultOpenApi');

SelectbaseChoicesOrder _$valueOf(String name) {
  switch (name) {
    case 'none':
      return _$none;
    case 'asc':
      return _$asc;
    case 'desc':
      return _$desc;
    case 'random':
      return _$random;
    case 'unknownDefaultOpenApi':
      return _$unknownDefaultOpenApi;
    default:
      return _$unknownDefaultOpenApi;
  }
}

final BuiltSet<SelectbaseChoicesOrder> _$values =
    new BuiltSet<SelectbaseChoicesOrder>(const <SelectbaseChoicesOrder>[
  _$none,
  _$asc,
  _$desc,
  _$random,
  _$unknownDefaultOpenApi,
]);

class _$SelectbaseChoicesOrderMeta {
  const _$SelectbaseChoicesOrderMeta();
  SelectbaseChoicesOrder get none => _$none;
  SelectbaseChoicesOrder get asc => _$asc;
  SelectbaseChoicesOrder get desc => _$desc;
  SelectbaseChoicesOrder get random => _$random;
  SelectbaseChoicesOrder get unknownDefaultOpenApi => _$unknownDefaultOpenApi;
  SelectbaseChoicesOrder valueOf(String name) => _$valueOf(name);
  BuiltSet<SelectbaseChoicesOrder> get values => _$values;
}

abstract class _$SelectbaseChoicesOrderMixin {
  // ignore: non_constant_identifier_names
  _$SelectbaseChoicesOrderMeta get SelectbaseChoicesOrder =>
      const _$SelectbaseChoicesOrderMeta();
}

Serializer<SelectbaseChoicesOrder> _$selectbaseChoicesOrderSerializer =
    new _$SelectbaseChoicesOrderSerializer();

class _$SelectbaseChoicesOrderSerializer
    implements PrimitiveSerializer<SelectbaseChoicesOrder> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'none': 'none',
    'asc': 'asc',
    'desc': 'desc',
    'random': 'random',
    'unknownDefaultOpenApi': 'unknown_default_open_api',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'none': 'none',
    'asc': 'asc',
    'desc': 'desc',
    'random': 'random',
    'unknown_default_open_api': 'unknownDefaultOpenApi',
  };

  @override
  final Iterable<Type> types = const <Type>[SelectbaseChoicesOrder];
  @override
  final String wireName = 'SelectbaseChoicesOrder';

  @override
  Object serialize(Serializers serializers, SelectbaseChoicesOrder object,
          {FullType specifiedType = FullType.unspecified}) =>
      _toWire[object.name] ?? object.name;

  @override
  SelectbaseChoicesOrder deserialize(Serializers serializers, Object serialized,
          {FullType specifiedType = FullType.unspecified}) =>
      SelectbaseChoicesOrder.valueOf(
          _fromWire[serialized] ?? (serialized is String ? serialized : ''));
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
