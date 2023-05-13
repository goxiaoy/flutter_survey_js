//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'rating_scale_color_mode.g.dart';

class RatingScaleColorMode extends EnumClass {

  @BuiltValueEnumConst(wireName: r'monochrome')
  static const RatingScaleColorMode monochrome = _$monochrome;
  @BuiltValueEnumConst(wireName: r'colored')
  static const RatingScaleColorMode colored = _$colored;
  @BuiltValueEnumConst(wireName: r'unknown_default_open_api', fallback: true)
  static const RatingScaleColorMode unknownDefaultOpenApi = _$unknownDefaultOpenApi;

  static Serializer<RatingScaleColorMode> get serializer => _$ratingScaleColorModeSerializer;

  const RatingScaleColorMode._(String name): super(name);

  static BuiltSet<RatingScaleColorMode> get values => _$values;
  static RatingScaleColorMode valueOf(String name) => _$valueOf(name);
}

/// Optionally, enum_class can generate a mixin to go with your enum for use
/// with Angular. It exposes your enum constants as getters. So, if you mix it
/// in to your Dart component class, the values become available to the
/// corresponding Angular template.
///
/// Trigger mixin generation by writing a line like this one next to your enum.
abstract class RatingScaleColorModeMixin = Object with _$RatingScaleColorModeMixin;

