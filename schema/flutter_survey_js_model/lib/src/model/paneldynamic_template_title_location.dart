//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'paneldynamic_template_title_location.g.dart';

class PaneldynamicTemplateTitleLocation extends EnumClass {

  @BuiltValueEnumConst(wireName: r'default')
  static const PaneldynamicTemplateTitleLocation default_ = _$default_;
  @BuiltValueEnumConst(wireName: r'top')
  static const PaneldynamicTemplateTitleLocation top = _$top;
  @BuiltValueEnumConst(wireName: r'bottom')
  static const PaneldynamicTemplateTitleLocation bottom = _$bottom;
  @BuiltValueEnumConst(wireName: r'left')
  static const PaneldynamicTemplateTitleLocation left = _$left;
  @BuiltValueEnumConst(wireName: r'unknown_default_open_api', fallback: true)
  static const PaneldynamicTemplateTitleLocation unknownDefaultOpenApi = _$unknownDefaultOpenApi;

  static Serializer<PaneldynamicTemplateTitleLocation> get serializer => _$paneldynamicTemplateTitleLocationSerializer;

  const PaneldynamicTemplateTitleLocation._(String name): super(name);

  static BuiltSet<PaneldynamicTemplateTitleLocation> get values => _$values;
  static PaneldynamicTemplateTitleLocation valueOf(String name) => _$valueOf(name);
}

/// Optionally, enum_class can generate a mixin to go with your enum for use
/// with Angular. It exposes your enum constants as getters. So, if you mix it
/// in to your Dart component class, the values become available to the
/// corresponding Angular template.
///
/// Trigger mixin generation by writing a line like this one next to your enum.
abstract class PaneldynamicTemplateTitleLocationMixin = Object with _$PaneldynamicTemplateTitleLocationMixin;

