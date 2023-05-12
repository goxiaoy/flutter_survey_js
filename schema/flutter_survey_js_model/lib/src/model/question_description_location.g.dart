// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'question_description_location.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const QuestionDescriptionLocation _$default_ =
    const QuestionDescriptionLocation._('default_');
const QuestionDescriptionLocation _$underInput =
    const QuestionDescriptionLocation._('underInput');
const QuestionDescriptionLocation _$underTitle =
    const QuestionDescriptionLocation._('underTitle');
const QuestionDescriptionLocation _$unknownDefaultOpenApi =
    const QuestionDescriptionLocation._('unknownDefaultOpenApi');

QuestionDescriptionLocation _$valueOf(String name) {
  switch (name) {
    case 'default_':
      return _$default_;
    case 'underInput':
      return _$underInput;
    case 'underTitle':
      return _$underTitle;
    case 'unknownDefaultOpenApi':
      return _$unknownDefaultOpenApi;
    default:
      return _$unknownDefaultOpenApi;
  }
}

final BuiltSet<QuestionDescriptionLocation> _$values = new BuiltSet<
    QuestionDescriptionLocation>(const <QuestionDescriptionLocation>[
  _$default_,
  _$underInput,
  _$underTitle,
  _$unknownDefaultOpenApi,
]);

class _$QuestionDescriptionLocationMeta {
  const _$QuestionDescriptionLocationMeta();
  QuestionDescriptionLocation get default_ => _$default_;
  QuestionDescriptionLocation get underInput => _$underInput;
  QuestionDescriptionLocation get underTitle => _$underTitle;
  QuestionDescriptionLocation get unknownDefaultOpenApi =>
      _$unknownDefaultOpenApi;
  QuestionDescriptionLocation valueOf(String name) => _$valueOf(name);
  BuiltSet<QuestionDescriptionLocation> get values => _$values;
}

abstract class _$QuestionDescriptionLocationMixin {
  // ignore: non_constant_identifier_names
  _$QuestionDescriptionLocationMeta get QuestionDescriptionLocation =>
      const _$QuestionDescriptionLocationMeta();
}

Serializer<QuestionDescriptionLocation>
    _$questionDescriptionLocationSerializer =
    new _$QuestionDescriptionLocationSerializer();

class _$QuestionDescriptionLocationSerializer
    implements PrimitiveSerializer<QuestionDescriptionLocation> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'default_': 'default',
    'underInput': 'underInput',
    'underTitle': 'underTitle',
    'unknownDefaultOpenApi': 'unknown_default_open_api',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'default': 'default_',
    'underInput': 'underInput',
    'underTitle': 'underTitle',
    'unknown_default_open_api': 'unknownDefaultOpenApi',
  };

  @override
  final Iterable<Type> types = const <Type>[QuestionDescriptionLocation];
  @override
  final String wireName = 'QuestionDescriptionLocation';

  @override
  Object serialize(Serializers serializers, QuestionDescriptionLocation object,
          {FullType specifiedType = FullType.unspecified}) =>
      _toWire[object.name] ?? object.name;

  @override
  QuestionDescriptionLocation deserialize(
          Serializers serializers, Object serialized,
          {FullType specifiedType = FullType.unspecified}) =>
      QuestionDescriptionLocation.valueOf(
          _fromWire[serialized] ?? (serialized is String ? serialized : ''));
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
