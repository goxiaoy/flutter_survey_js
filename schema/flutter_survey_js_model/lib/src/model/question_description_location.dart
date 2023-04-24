//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'question_description_location.g.dart';

class QuestionDescriptionLocation extends EnumClass {

  @BuiltValueEnumConst(wireName: r'default')
  static const QuestionDescriptionLocation default_ = _$default_;
  @BuiltValueEnumConst(wireName: r'underInput')
  static const QuestionDescriptionLocation underInput = _$underInput;
  @BuiltValueEnumConst(wireName: r'underTitle')
  static const QuestionDescriptionLocation underTitle = _$underTitle;
  @BuiltValueEnumConst(wireName: r'unknown_default_open_api', fallback: true)
  static const QuestionDescriptionLocation unknownDefaultOpenApi = _$unknownDefaultOpenApi;

  static Serializer<QuestionDescriptionLocation> get serializer => _$questionDescriptionLocationSerializer;

  const QuestionDescriptionLocation._(String name): super(name);

  static BuiltSet<QuestionDescriptionLocation> get values => _$values;
  static QuestionDescriptionLocation valueOf(String name) => _$valueOf(name);
}

/// Optionally, enum_class can generate a mixin to go with your enum for use
/// with Angular. It exposes your enum constants as getters. So, if you mix it
/// in to your Dart component class, the values become available to the
/// corresponding Angular template.
///
/// Trigger mixin generation by writing a line like this one next to your enum.
abstract class QuestionDescriptionLocationMixin = Object with _$QuestionDescriptionLocationMixin;

