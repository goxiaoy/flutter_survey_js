//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'matrix_rows_order.g.dart';

class MatrixRowsOrder extends EnumClass {

  @BuiltValueEnumConst(wireName: r'initial')
  static const MatrixRowsOrder initial = _$initial;
  @BuiltValueEnumConst(wireName: r'random')
  static const MatrixRowsOrder random = _$random;
  @BuiltValueEnumConst(wireName: r'unknown_default_open_api', fallback: true)
  static const MatrixRowsOrder unknownDefaultOpenApi = _$unknownDefaultOpenApi;

  static Serializer<MatrixRowsOrder> get serializer => _$matrixRowsOrderSerializer;

  const MatrixRowsOrder._(String name): super(name);

  static BuiltSet<MatrixRowsOrder> get values => _$values;
  static MatrixRowsOrder valueOf(String name) => _$valueOf(name);
}

/// Optionally, enum_class can generate a mixin to go with your enum for use
/// with Angular. It exposes your enum constants as getters. So, if you mix it
/// in to your Dart component class, the values become available to the
/// corresponding Angular template.
///
/// Trigger mixin generation by writing a line like this one next to your enum.
abstract class MatrixRowsOrderMixin = Object with _$MatrixRowsOrderMixin;

