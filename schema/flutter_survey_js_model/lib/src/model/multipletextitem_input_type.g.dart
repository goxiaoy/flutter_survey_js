// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'multipletextitem_input_type.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const MultipletextitemInputType _$color =
    const MultipletextitemInputType._('color');
const MultipletextitemInputType _$date =
    const MultipletextitemInputType._('date');
const MultipletextitemInputType _$datetimeLocal =
    const MultipletextitemInputType._('datetimeLocal');
const MultipletextitemInputType _$email =
    const MultipletextitemInputType._('email');
const MultipletextitemInputType _$month =
    const MultipletextitemInputType._('month');
const MultipletextitemInputType _$number =
    const MultipletextitemInputType._('number');
const MultipletextitemInputType _$password =
    const MultipletextitemInputType._('password');
const MultipletextitemInputType _$range =
    const MultipletextitemInputType._('range');
const MultipletextitemInputType _$tel =
    const MultipletextitemInputType._('tel');
const MultipletextitemInputType _$text =
    const MultipletextitemInputType._('text');
const MultipletextitemInputType _$time =
    const MultipletextitemInputType._('time');
const MultipletextitemInputType _$url =
    const MultipletextitemInputType._('url');
const MultipletextitemInputType _$week =
    const MultipletextitemInputType._('week');
const MultipletextitemInputType _$unknownDefaultOpenApi =
    const MultipletextitemInputType._('unknownDefaultOpenApi');

MultipletextitemInputType _$valueOf(String name) {
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

final BuiltSet<MultipletextitemInputType> _$values =
    new BuiltSet<MultipletextitemInputType>(const <MultipletextitemInputType>[
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

class _$MultipletextitemInputTypeMeta {
  const _$MultipletextitemInputTypeMeta();
  MultipletextitemInputType get color => _$color;
  MultipletextitemInputType get date => _$date;
  MultipletextitemInputType get datetimeLocal => _$datetimeLocal;
  MultipletextitemInputType get email => _$email;
  MultipletextitemInputType get month => _$month;
  MultipletextitemInputType get number => _$number;
  MultipletextitemInputType get password => _$password;
  MultipletextitemInputType get range => _$range;
  MultipletextitemInputType get tel => _$tel;
  MultipletextitemInputType get text => _$text;
  MultipletextitemInputType get time => _$time;
  MultipletextitemInputType get url => _$url;
  MultipletextitemInputType get week => _$week;
  MultipletextitemInputType get unknownDefaultOpenApi =>
      _$unknownDefaultOpenApi;
  MultipletextitemInputType valueOf(String name) => _$valueOf(name);
  BuiltSet<MultipletextitemInputType> get values => _$values;
}

abstract class _$MultipletextitemInputTypeMixin {
  // ignore: non_constant_identifier_names
  _$MultipletextitemInputTypeMeta get MultipletextitemInputType =>
      const _$MultipletextitemInputTypeMeta();
}

Serializer<MultipletextitemInputType> _$multipletextitemInputTypeSerializer =
    new _$MultipletextitemInputTypeSerializer();

class _$MultipletextitemInputTypeSerializer
    implements PrimitiveSerializer<MultipletextitemInputType> {
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
  final Iterable<Type> types = const <Type>[MultipletextitemInputType];
  @override
  final String wireName = 'MultipletextitemInputType';

  @override
  Object serialize(Serializers serializers, MultipletextitemInputType object,
          {FullType specifiedType = FullType.unspecified}) =>
      _toWire[object.name] ?? object.name;

  @override
  MultipletextitemInputType deserialize(
          Serializers serializers, Object serialized,
          {FullType specifiedType = FullType.unspecified}) =>
      MultipletextitemInputType.valueOf(
          _fromWire[serialized] ?? (serialized is String ? serialized : ''));
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
