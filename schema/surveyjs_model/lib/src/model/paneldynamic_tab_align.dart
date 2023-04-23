//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'paneldynamic_tab_align.g.dart';

class PaneldynamicTabAlign extends EnumClass {

  @BuiltValueEnumConst(wireName: r'center')
  static const PaneldynamicTabAlign center = _$center;
  @BuiltValueEnumConst(wireName: r'left')
  static const PaneldynamicTabAlign left = _$left;
  @BuiltValueEnumConst(wireName: r'right')
  static const PaneldynamicTabAlign right = _$right;
  @BuiltValueEnumConst(wireName: r'unknown_default_open_api', fallback: true)
  static const PaneldynamicTabAlign unknownDefaultOpenApi = _$unknownDefaultOpenApi;

  static Serializer<PaneldynamicTabAlign> get serializer => _$paneldynamicTabAlignSerializer;

  const PaneldynamicTabAlign._(String name): super(name);

  static BuiltSet<PaneldynamicTabAlign> get values => _$values;
  static PaneldynamicTabAlign valueOf(String name) => _$valueOf(name);
}

/// Optionally, enum_class can generate a mixin to go with your enum for use
/// with Angular. It exposes your enum constants as getters. So, if you mix it
/// in to your Dart component class, the values become available to the
/// corresponding Angular template.
///
/// Trigger mixin generation by writing a line like this one next to your enum.
abstract class PaneldynamicTabAlignMixin = Object with _$PaneldynamicTabAlignMixin;

