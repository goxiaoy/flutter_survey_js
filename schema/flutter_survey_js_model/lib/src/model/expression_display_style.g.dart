// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'expression_display_style.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const ExpressionDisplayStyle _$none = const ExpressionDisplayStyle._('none');
const ExpressionDisplayStyle _$decimal =
    const ExpressionDisplayStyle._('decimal');
const ExpressionDisplayStyle _$currency =
    const ExpressionDisplayStyle._('currency');
const ExpressionDisplayStyle _$percent =
    const ExpressionDisplayStyle._('percent');
const ExpressionDisplayStyle _$date = const ExpressionDisplayStyle._('date');
const ExpressionDisplayStyle _$unknownDefaultOpenApi =
    const ExpressionDisplayStyle._('unknownDefaultOpenApi');

ExpressionDisplayStyle _$valueOf(String name) {
  switch (name) {
    case 'none':
      return _$none;
    case 'decimal':
      return _$decimal;
    case 'currency':
      return _$currency;
    case 'percent':
      return _$percent;
    case 'date':
      return _$date;
    case 'unknownDefaultOpenApi':
      return _$unknownDefaultOpenApi;
    default:
      return _$unknownDefaultOpenApi;
  }
}

final BuiltSet<ExpressionDisplayStyle> _$values =
    new BuiltSet<ExpressionDisplayStyle>(const <ExpressionDisplayStyle>[
  _$none,
  _$decimal,
  _$currency,
  _$percent,
  _$date,
  _$unknownDefaultOpenApi,
]);

class _$ExpressionDisplayStyleMeta {
  const _$ExpressionDisplayStyleMeta();
  ExpressionDisplayStyle get none => _$none;
  ExpressionDisplayStyle get decimal => _$decimal;
  ExpressionDisplayStyle get currency => _$currency;
  ExpressionDisplayStyle get percent => _$percent;
  ExpressionDisplayStyle get date => _$date;
  ExpressionDisplayStyle get unknownDefaultOpenApi => _$unknownDefaultOpenApi;
  ExpressionDisplayStyle valueOf(String name) => _$valueOf(name);
  BuiltSet<ExpressionDisplayStyle> get values => _$values;
}

abstract class _$ExpressionDisplayStyleMixin {
  // ignore: non_constant_identifier_names
  _$ExpressionDisplayStyleMeta get ExpressionDisplayStyle =>
      const _$ExpressionDisplayStyleMeta();
}

Serializer<ExpressionDisplayStyle> _$expressionDisplayStyleSerializer =
    new _$ExpressionDisplayStyleSerializer();

class _$ExpressionDisplayStyleSerializer
    implements PrimitiveSerializer<ExpressionDisplayStyle> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'none': 'none',
    'decimal': 'decimal',
    'currency': 'currency',
    'percent': 'percent',
    'date': 'date',
    'unknownDefaultOpenApi': 'unknown_default_open_api',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'none': 'none',
    'decimal': 'decimal',
    'currency': 'currency',
    'percent': 'percent',
    'date': 'date',
    'unknown_default_open_api': 'unknownDefaultOpenApi',
  };

  @override
  final Iterable<Type> types = const <Type>[ExpressionDisplayStyle];
  @override
  final String wireName = 'ExpressionDisplayStyle';

  @override
  Object serialize(Serializers serializers, ExpressionDisplayStyle object,
          {FullType specifiedType = FullType.unspecified}) =>
      _toWire[object.name] ?? object.name;

  @override
  ExpressionDisplayStyle deserialize(Serializers serializers, Object serialized,
          {FullType specifiedType = FullType.unspecified}) =>
      ExpressionDisplayStyle.valueOf(
          _fromWire[serialized] ?? (serialized is String ? serialized : ''));
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
