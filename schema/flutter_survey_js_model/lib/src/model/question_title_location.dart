//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'question_title_location.g.dart';

class QuestionTitleLocation extends EnumClass {

  @BuiltValueEnumConst(wireName: r'default')
  static const QuestionTitleLocation default_ = _$default_;
  @BuiltValueEnumConst(wireName: r'top')
  static const QuestionTitleLocation top = _$top;
  @BuiltValueEnumConst(wireName: r'bottom')
  static const QuestionTitleLocation bottom = _$bottom;
  @BuiltValueEnumConst(wireName: r'left')
  static const QuestionTitleLocation left = _$left;
  @BuiltValueEnumConst(wireName: r'hidden')
  static const QuestionTitleLocation hidden = _$hidden;
  @BuiltValueEnumConst(wireName: r'unknown_default_open_api', fallback: true)
  static const QuestionTitleLocation unknownDefaultOpenApi = _$unknownDefaultOpenApi;

  static Serializer<QuestionTitleLocation> get serializer => _$questionTitleLocationSerializer;

  const QuestionTitleLocation._(String name): super(name);

  static BuiltSet<QuestionTitleLocation> get values => _$values;
  static QuestionTitleLocation valueOf(String name) => _$valueOf(name);
}

/// Optionally, enum_class can generate a mixin to go with your enum for use
/// with Angular. It exposes your enum constants as getters. So, if you mix it
/// in to your Dart component class, the values become available to the
/// corresponding Angular template.
///
/// Trigger mixin generation by writing a line like this one next to your enum.
abstract class QuestionTitleLocationMixin = Object with _$QuestionTitleLocationMixin;

