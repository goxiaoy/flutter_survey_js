//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'survey_matrix_drag_handle_area.g.dart';

class SurveyMatrixDragHandleArea extends EnumClass {

  @BuiltValueEnumConst(wireName: r'entireItem')
  static const SurveyMatrixDragHandleArea entireItem = _$entireItem;
  @BuiltValueEnumConst(wireName: r'icon')
  static const SurveyMatrixDragHandleArea icon = _$icon;
  @BuiltValueEnumConst(wireName: r'unknown_default_open_api', fallback: true)
  static const SurveyMatrixDragHandleArea unknownDefaultOpenApi = _$unknownDefaultOpenApi;

  static Serializer<SurveyMatrixDragHandleArea> get serializer => _$surveyMatrixDragHandleAreaSerializer;

  const SurveyMatrixDragHandleArea._(String name): super(name);

  static BuiltSet<SurveyMatrixDragHandleArea> get values => _$values;
  static SurveyMatrixDragHandleArea valueOf(String name) => _$valueOf(name);
}

/// Optionally, enum_class can generate a mixin to go with your enum for use
/// with Angular. It exposes your enum constants as getters. So, if you mix it
/// in to your Dart component class, the values become available to the
/// corresponding Angular template.
///
/// Trigger mixin generation by writing a line like this one next to your enum.
abstract class SurveyMatrixDragHandleAreaMixin = Object with _$SurveyMatrixDragHandleAreaMixin;

