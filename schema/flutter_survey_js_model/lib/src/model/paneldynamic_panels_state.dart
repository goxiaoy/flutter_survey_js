//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'paneldynamic_panels_state.g.dart';

class PaneldynamicPanelsState extends EnumClass {

  @BuiltValueEnumConst(wireName: r'default')
  static const PaneldynamicPanelsState default_ = _$default_;
  @BuiltValueEnumConst(wireName: r'collapsed')
  static const PaneldynamicPanelsState collapsed = _$collapsed;
  @BuiltValueEnumConst(wireName: r'expanded')
  static const PaneldynamicPanelsState expanded = _$expanded;
  @BuiltValueEnumConst(wireName: r'firstExpanded')
  static const PaneldynamicPanelsState firstExpanded = _$firstExpanded;
  @BuiltValueEnumConst(wireName: r'unknown_default_open_api', fallback: true)
  static const PaneldynamicPanelsState unknownDefaultOpenApi = _$unknownDefaultOpenApi;

  static Serializer<PaneldynamicPanelsState> get serializer => _$paneldynamicPanelsStateSerializer;

  const PaneldynamicPanelsState._(String name): super(name);

  static BuiltSet<PaneldynamicPanelsState> get values => _$values;
  static PaneldynamicPanelsState valueOf(String name) => _$valueOf(name);
}

/// Optionally, enum_class can generate a mixin to go with your enum for use
/// with Angular. It exposes your enum constants as getters. So, if you mix it
/// in to your Dart component class, the values become available to the
/// corresponding Angular template.
///
/// Trigger mixin generation by writing a line like this one next to your enum.
abstract class PaneldynamicPanelsStateMixin = Object with _$PaneldynamicPanelsStateMixin;

