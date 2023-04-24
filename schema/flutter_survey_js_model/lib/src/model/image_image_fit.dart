//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'image_image_fit.g.dart';

class ImageImageFit extends EnumClass {

  @BuiltValueEnumConst(wireName: r'none')
  static const ImageImageFit none = _$none;
  @BuiltValueEnumConst(wireName: r'contain')
  static const ImageImageFit contain = _$contain;
  @BuiltValueEnumConst(wireName: r'cover')
  static const ImageImageFit cover = _$cover;
  @BuiltValueEnumConst(wireName: r'fill')
  static const ImageImageFit fill = _$fill;
  @BuiltValueEnumConst(wireName: r'unknown_default_open_api', fallback: true)
  static const ImageImageFit unknownDefaultOpenApi = _$unknownDefaultOpenApi;

  static Serializer<ImageImageFit> get serializer => _$imageImageFitSerializer;

  const ImageImageFit._(String name): super(name);

  static BuiltSet<ImageImageFit> get values => _$values;
  static ImageImageFit valueOf(String name) => _$valueOf(name);
}

/// Optionally, enum_class can generate a mixin to go with your enum for use
/// with Angular. It exposes your enum constants as getters. So, if you mix it
/// in to your Dart component class, the values become available to the
/// corresponding Angular template.
///
/// Trigger mixin generation by writing a line like this one next to your enum.
abstract class ImageImageFitMixin = Object with _$ImageImageFitMixin;

