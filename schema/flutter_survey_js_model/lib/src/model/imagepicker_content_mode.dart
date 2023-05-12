//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'imagepicker_content_mode.g.dart';

class ImagepickerContentMode extends EnumClass {

  @BuiltValueEnumConst(wireName: r'image')
  static const ImagepickerContentMode image = _$image;
  @BuiltValueEnumConst(wireName: r'video')
  static const ImagepickerContentMode video = _$video;
  @BuiltValueEnumConst(wireName: r'unknown_default_open_api', fallback: true)
  static const ImagepickerContentMode unknownDefaultOpenApi = _$unknownDefaultOpenApi;

  static Serializer<ImagepickerContentMode> get serializer => _$imagepickerContentModeSerializer;

  const ImagepickerContentMode._(String name): super(name);

  static BuiltSet<ImagepickerContentMode> get values => _$values;
  static ImagepickerContentMode valueOf(String name) => _$valueOf(name);
}

/// Optionally, enum_class can generate a mixin to go with your enum for use
/// with Angular. It exposes your enum constants as getters. So, if you mix it
/// in to your Dart component class, the values become available to the
/// corresponding Angular template.
///
/// Trigger mixin generation by writing a line like this one next to your enum.
abstract class ImagepickerContentModeMixin = Object with _$ImagepickerContentModeMixin;

