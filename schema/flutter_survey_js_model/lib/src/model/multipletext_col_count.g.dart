// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'multipletext_col_count.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const MultipletextColCount _$n1 = const MultipletextColCount._('n1');
const MultipletextColCount _$n2 = const MultipletextColCount._('n2');
const MultipletextColCount _$n3 = const MultipletextColCount._('n3');
const MultipletextColCount _$n4 = const MultipletextColCount._('n4');
const MultipletextColCount _$n5 = const MultipletextColCount._('n5');
const MultipletextColCount _$unknownDefaultOpenApi =
    const MultipletextColCount._('unknownDefaultOpenApi');

MultipletextColCount _$valueOf(String name) {
  switch (name) {
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

final BuiltSet<MultipletextColCount> _$values =
    new BuiltSet<MultipletextColCount>(const <MultipletextColCount>[
  _$n1,
  _$n2,
  _$n3,
  _$n4,
  _$n5,
  _$unknownDefaultOpenApi,
]);

class _$MultipletextColCountMeta {
  const _$MultipletextColCountMeta();
  MultipletextColCount get n1 => _$n1;
  MultipletextColCount get n2 => _$n2;
  MultipletextColCount get n3 => _$n3;
  MultipletextColCount get n4 => _$n4;
  MultipletextColCount get n5 => _$n5;
  MultipletextColCount get unknownDefaultOpenApi => _$unknownDefaultOpenApi;
  MultipletextColCount valueOf(String name) => _$valueOf(name);
  BuiltSet<MultipletextColCount> get values => _$values;
}

abstract class _$MultipletextColCountMixin {
  // ignore: non_constant_identifier_names
  _$MultipletextColCountMeta get MultipletextColCount =>
      const _$MultipletextColCountMeta();
}

Serializer<MultipletextColCount> _$multipletextColCountSerializer =
    new _$MultipletextColCountSerializer();

class _$MultipletextColCountSerializer
    implements PrimitiveSerializer<MultipletextColCount> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'n1': '1',
    'n2': '2',
    'n3': '3',
    'n4': '4',
    'n5': '5',
    'unknownDefaultOpenApi': '11184809',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    '1': 'n1',
    '2': 'n2',
    '3': 'n3',
    '4': 'n4',
    '5': 'n5',
    '11184809': 'unknownDefaultOpenApi',
  };

  @override
  final Iterable<Type> types = const <Type>[MultipletextColCount];
  @override
  final String wireName = 'MultipletextColCount';

  @override
  Object serialize(Serializers serializers, MultipletextColCount object,
          {FullType specifiedType = FullType.unspecified}) =>
      _toWire[object.name] ?? object.name;

  @override
  MultipletextColCount deserialize(Serializers serializers, Object serialized,
          {FullType specifiedType = FullType.unspecified}) =>
      MultipletextColCount.valueOf(
          _fromWire[serialized] ?? (serialized is String ? serialized : ''));
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
