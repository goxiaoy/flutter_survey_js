//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'question_clear_if_invisible.g.dart';

class QuestionClearIfInvisible extends EnumClass {

  @BuiltValueEnumConst(wireName: r'default')
  static const QuestionClearIfInvisible default_ = _$default_;
  @BuiltValueEnumConst(wireName: r'none')
  static const QuestionClearIfInvisible none = _$none;
  @BuiltValueEnumConst(wireName: r'onComplete')
  static const QuestionClearIfInvisible onComplete = _$onComplete;
  @BuiltValueEnumConst(wireName: r'onHidden')
  static const QuestionClearIfInvisible onHidden = _$onHidden;
  @BuiltValueEnumConst(wireName: r'onHiddenContainer')
  static const QuestionClearIfInvisible onHiddenContainer = _$onHiddenContainer;
  @BuiltValueEnumConst(wireName: r'unknown_default_open_api', fallback: true)
  static const QuestionClearIfInvisible unknownDefaultOpenApi = _$unknownDefaultOpenApi;

  static Serializer<QuestionClearIfInvisible> get serializer => _$questionClearIfInvisibleSerializer;

  const QuestionClearIfInvisible._(String name): super(name);

  static BuiltSet<QuestionClearIfInvisible> get values => _$values;
  static QuestionClearIfInvisible valueOf(String name) => _$valueOf(name);
}

/// Optionally, enum_class can generate a mixin to go with your enum for use
/// with Angular. It exposes your enum constants as getters. So, if you mix it
/// in to your Dart component class, the values become available to the
/// corresponding Angular template.
///
/// Trigger mixin generation by writing a line like this one next to your enum.
abstract class QuestionClearIfInvisibleMixin = Object with _$QuestionClearIfInvisibleMixin;

