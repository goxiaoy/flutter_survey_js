//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'rating_rate_display_mode.g.dart';

class RatingRateDisplayMode extends EnumClass {

  @BuiltValueEnumConst(wireName: r'labels')
  static const RatingRateDisplayMode labels = _$labels;
  @BuiltValueEnumConst(wireName: r'stars')
  static const RatingRateDisplayMode stars = _$stars;
  @BuiltValueEnumConst(wireName: r'smileys')
  static const RatingRateDisplayMode smileys = _$smileys;
  @BuiltValueEnumConst(wireName: r'unknown_default_open_api', fallback: true)
  static const RatingRateDisplayMode unknownDefaultOpenApi = _$unknownDefaultOpenApi;

  static Serializer<RatingRateDisplayMode> get serializer => _$ratingRateDisplayModeSerializer;

  const RatingRateDisplayMode._(String name): super(name);

  static BuiltSet<RatingRateDisplayMode> get values => _$values;
  static RatingRateDisplayMode valueOf(String name) => _$valueOf(name);
}

/// Optionally, enum_class can generate a mixin to go with your enum for use
/// with Angular. It exposes your enum constants as getters. So, if you mix it
/// in to your Dart component class, the values become available to the
/// corresponding Angular template.
///
/// Trigger mixin generation by writing a line like this one next to your enum.
abstract class RatingRateDisplayModeMixin = Object with _$RatingRateDisplayModeMixin;

