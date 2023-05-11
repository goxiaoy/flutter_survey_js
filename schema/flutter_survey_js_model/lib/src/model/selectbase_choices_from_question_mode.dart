//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'selectbase_choices_from_question_mode.g.dart';

class SelectbaseChoicesFromQuestionMode extends EnumClass {

  @BuiltValueEnumConst(wireName: r'all')
  static const SelectbaseChoicesFromQuestionMode all = _$all;
  @BuiltValueEnumConst(wireName: r'selected')
  static const SelectbaseChoicesFromQuestionMode selected = _$selected;
  @BuiltValueEnumConst(wireName: r'unselected')
  static const SelectbaseChoicesFromQuestionMode unselected = _$unselected;
  @BuiltValueEnumConst(wireName: r'unknown_default_open_api', fallback: true)
  static const SelectbaseChoicesFromQuestionMode unknownDefaultOpenApi = _$unknownDefaultOpenApi;

  static Serializer<SelectbaseChoicesFromQuestionMode> get serializer => _$selectbaseChoicesFromQuestionModeSerializer;

  const SelectbaseChoicesFromQuestionMode._(String name): super(name);

  static BuiltSet<SelectbaseChoicesFromQuestionMode> get values => _$values;
  static SelectbaseChoicesFromQuestionMode valueOf(String name) => _$valueOf(name);
}

/// Optionally, enum_class can generate a mixin to go with your enum for use
/// with Angular. It exposes your enum constants as getters. So, if you mix it
/// in to your Dart component class, the values become available to the
/// corresponding Angular template.
///
/// Trigger mixin generation by writing a line like this one next to your enum.
abstract class SelectbaseChoicesFromQuestionModeMixin = Object with _$SelectbaseChoicesFromQuestionModeMixin;

