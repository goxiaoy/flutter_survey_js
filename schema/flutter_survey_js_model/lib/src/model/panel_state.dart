//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'panel_state.g.dart';

class PanelState extends EnumClass {

  @BuiltValueEnumConst(wireName: r'default')
  static const PanelState default_ = _$default_;
  @BuiltValueEnumConst(wireName: r'collapsed')
  static const PanelState collapsed = _$collapsed;
  @BuiltValueEnumConst(wireName: r'expanded')
  static const PanelState expanded = _$expanded;
  @BuiltValueEnumConst(wireName: r'unknown_default_open_api', fallback: true)
  static const PanelState unknownDefaultOpenApi = _$unknownDefaultOpenApi;

  static Serializer<PanelState> get serializer => _$panelStateSerializer;

  const PanelState._(String name): super(name);

  static BuiltSet<PanelState> get values => _$values;
  static PanelState valueOf(String name) => _$valueOf(name);
}

/// Optionally, enum_class can generate a mixin to go with your enum for use
/// with Angular. It exposes your enum constants as getters. So, if you mix it
/// in to your Dart component class, the values become available to the
/// corresponding Angular template.
///
/// Trigger mixin generation by writing a line like this one next to your enum.
abstract class PanelStateMixin = Object with _$PanelStateMixin;

