//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'matrixdropdownbase_detail_panel_mode.g.dart';

class MatrixdropdownbaseDetailPanelMode extends EnumClass {

  @BuiltValueEnumConst(wireName: r'none')
  static const MatrixdropdownbaseDetailPanelMode none = _$none;
  @BuiltValueEnumConst(wireName: r'underRow')
  static const MatrixdropdownbaseDetailPanelMode underRow = _$underRow;
  @BuiltValueEnumConst(wireName: r'underRowSingle')
  static const MatrixdropdownbaseDetailPanelMode underRowSingle = _$underRowSingle;
  @BuiltValueEnumConst(wireName: r'unknown_default_open_api', fallback: true)
  static const MatrixdropdownbaseDetailPanelMode unknownDefaultOpenApi = _$unknownDefaultOpenApi;

  static Serializer<MatrixdropdownbaseDetailPanelMode> get serializer => _$matrixdropdownbaseDetailPanelModeSerializer;

  const MatrixdropdownbaseDetailPanelMode._(String name): super(name);

  static BuiltSet<MatrixdropdownbaseDetailPanelMode> get values => _$values;
  static MatrixdropdownbaseDetailPanelMode valueOf(String name) => _$valueOf(name);
}

/// Optionally, enum_class can generate a mixin to go with your enum for use
/// with Angular. It exposes your enum constants as getters. So, if you mix it
/// in to your Dart component class, the values become available to the
/// corresponding Angular template.
///
/// Trigger mixin generation by writing a line like this one next to your enum.
abstract class MatrixdropdownbaseDetailPanelModeMixin = Object with _$MatrixdropdownbaseDetailPanelModeMixin;

