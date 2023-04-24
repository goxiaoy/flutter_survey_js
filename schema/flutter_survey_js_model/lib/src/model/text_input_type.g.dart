// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'text_input_type.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const TextInputType _$color = const TextInputType._('color');
const TextInputType _$date = const TextInputType._('date');
const TextInputType _$datetimeLocal = const TextInputType._('datetimeLocal');
const TextInputType _$email = const TextInputType._('email');
const TextInputType _$month = const TextInputType._('month');
const TextInputType _$number = const TextInputType._('number');
const TextInputType _$password = const TextInputType._('password');
const TextInputType _$range = const TextInputType._('range');
const TextInputType _$tel = const TextInputType._('tel');
const TextInputType _$text = const TextInputType._('text');
const TextInputType _$time = const TextInputType._('time');
const TextInputType _$url = const TextInputType._('url');
const TextInputType _$week = const TextInputType._('week');
const TextInputType _$unknownDefaultOpenApi =
    const TextInputType._('unknownDefaultOpenApi');

TextInputType _$valueOf(String name) {
  switch (name) {
    case 'color':
      return _$color;
    case 'date':
      return _$date;
    case 'datetimeLocal':
      return _$datetimeLocal;
    case 'email':
      return _$email;
    case 'month':
      return _$month;
    case 'number':
      return _$number;
    case 'password':
      return _$password;
    case 'range':
      return _$range;
    case 'tel':
      return _$tel;
    case 'text':
      return _$text;
    case 'time':
      return _$time;
    case 'url':
      return _$url;
    case 'week':
      return _$week;
    case 'unknownDefaultOpenApi':
      return _$unknownDefaultOpenApi;
    default:
      return _$unknownDefaultOpenApi;
  }
}

final BuiltSet<TextInputType> _$values =
    new BuiltSet<TextInputType>(const <TextInputType>[
  _$color,
  _$date,
  _$datetimeLocal,
  _$email,
  _$month,
  _$number,
  _$password,
  _$range,
  _$tel,
  _$text,
  _$time,
  _$url,
  _$week,
  _$unknownDefaultOpenApi,
]);

class _$TextInputTypeMeta {
  const _$TextInputTypeMeta();
  TextInputType get color => _$color;
  TextInputType get date => _$date;
  TextInputType get datetimeLocal => _$datetimeLocal;
  TextInputType get email => _$email;
  TextInputType get month => _$month;
  TextInputType get number => _$number;
  TextInputType get password => _$password;
  TextInputType get range => _$range;
  TextInputType get tel => _$tel;
  TextInputType get text => _$text;
  TextInputType get time => _$time;
  TextInputType get url => _$url;
  TextInputType get week => _$week;
  TextInputType get unknownDefaultOpenApi => _$unknownDefaultOpenApi;
  TextInputType valueOf(String name) => _$valueOf(name);
  BuiltSet<TextInputType> get values => _$values;
}

abstract class _$TextInputTypeMixin {
  // ignore: non_constant_identifier_names
  _$TextInputTypeMeta get TextInputType => const _$TextInputTypeMeta();
}

Serializer<TextInputType> _$textInputTypeSerializer =
    new _$TextInputTypeSerializer();

class _$TextInputTypeSerializer implements PrimitiveSerializer<TextInputType> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'color': 'color',
    'date': 'date',
    'datetimeLocal': 'datetime-local',
    'email': 'email',
    'month': 'month',
    'number': 'number',
    'password': 'password',
    'range': 'range',
    'tel': 'tel',
    'text': 'text',
    'time': 'time',
    'url': 'url',
    'week': 'week',
    'unknownDefaultOpenApi': 'unknown_default_open_api',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'color': 'color',
    'date': 'date',
    'datetime-local': 'datetimeLocal',
    'email': 'email',
    'month': 'month',
    'number': 'number',
    'password': 'password',
    'range': 'range',
    'tel': 'tel',
    'text': 'text',
    'time': 'time',
    'url': 'url',
    'week': 'week',
    'unknown_default_open_api': 'unknownDefaultOpenApi',
  };

  @override
  final Iterable<Type> types = const <Type>[TextInputType];
  @override
  final String wireName = 'TextInputType';

  @override
  Object serialize(Serializers serializers, TextInputType object,
          {FullType specifiedType = FullType.unspecified}) =>
      _toWire[object.name] ?? object.name;

  @override
  TextInputType deserialize(Serializers serializers, Object serialized,
          {FullType specifiedType = FullType.unspecified}) =>
      TextInputType.valueOf(
          _fromWire[serialized] ?? (serialized is String ? serialized : ''));
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
