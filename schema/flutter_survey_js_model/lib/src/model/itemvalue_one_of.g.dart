// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'itemvalue_one_of.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$ItemvalueOneOf extends ItemvalueOneOf {
  @override
  final JsonObject? value;
  @override
  final String? text;
  @override
  final String? visibleIf;
  @override
  final String? enableIf;

  factory _$ItemvalueOneOf([void Function(ItemvalueOneOfBuilder)? updates]) =>
      (new ItemvalueOneOfBuilder()..update(updates))._build();

  _$ItemvalueOneOf._({this.value, this.text, this.visibleIf, this.enableIf})
      : super._();

  @override
  ItemvalueOneOf rebuild(void Function(ItemvalueOneOfBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ItemvalueOneOfBuilder toBuilder() =>
      new ItemvalueOneOfBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ItemvalueOneOf &&
        value == other.value &&
        text == other.text &&
        visibleIf == other.visibleIf &&
        enableIf == other.enableIf;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, value.hashCode);
    _$hash = $jc(_$hash, text.hashCode);
    _$hash = $jc(_$hash, visibleIf.hashCode);
    _$hash = $jc(_$hash, enableIf.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'ItemvalueOneOf')
          ..add('value', value)
          ..add('text', text)
          ..add('visibleIf', visibleIf)
          ..add('enableIf', enableIf))
        .toString();
  }
}

class ItemvalueOneOfBuilder
    implements Builder<ItemvalueOneOf, ItemvalueOneOfBuilder> {
  _$ItemvalueOneOf? _$v;

  JsonObject? _value;
  JsonObject? get value => _$this._value;
  set value(JsonObject? value) => _$this._value = value;

  String? _text;
  String? get text => _$this._text;
  set text(String? text) => _$this._text = text;

  String? _visibleIf;
  String? get visibleIf => _$this._visibleIf;
  set visibleIf(String? visibleIf) => _$this._visibleIf = visibleIf;

  String? _enableIf;
  String? get enableIf => _$this._enableIf;
  set enableIf(String? enableIf) => _$this._enableIf = enableIf;

  ItemvalueOneOfBuilder() {
    ItemvalueOneOf._defaults(this);
  }

  ItemvalueOneOfBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _value = $v.value;
      _text = $v.text;
      _visibleIf = $v.visibleIf;
      _enableIf = $v.enableIf;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ItemvalueOneOf other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$ItemvalueOneOf;
  }

  @override
  void update(void Function(ItemvalueOneOfBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ItemvalueOneOf build() => _build();

  _$ItemvalueOneOf _build() {
    final _$result = _$v ??
        new _$ItemvalueOneOf._(
            value: value, text: text, visibleIf: visibleIf, enableIf: enableIf);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
