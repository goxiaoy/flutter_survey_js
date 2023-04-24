// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'selectbase_store_others_as_comment.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const SelectbaseStoreOthersAsComment _$default_ =
    const SelectbaseStoreOthersAsComment._('default_');
const SelectbaseStoreOthersAsComment _$true_ =
    const SelectbaseStoreOthersAsComment._('true_');
const SelectbaseStoreOthersAsComment _$false_ =
    const SelectbaseStoreOthersAsComment._('false_');
const SelectbaseStoreOthersAsComment _$unknownDefaultOpenApi =
    const SelectbaseStoreOthersAsComment._('unknownDefaultOpenApi');

SelectbaseStoreOthersAsComment _$valueOf(String name) {
  switch (name) {
    case 'default_':
      return _$default_;
    case 'true_':
      return _$true_;
    case 'false_':
      return _$false_;
    case 'unknownDefaultOpenApi':
      return _$unknownDefaultOpenApi;
    default:
      return _$unknownDefaultOpenApi;
  }
}

final BuiltSet<SelectbaseStoreOthersAsComment> _$values = new BuiltSet<
    SelectbaseStoreOthersAsComment>(const <SelectbaseStoreOthersAsComment>[
  _$default_,
  _$true_,
  _$false_,
  _$unknownDefaultOpenApi,
]);

class _$SelectbaseStoreOthersAsCommentMeta {
  const _$SelectbaseStoreOthersAsCommentMeta();
  SelectbaseStoreOthersAsComment get default_ => _$default_;
  SelectbaseStoreOthersAsComment get true_ => _$true_;
  SelectbaseStoreOthersAsComment get false_ => _$false_;
  SelectbaseStoreOthersAsComment get unknownDefaultOpenApi =>
      _$unknownDefaultOpenApi;
  SelectbaseStoreOthersAsComment valueOf(String name) => _$valueOf(name);
  BuiltSet<SelectbaseStoreOthersAsComment> get values => _$values;
}

abstract class _$SelectbaseStoreOthersAsCommentMixin {
  // ignore: non_constant_identifier_names
  _$SelectbaseStoreOthersAsCommentMeta get SelectbaseStoreOthersAsComment =>
      const _$SelectbaseStoreOthersAsCommentMeta();
}

Serializer<SelectbaseStoreOthersAsComment>
    _$selectbaseStoreOthersAsCommentSerializer =
    new _$SelectbaseStoreOthersAsCommentSerializer();

class _$SelectbaseStoreOthersAsCommentSerializer
    implements PrimitiveSerializer<SelectbaseStoreOthersAsComment> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'default_': 'default',
    'true_': 'true',
    'false_': 'false',
    'unknownDefaultOpenApi': 'unknown_default_open_api',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'default': 'default_',
    'true': 'true_',
    'false': 'false_',
    'unknown_default_open_api': 'unknownDefaultOpenApi',
  };

  @override
  final Iterable<Type> types = const <Type>[SelectbaseStoreOthersAsComment];
  @override
  final String wireName = 'SelectbaseStoreOthersAsComment';

  @override
  Object serialize(
          Serializers serializers, SelectbaseStoreOthersAsComment object,
          {FullType specifiedType = FullType.unspecified}) =>
      _toWire[object.name] ?? object.name;

  @override
  SelectbaseStoreOthersAsComment deserialize(
          Serializers serializers, Object serialized,
          {FullType specifiedType = FullType.unspecified}) =>
      SelectbaseStoreOthersAsComment.valueOf(
          _fromWire[serialized] ?? (serialized is String ? serialized : ''));
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
