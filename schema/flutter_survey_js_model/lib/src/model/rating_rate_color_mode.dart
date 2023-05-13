//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'rating_rate_color_mode.g.dart';

class RatingRateColorMode extends EnumClass {

  @BuiltValueEnumConst(wireName: r'default')
  static const RatingRateColorMode default_ = _$default_;
  @BuiltValueEnumConst(wireName: r'scale')
  static const RatingRateColorMode scale = _$scale;
  @BuiltValueEnumConst(wireName: r'unknown_default_open_api', fallback: true)
  static const RatingRateColorMode unknownDefaultOpenApi = _$unknownDefaultOpenApi;

  static Serializer<RatingRateColorMode> get serializer => _$ratingRateColorModeSerializer;

  const RatingRateColorMode._(String name): super(name);

  static BuiltSet<RatingRateColorMode> get values => _$values;
  static RatingRateColorMode valueOf(String name) => _$valueOf(name);
}

/// Optionally, enum_class can generate a mixin to go with your enum for use
/// with Angular. It exposes your enum constants as getters. So, if you mix it
/// in to your Dart component class, the values become available to the
/// corresponding Angular template.
///
/// Trigger mixin generation by writing a line like this one next to your enum.
abstract class RatingRateColorModeMixin = Object with _$RatingRateColorModeMixin;

