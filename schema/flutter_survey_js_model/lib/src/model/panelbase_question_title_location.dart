//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'panelbase_question_title_location.g.dart';

class PanelbaseQuestionTitleLocation extends EnumClass {

  @BuiltValueEnumConst(wireName: r'default')
  static const PanelbaseQuestionTitleLocation default_ = _$default_;
  @BuiltValueEnumConst(wireName: r'top')
  static const PanelbaseQuestionTitleLocation top = _$top;
  @BuiltValueEnumConst(wireName: r'bottom')
  static const PanelbaseQuestionTitleLocation bottom = _$bottom;
  @BuiltValueEnumConst(wireName: r'left')
  static const PanelbaseQuestionTitleLocation left = _$left;
  @BuiltValueEnumConst(wireName: r'hidden')
  static const PanelbaseQuestionTitleLocation hidden = _$hidden;
  @BuiltValueEnumConst(wireName: r'unknown_default_open_api', fallback: true)
  static const PanelbaseQuestionTitleLocation unknownDefaultOpenApi = _$unknownDefaultOpenApi;

  static Serializer<PanelbaseQuestionTitleLocation> get serializer => _$panelbaseQuestionTitleLocationSerializer;

  const PanelbaseQuestionTitleLocation._(String name): super(name);

  static BuiltSet<PanelbaseQuestionTitleLocation> get values => _$values;
  static PanelbaseQuestionTitleLocation valueOf(String name) => _$valueOf(name);
}

/// Optionally, enum_class can generate a mixin to go with your enum for use
/// with Angular. It exposes your enum constants as getters. So, if you mix it
/// in to your Dart component class, the values become available to the
/// corresponding Angular template.
///
/// Trigger mixin generation by writing a line like this one next to your enum.
abstract class PanelbaseQuestionTitleLocationMixin = Object with _$PanelbaseQuestionTitleLocationMixin;

