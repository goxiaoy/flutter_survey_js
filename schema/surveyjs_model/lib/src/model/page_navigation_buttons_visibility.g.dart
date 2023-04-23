// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'page_navigation_buttons_visibility.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const PageNavigationButtonsVisibility _$inherit =
    const PageNavigationButtonsVisibility._('inherit');
const PageNavigationButtonsVisibility _$show_ =
    const PageNavigationButtonsVisibility._('show_');
const PageNavigationButtonsVisibility _$hide_ =
    const PageNavigationButtonsVisibility._('hide_');
const PageNavigationButtonsVisibility _$unknownDefaultOpenApi =
    const PageNavigationButtonsVisibility._('unknownDefaultOpenApi');

PageNavigationButtonsVisibility _$valueOf(String name) {
  switch (name) {
    case 'inherit':
      return _$inherit;
    case 'show_':
      return _$show_;
    case 'hide_':
      return _$hide_;
    case 'unknownDefaultOpenApi':
      return _$unknownDefaultOpenApi;
    default:
      return _$unknownDefaultOpenApi;
  }
}

final BuiltSet<PageNavigationButtonsVisibility> _$values = new BuiltSet<
    PageNavigationButtonsVisibility>(const <PageNavigationButtonsVisibility>[
  _$inherit,
  _$show_,
  _$hide_,
  _$unknownDefaultOpenApi,
]);

class _$PageNavigationButtonsVisibilityMeta {
  const _$PageNavigationButtonsVisibilityMeta();
  PageNavigationButtonsVisibility get inherit => _$inherit;
  PageNavigationButtonsVisibility get show_ => _$show_;
  PageNavigationButtonsVisibility get hide_ => _$hide_;
  PageNavigationButtonsVisibility get unknownDefaultOpenApi =>
      _$unknownDefaultOpenApi;
  PageNavigationButtonsVisibility valueOf(String name) => _$valueOf(name);
  BuiltSet<PageNavigationButtonsVisibility> get values => _$values;
}

abstract class _$PageNavigationButtonsVisibilityMixin {
  // ignore: non_constant_identifier_names
  _$PageNavigationButtonsVisibilityMeta get PageNavigationButtonsVisibility =>
      const _$PageNavigationButtonsVisibilityMeta();
}

Serializer<PageNavigationButtonsVisibility>
    _$pageNavigationButtonsVisibilitySerializer =
    new _$PageNavigationButtonsVisibilitySerializer();

class _$PageNavigationButtonsVisibilitySerializer
    implements PrimitiveSerializer<PageNavigationButtonsVisibility> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'inherit': 'inherit',
    'show_': 'show',
    'hide_': 'hide',
    'unknownDefaultOpenApi': 'unknown_default_open_api',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'inherit': 'inherit',
    'show': 'show_',
    'hide': 'hide_',
    'unknown_default_open_api': 'unknownDefaultOpenApi',
  };

  @override
  final Iterable<Type> types = const <Type>[PageNavigationButtonsVisibility];
  @override
  final String wireName = 'PageNavigationButtonsVisibility';

  @override
  Object serialize(
          Serializers serializers, PageNavigationButtonsVisibility object,
          {FullType specifiedType = FullType.unspecified}) =>
      _toWire[object.name] ?? object.name;

  @override
  PageNavigationButtonsVisibility deserialize(
          Serializers serializers, Object serialized,
          {FullType specifiedType = FullType.unspecified}) =>
      PageNavigationButtonsVisibility.valueOf(
          _fromWire[serialized] ?? (serialized is String ? serialized : ''));
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
