// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'survey_matrix_drag_handle_area.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const SurveyMatrixDragHandleArea _$entireItem =
    const SurveyMatrixDragHandleArea._('entireItem');
const SurveyMatrixDragHandleArea _$icon =
    const SurveyMatrixDragHandleArea._('icon');
const SurveyMatrixDragHandleArea _$unknownDefaultOpenApi =
    const SurveyMatrixDragHandleArea._('unknownDefaultOpenApi');

SurveyMatrixDragHandleArea _$valueOf(String name) {
  switch (name) {
    case 'entireItem':
      return _$entireItem;
    case 'icon':
      return _$icon;
    case 'unknownDefaultOpenApi':
      return _$unknownDefaultOpenApi;
    default:
      return _$unknownDefaultOpenApi;
  }
}

final BuiltSet<SurveyMatrixDragHandleArea> _$values =
    new BuiltSet<SurveyMatrixDragHandleArea>(const <SurveyMatrixDragHandleArea>[
  _$entireItem,
  _$icon,
  _$unknownDefaultOpenApi,
]);

class _$SurveyMatrixDragHandleAreaMeta {
  const _$SurveyMatrixDragHandleAreaMeta();
  SurveyMatrixDragHandleArea get entireItem => _$entireItem;
  SurveyMatrixDragHandleArea get icon => _$icon;
  SurveyMatrixDragHandleArea get unknownDefaultOpenApi =>
      _$unknownDefaultOpenApi;
  SurveyMatrixDragHandleArea valueOf(String name) => _$valueOf(name);
  BuiltSet<SurveyMatrixDragHandleArea> get values => _$values;
}

abstract class _$SurveyMatrixDragHandleAreaMixin {
  // ignore: non_constant_identifier_names
  _$SurveyMatrixDragHandleAreaMeta get SurveyMatrixDragHandleArea =>
      const _$SurveyMatrixDragHandleAreaMeta();
}

Serializer<SurveyMatrixDragHandleArea> _$surveyMatrixDragHandleAreaSerializer =
    new _$SurveyMatrixDragHandleAreaSerializer();

class _$SurveyMatrixDragHandleAreaSerializer
    implements PrimitiveSerializer<SurveyMatrixDragHandleArea> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'entireItem': 'entireItem',
    'icon': 'icon',
    'unknownDefaultOpenApi': 'unknown_default_open_api',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'entireItem': 'entireItem',
    'icon': 'icon',
    'unknown_default_open_api': 'unknownDefaultOpenApi',
  };

  @override
  final Iterable<Type> types = const <Type>[SurveyMatrixDragHandleArea];
  @override
  final String wireName = 'SurveyMatrixDragHandleArea';

  @override
  Object serialize(Serializers serializers, SurveyMatrixDragHandleArea object,
          {FullType specifiedType = FullType.unspecified}) =>
      _toWire[object.name] ?? object.name;

  @override
  SurveyMatrixDragHandleArea deserialize(
          Serializers serializers, Object serialized,
          {FullType specifiedType = FullType.unspecified}) =>
      SurveyMatrixDragHandleArea.valueOf(
          _fromWire[serialized] ?? (serialized is String ? serialized : ''));
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
