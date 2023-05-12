//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'panel_inner_indent.g.dart';

class PanelInnerIndent extends EnumClass {

  @BuiltValueEnumConst(wireName: r'0')
  static const PanelInnerIndent n0 = _$n0;
  @BuiltValueEnumConst(wireName: r'1')
  static const PanelInnerIndent n1 = _$n1;
  @BuiltValueEnumConst(wireName: r'2')
  static const PanelInnerIndent n2 = _$n2;
  @BuiltValueEnumConst(wireName: r'3')
  static const PanelInnerIndent n3 = _$n3;
  @BuiltValueEnumConst(wireName: r'11184809', fallback: true)
  static const PanelInnerIndent unknownDefaultOpenApi = _$unknownDefaultOpenApi;

  static Serializer<PanelInnerIndent> get serializer => _$panelInnerIndentSerializer;

  const PanelInnerIndent._(String name): super(name);

  static BuiltSet<PanelInnerIndent> get values => _$values;
  static PanelInnerIndent valueOf(String name) => _$valueOf(name);
}

/// Optionally, enum_class can generate a mixin to go with your enum for use
/// with Angular. It exposes your enum constants as getters. So, if you mix it
/// in to your Dart component class, the values become available to the
/// corresponding Angular template.
///
/// Trigger mixin generation by writing a line like this one next to your enum.
abstract class PanelInnerIndentMixin = Object with _$PanelInnerIndentMixin;

