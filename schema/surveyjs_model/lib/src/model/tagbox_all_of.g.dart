// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'tagbox_all_of.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

abstract class TagboxAllOfBuilder {
  void replace(TagboxAllOf other);
  void update(void Function(TagboxAllOfBuilder) updates);
  String? get placeholder;
  set placeholder(String? placeholder);

  bool? get allowClear;
  set allowClear(bool? allowClear);

  bool? get searchEnabled;
  set searchEnabled(bool? searchEnabled);

  bool? get choicesLazyLoadEnabled;
  set choicesLazyLoadEnabled(bool? choicesLazyLoadEnabled);

  num? get choicesLazyLoadPageSize;
  set choicesLazyLoadPageSize(num? choicesLazyLoadPageSize);

  bool? get hideSelectedItems;
  set hideSelectedItems(bool? hideSelectedItems);

  bool? get closeOnSelect;
  set closeOnSelect(bool? closeOnSelect);

  String? get itemComponent;
  set itemComponent(String? itemComponent);
}

class _$$TagboxAllOf extends $TagboxAllOf {
  @override
  final String? placeholder;
  @override
  final bool? allowClear;
  @override
  final bool? searchEnabled;
  @override
  final bool? choicesLazyLoadEnabled;
  @override
  final num? choicesLazyLoadPageSize;
  @override
  final bool? hideSelectedItems;
  @override
  final bool? closeOnSelect;
  @override
  final String? itemComponent;

  factory _$$TagboxAllOf([void Function($TagboxAllOfBuilder)? updates]) =>
      (new $TagboxAllOfBuilder()..update(updates))._build();

  _$$TagboxAllOf._(
      {this.placeholder,
      this.allowClear,
      this.searchEnabled,
      this.choicesLazyLoadEnabled,
      this.choicesLazyLoadPageSize,
      this.hideSelectedItems,
      this.closeOnSelect,
      this.itemComponent})
      : super._();

  @override
  $TagboxAllOf rebuild(void Function($TagboxAllOfBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  $TagboxAllOfBuilder toBuilder() => new $TagboxAllOfBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is $TagboxAllOf &&
        placeholder == other.placeholder &&
        allowClear == other.allowClear &&
        searchEnabled == other.searchEnabled &&
        choicesLazyLoadEnabled == other.choicesLazyLoadEnabled &&
        choicesLazyLoadPageSize == other.choicesLazyLoadPageSize &&
        hideSelectedItems == other.hideSelectedItems &&
        closeOnSelect == other.closeOnSelect &&
        itemComponent == other.itemComponent;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, placeholder.hashCode);
    _$hash = $jc(_$hash, allowClear.hashCode);
    _$hash = $jc(_$hash, searchEnabled.hashCode);
    _$hash = $jc(_$hash, choicesLazyLoadEnabled.hashCode);
    _$hash = $jc(_$hash, choicesLazyLoadPageSize.hashCode);
    _$hash = $jc(_$hash, hideSelectedItems.hashCode);
    _$hash = $jc(_$hash, closeOnSelect.hashCode);
    _$hash = $jc(_$hash, itemComponent.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'$TagboxAllOf')
          ..add('placeholder', placeholder)
          ..add('allowClear', allowClear)
          ..add('searchEnabled', searchEnabled)
          ..add('choicesLazyLoadEnabled', choicesLazyLoadEnabled)
          ..add('choicesLazyLoadPageSize', choicesLazyLoadPageSize)
          ..add('hideSelectedItems', hideSelectedItems)
          ..add('closeOnSelect', closeOnSelect)
          ..add('itemComponent', itemComponent))
        .toString();
  }
}

class $TagboxAllOfBuilder
    implements Builder<$TagboxAllOf, $TagboxAllOfBuilder>, TagboxAllOfBuilder {
  _$$TagboxAllOf? _$v;

  String? _placeholder;
  String? get placeholder => _$this._placeholder;
  set placeholder(covariant String? placeholder) =>
      _$this._placeholder = placeholder;

  bool? _allowClear;
  bool? get allowClear => _$this._allowClear;
  set allowClear(covariant bool? allowClear) => _$this._allowClear = allowClear;

  bool? _searchEnabled;
  bool? get searchEnabled => _$this._searchEnabled;
  set searchEnabled(covariant bool? searchEnabled) =>
      _$this._searchEnabled = searchEnabled;

  bool? _choicesLazyLoadEnabled;
  bool? get choicesLazyLoadEnabled => _$this._choicesLazyLoadEnabled;
  set choicesLazyLoadEnabled(covariant bool? choicesLazyLoadEnabled) =>
      _$this._choicesLazyLoadEnabled = choicesLazyLoadEnabled;

  num? _choicesLazyLoadPageSize;
  num? get choicesLazyLoadPageSize => _$this._choicesLazyLoadPageSize;
  set choicesLazyLoadPageSize(covariant num? choicesLazyLoadPageSize) =>
      _$this._choicesLazyLoadPageSize = choicesLazyLoadPageSize;

  bool? _hideSelectedItems;
  bool? get hideSelectedItems => _$this._hideSelectedItems;
  set hideSelectedItems(covariant bool? hideSelectedItems) =>
      _$this._hideSelectedItems = hideSelectedItems;

  bool? _closeOnSelect;
  bool? get closeOnSelect => _$this._closeOnSelect;
  set closeOnSelect(covariant bool? closeOnSelect) =>
      _$this._closeOnSelect = closeOnSelect;

  String? _itemComponent;
  String? get itemComponent => _$this._itemComponent;
  set itemComponent(covariant String? itemComponent) =>
      _$this._itemComponent = itemComponent;

  $TagboxAllOfBuilder() {
    $TagboxAllOf._defaults(this);
  }

  $TagboxAllOfBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _placeholder = $v.placeholder;
      _allowClear = $v.allowClear;
      _searchEnabled = $v.searchEnabled;
      _choicesLazyLoadEnabled = $v.choicesLazyLoadEnabled;
      _choicesLazyLoadPageSize = $v.choicesLazyLoadPageSize;
      _hideSelectedItems = $v.hideSelectedItems;
      _closeOnSelect = $v.closeOnSelect;
      _itemComponent = $v.itemComponent;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(covariant $TagboxAllOf other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$$TagboxAllOf;
  }

  @override
  void update(void Function($TagboxAllOfBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  $TagboxAllOf build() => _build();

  _$$TagboxAllOf _build() {
    final _$result = _$v ??
        new _$$TagboxAllOf._(
            placeholder: placeholder,
            allowClear: allowClear,
            searchEnabled: searchEnabled,
            choicesLazyLoadEnabled: choicesLazyLoadEnabled,
            choicesLazyLoadPageSize: choicesLazyLoadPageSize,
            hideSelectedItems: hideSelectedItems,
            closeOnSelect: closeOnSelect,
            itemComponent: itemComponent);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
