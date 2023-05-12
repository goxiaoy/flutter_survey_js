// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'imagepicker_col_count.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const ImagepickerColCount _$n0 = const ImagepickerColCount._('n0');
const ImagepickerColCount _$n1 = const ImagepickerColCount._('n1');
const ImagepickerColCount _$n2 = const ImagepickerColCount._('n2');
const ImagepickerColCount _$n3 = const ImagepickerColCount._('n3');
const ImagepickerColCount _$n4 = const ImagepickerColCount._('n4');
const ImagepickerColCount _$n5 = const ImagepickerColCount._('n5');
const ImagepickerColCount _$unknownDefaultOpenApi =
    const ImagepickerColCount._('unknownDefaultOpenApi');

ImagepickerColCount _$valueOf(String name) {
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

final BuiltSet<ImagepickerColCount> _$values =
    new BuiltSet<ImagepickerColCount>(const <ImagepickerColCount>[
  _$n0,
  _$n1,
  _$n2,
  _$n3,
  _$n4,
  _$n5,
  _$unknownDefaultOpenApi,
]);

class _$ImagepickerColCountMeta {
  const _$ImagepickerColCountMeta();
  ImagepickerColCount get n0 => _$n0;
  ImagepickerColCount get n1 => _$n1;
  ImagepickerColCount get n2 => _$n2;
  ImagepickerColCount get n3 => _$n3;
  ImagepickerColCount get n4 => _$n4;
  ImagepickerColCount get n5 => _$n5;
  ImagepickerColCount get unknownDefaultOpenApi => _$unknownDefaultOpenApi;
  ImagepickerColCount valueOf(String name) => _$valueOf(name);
  BuiltSet<ImagepickerColCount> get values => _$values;
}

abstract class _$ImagepickerColCountMixin {
  // ignore: non_constant_identifier_names
  _$ImagepickerColCountMeta get ImagepickerColCount =>
      const _$ImagepickerColCountMeta();
}

Serializer<ImagepickerColCount> _$imagepickerColCountSerializer =
    new _$ImagepickerColCountSerializer();

class _$ImagepickerColCountSerializer
    implements PrimitiveSerializer<ImagepickerColCount> {
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
  final Iterable<Type> types = const <Type>[ImagepickerColCount];
  @override
  final String wireName = 'ImagepickerColCount';

  @override
  Object serialize(Serializers serializers, ImagepickerColCount object,
          {FullType specifiedType = FullType.unspecified}) =>
      _toWire[object.name] ?? object.name;

  @override
  ImagepickerColCount deserialize(Serializers serializers, Object serialized,
          {FullType specifiedType = FullType.unspecified}) =>
      ImagepickerColCount.valueOf(
          _fromWire[serialized] ?? (serialized is String ? serialized : ''));
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
