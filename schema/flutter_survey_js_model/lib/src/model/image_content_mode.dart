//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'image_content_mode.g.dart';

class ImageContentMode extends EnumClass {

  @BuiltValueEnumConst(wireName: r'auto')
  static const ImageContentMode auto = _$auto;
  @BuiltValueEnumConst(wireName: r'image')
  static const ImageContentMode image = _$image;
  @BuiltValueEnumConst(wireName: r'video')
  static const ImageContentMode video = _$video;
  @BuiltValueEnumConst(wireName: r'youtube')
  static const ImageContentMode youtube = _$youtube;
  @BuiltValueEnumConst(wireName: r'unknown_default_open_api', fallback: true)
  static const ImageContentMode unknownDefaultOpenApi = _$unknownDefaultOpenApi;

  static Serializer<ImageContentMode> get serializer => _$imageContentModeSerializer;

  const ImageContentMode._(String name): super(name);

  static BuiltSet<ImageContentMode> get values => _$values;
  static ImageContentMode valueOf(String name) => _$valueOf(name);
}

/// Optionally, enum_class can generate a mixin to go with your enum for use
/// with Angular. It exposes your enum constants as getters. So, if you mix it
/// in to your Dart component class, the values become available to the
/// corresponding Angular template.
///
/// Trigger mixin generation by writing a line like this one next to your enum.
abstract class ImageContentModeMixin = Object with _$ImageContentModeMixin;

