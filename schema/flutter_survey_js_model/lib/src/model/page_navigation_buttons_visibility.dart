//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'page_navigation_buttons_visibility.g.dart';

class PageNavigationButtonsVisibility extends EnumClass {

  @BuiltValueEnumConst(wireName: r'inherit')
  static const PageNavigationButtonsVisibility inherit = _$inherit;
  @BuiltValueEnumConst(wireName: r'show')
  static const PageNavigationButtonsVisibility show_ = _$show_;
  @BuiltValueEnumConst(wireName: r'hide')
  static const PageNavigationButtonsVisibility hide_ = _$hide_;
  @BuiltValueEnumConst(wireName: r'unknown_default_open_api', fallback: true)
  static const PageNavigationButtonsVisibility unknownDefaultOpenApi = _$unknownDefaultOpenApi;

  static Serializer<PageNavigationButtonsVisibility> get serializer => _$pageNavigationButtonsVisibilitySerializer;

  const PageNavigationButtonsVisibility._(String name): super(name);

  static BuiltSet<PageNavigationButtonsVisibility> get values => _$values;
  static PageNavigationButtonsVisibility valueOf(String name) => _$valueOf(name);
}

/// Optionally, enum_class can generate a mixin to go with your enum for use
/// with Angular. It exposes your enum constants as getters. So, if you mix it
/// in to your Dart component class, the values become available to the
/// corresponding Angular template.
///
/// Trigger mixin generation by writing a line like this one next to your enum.
abstract class PageNavigationButtonsVisibilityMixin = Object with _$PageNavigationButtonsVisibilityMixin;

