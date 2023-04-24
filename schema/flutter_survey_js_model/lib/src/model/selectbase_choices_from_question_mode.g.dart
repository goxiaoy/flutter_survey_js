// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'selectbase_choices_from_question_mode.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const SelectbaseChoicesFromQuestionMode _$all =
    const SelectbaseChoicesFromQuestionMode._('all');
const SelectbaseChoicesFromQuestionMode _$selected =
    const SelectbaseChoicesFromQuestionMode._('selected');
const SelectbaseChoicesFromQuestionMode _$unselected =
    const SelectbaseChoicesFromQuestionMode._('unselected');
const SelectbaseChoicesFromQuestionMode _$unknownDefaultOpenApi =
    const SelectbaseChoicesFromQuestionMode._('unknownDefaultOpenApi');

SelectbaseChoicesFromQuestionMode _$valueOf(String name) {
  switch (name) {
    case 'all':
      return _$all;
    case 'selected':
      return _$selected;
    case 'unselected':
      return _$unselected;
    case 'unknownDefaultOpenApi':
      return _$unknownDefaultOpenApi;
    default:
      return _$unknownDefaultOpenApi;
  }
}

final BuiltSet<SelectbaseChoicesFromQuestionMode> _$values = new BuiltSet<
    SelectbaseChoicesFromQuestionMode>(const <SelectbaseChoicesFromQuestionMode>[
  _$all,
  _$selected,
  _$unselected,
  _$unknownDefaultOpenApi,
]);

class _$SelectbaseChoicesFromQuestionModeMeta {
  const _$SelectbaseChoicesFromQuestionModeMeta();
  SelectbaseChoicesFromQuestionMode get all => _$all;
  SelectbaseChoicesFromQuestionMode get selected => _$selected;
  SelectbaseChoicesFromQuestionMode get unselected => _$unselected;
  SelectbaseChoicesFromQuestionMode get unknownDefaultOpenApi =>
      _$unknownDefaultOpenApi;
  SelectbaseChoicesFromQuestionMode valueOf(String name) => _$valueOf(name);
  BuiltSet<SelectbaseChoicesFromQuestionMode> get values => _$values;
}

abstract class _$SelectbaseChoicesFromQuestionModeMixin {
  // ignore: non_constant_identifier_names
  _$SelectbaseChoicesFromQuestionModeMeta
      get SelectbaseChoicesFromQuestionMode =>
          const _$SelectbaseChoicesFromQuestionModeMeta();
}

Serializer<SelectbaseChoicesFromQuestionMode>
    _$selectbaseChoicesFromQuestionModeSerializer =
    new _$SelectbaseChoicesFromQuestionModeSerializer();

class _$SelectbaseChoicesFromQuestionModeSerializer
    implements PrimitiveSerializer<SelectbaseChoicesFromQuestionMode> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'all': 'all',
    'selected': 'selected',
    'unselected': 'unselected',
    'unknownDefaultOpenApi': 'unknown_default_open_api',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'all': 'all',
    'selected': 'selected',
    'unselected': 'unselected',
    'unknown_default_open_api': 'unknownDefaultOpenApi',
  };

  @override
  final Iterable<Type> types = const <Type>[SelectbaseChoicesFromQuestionMode];
  @override
  final String wireName = 'SelectbaseChoicesFromQuestionMode';

  @override
  Object serialize(
          Serializers serializers, SelectbaseChoicesFromQuestionMode object,
          {FullType specifiedType = FullType.unspecified}) =>
      _toWire[object.name] ?? object.name;

  @override
  SelectbaseChoicesFromQuestionMode deserialize(
          Serializers serializers, Object serialized,
          {FullType specifiedType = FullType.unspecified}) =>
      SelectbaseChoicesFromQuestionMode.valueOf(
          _fromWire[serialized] ?? (serialized is String ? serialized : ''));
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
