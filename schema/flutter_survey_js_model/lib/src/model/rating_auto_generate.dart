//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'rating_auto_generate.g.dart';

class RatingAutoGenerate extends EnumClass {

  @BuiltValueEnumConst(wireName: r'true')
  static const RatingAutoGenerate true_ = _$true_;
  @BuiltValueEnumConst(wireName: r'false')
  static const RatingAutoGenerate false_ = _$false_;
  @BuiltValueEnumConst(wireName: r'unknown_default_open_api', fallback: true)
  static const RatingAutoGenerate unknownDefaultOpenApi = _$unknownDefaultOpenApi;

  static Serializer<RatingAutoGenerate> get serializer => _$ratingAutoGenerateSerializer;

  const RatingAutoGenerate._(String name): super(name);

  static BuiltSet<RatingAutoGenerate> get values => _$values;
  static RatingAutoGenerate valueOf(String name) => _$valueOf(name);
}

/// Optionally, enum_class can generate a mixin to go with your enum for use
/// with Angular. It exposes your enum constants as getters. So, if you mix it
/// in to your Dart component class, the values become available to the
/// corresponding Angular template.
///
/// Trigger mixin generation by writing a line like this one next to your enum.
abstract class RatingAutoGenerateMixin = Object with _$RatingAutoGenerateMixin;

