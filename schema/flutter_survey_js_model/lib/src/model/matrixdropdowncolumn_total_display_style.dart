//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'matrixdropdowncolumn_total_display_style.g.dart';

class MatrixdropdowncolumnTotalDisplayStyle extends EnumClass {

  @BuiltValueEnumConst(wireName: r'none')
  static const MatrixdropdowncolumnTotalDisplayStyle none = _$none;
  @BuiltValueEnumConst(wireName: r'decimal')
  static const MatrixdropdowncolumnTotalDisplayStyle decimal = _$decimal;
  @BuiltValueEnumConst(wireName: r'currency')
  static const MatrixdropdowncolumnTotalDisplayStyle currency = _$currency;
  @BuiltValueEnumConst(wireName: r'percent')
  static const MatrixdropdowncolumnTotalDisplayStyle percent = _$percent;
  @BuiltValueEnumConst(wireName: r'unknown_default_open_api', fallback: true)
  static const MatrixdropdowncolumnTotalDisplayStyle unknownDefaultOpenApi = _$unknownDefaultOpenApi;

  static Serializer<MatrixdropdowncolumnTotalDisplayStyle> get serializer => _$matrixdropdowncolumnTotalDisplayStyleSerializer;

  const MatrixdropdowncolumnTotalDisplayStyle._(String name): super(name);

  static BuiltSet<MatrixdropdowncolumnTotalDisplayStyle> get values => _$values;
  static MatrixdropdowncolumnTotalDisplayStyle valueOf(String name) => _$valueOf(name);
}

/// Optionally, enum_class can generate a mixin to go with your enum for use
/// with Angular. It exposes your enum constants as getters. So, if you mix it
/// in to your Dart component class, the values become available to the
/// corresponding Angular template.
///
/// Trigger mixin generation by writing a line like this one next to your enum.
abstract class MatrixdropdowncolumnTotalDisplayStyleMixin = Object with _$MatrixdropdowncolumnTotalDisplayStyleMixin;

