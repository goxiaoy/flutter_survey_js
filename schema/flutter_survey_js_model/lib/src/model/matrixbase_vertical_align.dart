//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'matrixbase_vertical_align.g.dart';

class MatrixbaseVerticalAlign extends EnumClass {

  @BuiltValueEnumConst(wireName: r'top')
  static const MatrixbaseVerticalAlign top = _$top;
  @BuiltValueEnumConst(wireName: r'middle')
  static const MatrixbaseVerticalAlign middle = _$middle;
  @BuiltValueEnumConst(wireName: r'unknown_default_open_api', fallback: true)
  static const MatrixbaseVerticalAlign unknownDefaultOpenApi = _$unknownDefaultOpenApi;

  static Serializer<MatrixbaseVerticalAlign> get serializer => _$matrixbaseVerticalAlignSerializer;

  const MatrixbaseVerticalAlign._(String name): super(name);

  static BuiltSet<MatrixbaseVerticalAlign> get values => _$values;
  static MatrixbaseVerticalAlign valueOf(String name) => _$valueOf(name);
}

/// Optionally, enum_class can generate a mixin to go with your enum for use
/// with Angular. It exposes your enum constants as getters. So, if you mix it
/// in to your Dart component class, the values become available to the
/// corresponding Angular template.
///
/// Trigger mixin generation by writing a line like this one next to your enum.
abstract class MatrixbaseVerticalAlignMixin = Object with _$MatrixbaseVerticalAlignMixin;

