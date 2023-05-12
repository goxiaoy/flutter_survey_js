// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'checkboxbase_col_count.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const CheckboxbaseColCount _$n0 = const CheckboxbaseColCount._('n0');
const CheckboxbaseColCount _$n1 = const CheckboxbaseColCount._('n1');
const CheckboxbaseColCount _$n2 = const CheckboxbaseColCount._('n2');
const CheckboxbaseColCount _$n3 = const CheckboxbaseColCount._('n3');
const CheckboxbaseColCount _$n4 = const CheckboxbaseColCount._('n4');
const CheckboxbaseColCount _$n5 = const CheckboxbaseColCount._('n5');
const CheckboxbaseColCount _$unknownDefaultOpenApi =
    const CheckboxbaseColCount._('unknownDefaultOpenApi');

CheckboxbaseColCount _$valueOf(String name) {
  switch (name) {
    case 'n0':
      return _$n0;
    case 'n1':
      return _$n1;
    case 'n2':
      return _$n2;
    case 'n3':
      return _$n3;
    case 'n4':
      return _$n4;
    case 'n5':
      return _$n5;
    case 'unknownDefaultOpenApi':
      return _$unknownDefaultOpenApi;
    default:
      return _$unknownDefaultOpenApi;
  }
}

final BuiltSet<CheckboxbaseColCount> _$values =
    new BuiltSet<CheckboxbaseColCount>(const <CheckboxbaseColCount>[
  _$n0,
  _$n1,
  _$n2,
  _$n3,
  _$n4,
  _$n5,
  _$unknownDefaultOpenApi,
]);

class _$CheckboxbaseColCountMeta {
  const _$CheckboxbaseColCountMeta();
  CheckboxbaseColCount get n0 => _$n0;
  CheckboxbaseColCount get n1 => _$n1;
  CheckboxbaseColCount get n2 => _$n2;
  CheckboxbaseColCount get n3 => _$n3;
  CheckboxbaseColCount get n4 => _$n4;
  CheckboxbaseColCount get n5 => _$n5;
  CheckboxbaseColCount get unknownDefaultOpenApi => _$unknownDefaultOpenApi;
  CheckboxbaseColCount valueOf(String name) => _$valueOf(name);
  BuiltSet<CheckboxbaseColCount> get values => _$values;
}

abstract class _$CheckboxbaseColCountMixin {
  // ignore: non_constant_identifier_names
  _$CheckboxbaseColCountMeta get CheckboxbaseColCount =>
      const _$CheckboxbaseColCountMeta();
}

Serializer<CheckboxbaseColCount> _$checkboxbaseColCountSerializer =
    new _$CheckboxbaseColCountSerializer();

class _$CheckboxbaseColCountSerializer
    implements PrimitiveSerializer<CheckboxbaseColCount> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'n0': '0',
    'n1': '1',
    'n2': '2',
    'n3': '3',
    'n4': '4',
    'n5': '5',
    'unknownDefaultOpenApi': '11184809',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    '0': 'n0',
    '1': 'n1',
    '2': 'n2',
    '3': 'n3',
    '4': 'n4',
    '5': 'n5',
    '11184809': 'unknownDefaultOpenApi',
  };

  @override
  final Iterable<Type> types = const <Type>[CheckboxbaseColCount];
  @override
  final String wireName = 'CheckboxbaseColCount';

  @override
  Object serialize(Serializers serializers, CheckboxbaseColCount object,
          {FullType specifiedType = FullType.unspecified}) =>
      _toWire[object.name] ?? object.name;

  @override
  CheckboxbaseColCount deserialize(Serializers serializers, Object serialized,
          {FullType specifiedType = FullType.unspecified}) =>
      CheckboxbaseColCount.valueOf(
          _fromWire[serialized] ?? (serialized is String ? serialized : ''));
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
