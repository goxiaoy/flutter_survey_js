//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'matrixdropdowncolumn_cell_type.g.dart';

class MatrixdropdowncolumnCellType extends EnumClass {

  @BuiltValueEnumConst(wireName: r'default')
  static const MatrixdropdowncolumnCellType default_ = _$default_;
  @BuiltValueEnumConst(wireName: r'dropdown')
  static const MatrixdropdowncolumnCellType dropdown = _$dropdown;
  @BuiltValueEnumConst(wireName: r'checkbox')
  static const MatrixdropdowncolumnCellType checkbox = _$checkbox;
  @BuiltValueEnumConst(wireName: r'radiogroup')
  static const MatrixdropdowncolumnCellType radiogroup = _$radiogroup;
  @BuiltValueEnumConst(wireName: r'tagbox')
  static const MatrixdropdowncolumnCellType tagbox = _$tagbox;
  @BuiltValueEnumConst(wireName: r'text')
  static const MatrixdropdowncolumnCellType text = _$text;
  @BuiltValueEnumConst(wireName: r'comment')
  static const MatrixdropdowncolumnCellType comment = _$comment;
  @BuiltValueEnumConst(wireName: r'boolean')
  static const MatrixdropdowncolumnCellType boolean = _$boolean;
  @BuiltValueEnumConst(wireName: r'expression')
  static const MatrixdropdowncolumnCellType expression = _$expression;
  @BuiltValueEnumConst(wireName: r'rating')
  static const MatrixdropdowncolumnCellType rating = _$rating;
  @BuiltValueEnumConst(wireName: r'unknown_default_open_api', fallback: true)
  static const MatrixdropdowncolumnCellType unknownDefaultOpenApi = _$unknownDefaultOpenApi;

  static Serializer<MatrixdropdowncolumnCellType> get serializer => _$matrixdropdowncolumnCellTypeSerializer;

  const MatrixdropdowncolumnCellType._(String name): super(name);

  static BuiltSet<MatrixdropdowncolumnCellType> get values => _$values;
  static MatrixdropdowncolumnCellType valueOf(String name) => _$valueOf(name);
}

/// Optionally, enum_class can generate a mixin to go with your enum for use
/// with Angular. It exposes your enum constants as getters. So, if you mix it
/// in to your Dart component class, the values become available to the
/// corresponding Angular template.
///
/// Trigger mixin generation by writing a line like this one next to your enum.
abstract class MatrixdropdowncolumnCellTypeMixin = Object with _$MatrixdropdowncolumnCellTypeMixin;

