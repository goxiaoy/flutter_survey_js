//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'question_state.g.dart';

class QuestionState extends EnumClass {

  @BuiltValueEnumConst(wireName: r'default')
  static const QuestionState default_ = _$default_;
  @BuiltValueEnumConst(wireName: r'collapsed')
  static const QuestionState collapsed = _$collapsed;
  @BuiltValueEnumConst(wireName: r'expanded')
  static const QuestionState expanded = _$expanded;
  @BuiltValueEnumConst(wireName: r'unknown_default_open_api', fallback: true)
  static const QuestionState unknownDefaultOpenApi = _$unknownDefaultOpenApi;

  static Serializer<QuestionState> get serializer => _$questionStateSerializer;

  const QuestionState._(String name): super(name);

  static BuiltSet<QuestionState> get values => _$values;
  static QuestionState valueOf(String name) => _$valueOf(name);
}

/// Optionally, enum_class can generate a mixin to go with your enum for use
/// with Angular. It exposes your enum constants as getters. So, if you mix it
/// in to your Dart component class, the values become available to the
/// corresponding Angular template.
///
/// Trigger mixin generation by writing a line like this one next to your enum.
abstract class QuestionStateMixin = Object with _$QuestionStateMixin;

