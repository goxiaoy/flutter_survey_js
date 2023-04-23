//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'matrixdropdownbase_cell_type.g.dart';

class MatrixdropdownbaseCellType extends EnumClass {

  @BuiltValueEnumConst(wireName: r'dropdown')
  static const MatrixdropdownbaseCellType dropdown = _$dropdown;
  @BuiltValueEnumConst(wireName: r'checkbox')
  static const MatrixdropdownbaseCellType checkbox = _$checkbox;
  @BuiltValueEnumConst(wireName: r'radiogroup')
  static const MatrixdropdownbaseCellType radiogroup = _$radiogroup;
  @BuiltValueEnumConst(wireName: r'tagbox')
  static const MatrixdropdownbaseCellType tagbox = _$tagbox;
  @BuiltValueEnumConst(wireName: r'text')
  static const MatrixdropdownbaseCellType text = _$text;
  @BuiltValueEnumConst(wireName: r'comment')
  static const MatrixdropdownbaseCellType comment = _$comment;
  @BuiltValueEnumConst(wireName: r'boolean')
  static const MatrixdropdownbaseCellType boolean = _$boolean;
  @BuiltValueEnumConst(wireName: r'expression')
  static const MatrixdropdownbaseCellType expression = _$expression;
  @BuiltValueEnumConst(wireName: r'rating')
  static const MatrixdropdownbaseCellType rating = _$rating;
  @BuiltValueEnumConst(wireName: r'unknown_default_open_api', fallback: true)
  static const MatrixdropdownbaseCellType unknownDefaultOpenApi = _$unknownDefaultOpenApi;

  static Serializer<MatrixdropdownbaseCellType> get serializer => _$matrixdropdownbaseCellTypeSerializer;

  const MatrixdropdownbaseCellType._(String name): super(name);

  static BuiltSet<MatrixdropdownbaseCellType> get values => _$values;
  static MatrixdropdownbaseCellType valueOf(String name) => _$valueOf(name);
}

/// Optionally, enum_class can generate a mixin to go with your enum for use
/// with Angular. It exposes your enum constants as getters. So, if you mix it
/// in to your Dart component class, the values become available to the
/// corresponding Angular template.
///
/// Trigger mixin generation by writing a line like this one next to your enum.
abstract class MatrixdropdownbaseCellTypeMixin = Object with _$MatrixdropdownbaseCellTypeMixin;

