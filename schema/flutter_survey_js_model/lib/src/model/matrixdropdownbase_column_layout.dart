//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'matrixdropdownbase_column_layout.g.dart';

class MatrixdropdownbaseColumnLayout extends EnumClass {

  @BuiltValueEnumConst(wireName: r'horizontal')
  static const MatrixdropdownbaseColumnLayout horizontal = _$horizontal;
  @BuiltValueEnumConst(wireName: r'vertical')
  static const MatrixdropdownbaseColumnLayout vertical = _$vertical;
  @BuiltValueEnumConst(wireName: r'unknown_default_open_api', fallback: true)
  static const MatrixdropdownbaseColumnLayout unknownDefaultOpenApi = _$unknownDefaultOpenApi;

  static Serializer<MatrixdropdownbaseColumnLayout> get serializer => _$matrixdropdownbaseColumnLayoutSerializer;

  const MatrixdropdownbaseColumnLayout._(String name): super(name);

  static BuiltSet<MatrixdropdownbaseColumnLayout> get values => _$values;
  static MatrixdropdownbaseColumnLayout valueOf(String name) => _$valueOf(name);
}

/// Optionally, enum_class can generate a mixin to go with your enum for use
/// with Angular. It exposes your enum constants as getters. So, if you mix it
/// in to your Dart component class, the values become available to the
/// corresponding Angular template.
///
/// Trigger mixin generation by writing a line like this one next to your enum.
abstract class MatrixdropdownbaseColumnLayoutMixin = Object with _$MatrixdropdownbaseColumnLayoutMixin;

