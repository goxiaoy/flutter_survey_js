//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'paneldynamic_panel_remove_button_location.g.dart';

class PaneldynamicPanelRemoveButtonLocation extends EnumClass {

  @BuiltValueEnumConst(wireName: r'bottom')
  static const PaneldynamicPanelRemoveButtonLocation bottom = _$bottom;
  @BuiltValueEnumConst(wireName: r'right')
  static const PaneldynamicPanelRemoveButtonLocation right = _$right;
  @BuiltValueEnumConst(wireName: r'unknown_default_open_api', fallback: true)
  static const PaneldynamicPanelRemoveButtonLocation unknownDefaultOpenApi = _$unknownDefaultOpenApi;

  static Serializer<PaneldynamicPanelRemoveButtonLocation> get serializer => _$paneldynamicPanelRemoveButtonLocationSerializer;

  const PaneldynamicPanelRemoveButtonLocation._(String name): super(name);

  static BuiltSet<PaneldynamicPanelRemoveButtonLocation> get values => _$values;
  static PaneldynamicPanelRemoveButtonLocation valueOf(String name) => _$valueOf(name);
}

/// Optionally, enum_class can generate a mixin to go with your enum for use
/// with Angular. It exposes your enum constants as getters. So, if you mix it
/// in to your Dart component class, the values become available to the
/// corresponding Angular template.
///
/// Trigger mixin generation by writing a line like this one next to your enum.
abstract class PaneldynamicPanelRemoveButtonLocationMixin = Object with _$PaneldynamicPanelRemoveButtonLocationMixin;

