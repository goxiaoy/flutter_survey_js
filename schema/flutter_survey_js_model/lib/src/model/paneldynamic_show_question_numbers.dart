//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'paneldynamic_show_question_numbers.g.dart';

class PaneldynamicShowQuestionNumbers extends EnumClass {

  @BuiltValueEnumConst(wireName: r'off')
  static const PaneldynamicShowQuestionNumbers off = _$off;
  @BuiltValueEnumConst(wireName: r'onPanel')
  static const PaneldynamicShowQuestionNumbers onPanel = _$onPanel;
  @BuiltValueEnumConst(wireName: r'onSurvey')
  static const PaneldynamicShowQuestionNumbers onSurvey = _$onSurvey;
  @BuiltValueEnumConst(wireName: r'unknown_default_open_api', fallback: true)
  static const PaneldynamicShowQuestionNumbers unknownDefaultOpenApi = _$unknownDefaultOpenApi;

  static Serializer<PaneldynamicShowQuestionNumbers> get serializer => _$paneldynamicShowQuestionNumbersSerializer;

  const PaneldynamicShowQuestionNumbers._(String name): super(name);

  static BuiltSet<PaneldynamicShowQuestionNumbers> get values => _$values;
  static PaneldynamicShowQuestionNumbers valueOf(String name) => _$valueOf(name);
}

/// Optionally, enum_class can generate a mixin to go with your enum for use
/// with Angular. It exposes your enum constants as getters. So, if you mix it
/// in to your Dart component class, the values become available to the
/// corresponding Angular template.
///
/// Trigger mixin generation by writing a line like this one next to your enum.
abstract class PaneldynamicShowQuestionNumbersMixin = Object with _$PaneldynamicShowQuestionNumbersMixin;

