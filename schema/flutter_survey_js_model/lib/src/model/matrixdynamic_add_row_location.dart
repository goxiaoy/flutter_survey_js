//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'matrixdynamic_add_row_location.g.dart';

class MatrixdynamicAddRowLocation extends EnumClass {

  @BuiltValueEnumConst(wireName: r'default')
  static const MatrixdynamicAddRowLocation default_ = _$default_;
  @BuiltValueEnumConst(wireName: r'top')
  static const MatrixdynamicAddRowLocation top = _$top;
  @BuiltValueEnumConst(wireName: r'bottom')
  static const MatrixdynamicAddRowLocation bottom = _$bottom;
  @BuiltValueEnumConst(wireName: r'topBottom')
  static const MatrixdynamicAddRowLocation topBottom = _$topBottom;
  @BuiltValueEnumConst(wireName: r'unknown_default_open_api', fallback: true)
  static const MatrixdynamicAddRowLocation unknownDefaultOpenApi = _$unknownDefaultOpenApi;

  static Serializer<MatrixdynamicAddRowLocation> get serializer => _$matrixdynamicAddRowLocationSerializer;

  const MatrixdynamicAddRowLocation._(String name): super(name);

  static BuiltSet<MatrixdynamicAddRowLocation> get values => _$values;
  static MatrixdynamicAddRowLocation valueOf(String name) => _$valueOf(name);
}

/// Optionally, enum_class can generate a mixin to go with your enum for use
/// with Angular. It exposes your enum constants as getters. So, if you mix it
/// in to your Dart component class, the values become available to the
/// corresponding Angular template.
///
/// Trigger mixin generation by writing a line like this one next to your enum.
abstract class MatrixdynamicAddRowLocationMixin = Object with _$MatrixdynamicAddRowLocationMixin;

