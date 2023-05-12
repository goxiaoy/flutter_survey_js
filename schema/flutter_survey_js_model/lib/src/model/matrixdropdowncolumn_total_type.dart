//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'matrixdropdowncolumn_total_type.g.dart';

class MatrixdropdowncolumnTotalType extends EnumClass {

  @BuiltValueEnumConst(wireName: r'none')
  static const MatrixdropdowncolumnTotalType none = _$none;
  @BuiltValueEnumConst(wireName: r'sum')
  static const MatrixdropdowncolumnTotalType sum = _$sum;
  @BuiltValueEnumConst(wireName: r'count')
  static const MatrixdropdowncolumnTotalType count = _$count;
  @BuiltValueEnumConst(wireName: r'min')
  static const MatrixdropdowncolumnTotalType min = _$min;
  @BuiltValueEnumConst(wireName: r'max')
  static const MatrixdropdowncolumnTotalType max = _$max;
  @BuiltValueEnumConst(wireName: r'avg')
  static const MatrixdropdowncolumnTotalType avg = _$avg;
  @BuiltValueEnumConst(wireName: r'unknown_default_open_api', fallback: true)
  static const MatrixdropdowncolumnTotalType unknownDefaultOpenApi = _$unknownDefaultOpenApi;

  static Serializer<MatrixdropdowncolumnTotalType> get serializer => _$matrixdropdowncolumnTotalTypeSerializer;

  const MatrixdropdowncolumnTotalType._(String name): super(name);

  static BuiltSet<MatrixdropdowncolumnTotalType> get values => _$values;
  static MatrixdropdowncolumnTotalType valueOf(String name) => _$valueOf(name);
}

/// Optionally, enum_class can generate a mixin to go with your enum for use
/// with Angular. It exposes your enum constants as getters. So, if you mix it
/// in to your Dart component class, the values become available to the
/// corresponding Angular template.
///
/// Trigger mixin generation by writing a line like this one next to your enum.
abstract class MatrixdropdowncolumnTotalTypeMixin = Object with _$MatrixdropdowncolumnTotalTypeMixin;

