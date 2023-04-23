//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'rating_display_mode.g.dart';

class RatingDisplayMode extends EnumClass {

  @BuiltValueEnumConst(wireName: r'auto')
  static const RatingDisplayMode auto = _$auto;
  @BuiltValueEnumConst(wireName: r'buttons')
  static const RatingDisplayMode buttons = _$buttons;
  @BuiltValueEnumConst(wireName: r'dropdown')
  static const RatingDisplayMode dropdown = _$dropdown;
  @BuiltValueEnumConst(wireName: r'unknown_default_open_api', fallback: true)
  static const RatingDisplayMode unknownDefaultOpenApi = _$unknownDefaultOpenApi;

  static Serializer<RatingDisplayMode> get serializer => _$ratingDisplayModeSerializer;

  const RatingDisplayMode._(String name): super(name);

  static BuiltSet<RatingDisplayMode> get values => _$values;
  static RatingDisplayMode valueOf(String name) => _$valueOf(name);
}

/// Optionally, enum_class can generate a mixin to go with your enum for use
/// with Angular. It exposes your enum constants as getters. So, if you mix it
/// in to your Dart component class, the values become available to the
/// corresponding Angular template.
///
/// Trigger mixin generation by writing a line like this one next to your enum.
abstract class RatingDisplayModeMixin = Object with _$RatingDisplayModeMixin;

