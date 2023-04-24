//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'paneldynamic_render_mode.g.dart';

class PaneldynamicRenderMode extends EnumClass {

  @BuiltValueEnumConst(wireName: r'list')
  static const PaneldynamicRenderMode list = _$list;
  @BuiltValueEnumConst(wireName: r'progressTop')
  static const PaneldynamicRenderMode progressTop = _$progressTop;
  @BuiltValueEnumConst(wireName: r'progressBottom')
  static const PaneldynamicRenderMode progressBottom = _$progressBottom;
  @BuiltValueEnumConst(wireName: r'progressTopBottom')
  static const PaneldynamicRenderMode progressTopBottom = _$progressTopBottom;
  @BuiltValueEnumConst(wireName: r'tab')
  static const PaneldynamicRenderMode tab = _$tab;
  @BuiltValueEnumConst(wireName: r'unknown_default_open_api', fallback: true)
  static const PaneldynamicRenderMode unknownDefaultOpenApi = _$unknownDefaultOpenApi;

  static Serializer<PaneldynamicRenderMode> get serializer => _$paneldynamicRenderModeSerializer;

  const PaneldynamicRenderMode._(String name): super(name);

  static BuiltSet<PaneldynamicRenderMode> get values => _$values;
  static PaneldynamicRenderMode valueOf(String name) => _$valueOf(name);
}

/// Optionally, enum_class can generate a mixin to go with your enum for use
/// with Angular. It exposes your enum constants as getters. So, if you mix it
/// in to your Dart component class, the values become available to the
/// corresponding Angular template.
///
/// Trigger mixin generation by writing a line like this one next to your enum.
abstract class PaneldynamicRenderModeMixin = Object with _$PaneldynamicRenderModeMixin;

