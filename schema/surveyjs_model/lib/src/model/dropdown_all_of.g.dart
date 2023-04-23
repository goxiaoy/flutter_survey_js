// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'dropdown_all_of.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

abstract class DropdownAllOfBuilder {
  void replace(DropdownAllOf other);
  void update(void Function(DropdownAllOfBuilder) updates);
  String? get placeholder;
  set placeholder(String? placeholder);

  bool? get allowClear;
  set allowClear(bool? allowClear);

  num? get choicesMin;
  set choicesMin(num? choicesMin);

  num? get choicesMax;
  set choicesMax(num? choicesMax);

  num? get choicesStep;
  set choicesStep(num? choicesStep);

  DropdownAutocomplete? get autocomplete;
  set autocomplete(DropdownAutocomplete? autocomplete);

  String? get renderAs;
  set renderAs(String? renderAs);

  bool? get searchEnabled;
  set searchEnabled(bool? searchEnabled);

  bool? get choicesLazyLoadEnabled;
  set choicesLazyLoadEnabled(bool? choicesLazyLoadEnabled);

  num? get choicesLazyLoadPageSize;
  set choicesLazyLoadPageSize(num? choicesLazyLoadPageSize);

  String? get inputFieldComponent;
  set inputFieldComponent(String? inputFieldComponent);

  String? get itemComponent;
  set itemComponent(String? itemComponent);
}

class _$$DropdownAllOf extends $DropdownAllOf {
  @override
  final String? placeholder;
  @override
  final bool? allowClear;
  @override
  final num? choicesMin;
  @override
  final num? choicesMax;
  @override
  final num? choicesStep;
  @override
  final DropdownAutocomplete? autocomplete;
  @override
  final String? renderAs;
  @override
  final bool? searchEnabled;
  @override
  final bool? choicesLazyLoadEnabled;
  @override
  final num? choicesLazyLoadPageSize;
  @override
  final String? inputFieldComponent;
  @override
  final String? itemComponent;

  factory _$$DropdownAllOf([void Function($DropdownAllOfBuilder)? updates]) =>
      (new $DropdownAllOfBuilder()..update(updates))._build();

  _$$DropdownAllOf._(
      {this.placeholder,
      this.allowClear,
      this.choicesMin,
      this.choicesMax,
      this.choicesStep,
      this.autocomplete,
      this.renderAs,
      this.searchEnabled,
      this.choicesLazyLoadEnabled,
      this.choicesLazyLoadPageSize,
      this.inputFieldComponent,
      this.itemComponent})
      : super._();

  @override
  $DropdownAllOf rebuild(void Function($DropdownAllOfBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  $DropdownAllOfBuilder toBuilder() =>
      new $DropdownAllOfBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is $DropdownAllOf &&
        placeholder == other.placeholder &&
        allowClear == other.allowClear &&
        choicesMin == other.choicesMin &&
        choicesMax == other.choicesMax &&
        choicesStep == other.choicesStep &&
        autocomplete == other.autocomplete &&
        renderAs == other.renderAs &&
        searchEnabled == other.searchEnabled &&
        choicesLazyLoadEnabled == other.choicesLazyLoadEnabled &&
        choicesLazyLoadPageSize == other.choicesLazyLoadPageSize &&
        inputFieldComponent == other.inputFieldComponent &&
        itemComponent == other.itemComponent;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, placeholder.hashCode);
    _$hash = $jc(_$hash, allowClear.hashCode);
    _$hash = $jc(_$hash, choicesMin.hashCode);
    _$hash = $jc(_$hash, choicesMax.hashCode);
    _$hash = $jc(_$hash, choicesStep.hashCode);
    _$hash = $jc(_$hash, autocomplete.hashCode);
    _$hash = $jc(_$hash, renderAs.hashCode);
    _$hash = $jc(_$hash, searchEnabled.hashCode);
    _$hash = $jc(_$hash, choicesLazyLoadEnabled.hashCode);
    _$hash = $jc(_$hash, choicesLazyLoadPageSize.hashCode);
    _$hash = $jc(_$hash, inputFieldComponent.hashCode);
    _$hash = $jc(_$hash, itemComponent.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'$DropdownAllOf')
          ..add('placeholder', placeholder)
          ..add('allowClear', allowClear)
          ..add('choicesMin', choicesMin)
          ..add('choicesMax', choicesMax)
          ..add('choicesStep', choicesStep)
          ..add('autocomplete', autocomplete)
          ..add('renderAs', renderAs)
          ..add('searchEnabled', searchEnabled)
          ..add('choicesLazyLoadEnabled', choicesLazyLoadEnabled)
          ..add('choicesLazyLoadPageSize', choicesLazyLoadPageSize)
          ..add('inputFieldComponent', inputFieldComponent)
          ..add('itemComponent', itemComponent))
        .toString();
  }
}

class $DropdownAllOfBuilder
    implements
        Builder<$DropdownAllOf, $DropdownAllOfBuilder>,
        DropdownAllOfBuilder {
  _$$DropdownAllOf? _$v;

  String? _placeholder;
  String? get placeholder => _$this._placeholder;
  set placeholder(covariant String? placeholder) =>
      _$this._placeholder = placeholder;

  bool? _allowClear;
  bool? get allowClear => _$this._allowClear;
  set allowClear(covariant bool? allowClear) => _$this._allowClear = allowClear;

  num? _choicesMin;
  num? get choicesMin => _$this._choicesMin;
  set choicesMin(covariant num? choicesMin) => _$this._choicesMin = choicesMin;

  num? _choicesMax;
  num? get choicesMax => _$this._choicesMax;
  set choicesMax(covariant num? choicesMax) => _$this._choicesMax = choicesMax;

  num? _choicesStep;
  num? get choicesStep => _$this._choicesStep;
  set choicesStep(covariant num? choicesStep) =>
      _$this._choicesStep = choicesStep;

  DropdownAutocomplete? _autocomplete;
  DropdownAutocomplete? get autocomplete => _$this._autocomplete;
  set autocomplete(covariant DropdownAutocomplete? autocomplete) =>
      _$this._autocomplete = autocomplete;

  String? _renderAs;
  String? get renderAs => _$this._renderAs;
  set renderAs(covariant String? renderAs) => _$this._renderAs = renderAs;

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

  String? _inputFieldComponent;
  String? get inputFieldComponent => _$this._inputFieldComponent;
  set inputFieldComponent(covariant String? inputFieldComponent) =>
      _$this._inputFieldComponent = inputFieldComponent;

  String? _itemComponent;
  String? get itemComponent => _$this._itemComponent;
  set itemComponent(covariant String? itemComponent) =>
      _$this._itemComponent = itemComponent;

  $DropdownAllOfBuilder() {
    $DropdownAllOf._defaults(this);
  }

  $DropdownAllOfBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _placeholder = $v.placeholder;
      _allowClear = $v.allowClear;
      _choicesMin = $v.choicesMin;
      _choicesMax = $v.choicesMax;
      _choicesStep = $v.choicesStep;
      _autocomplete = $v.autocomplete;
      _renderAs = $v.renderAs;
      _searchEnabled = $v.searchEnabled;
      _choicesLazyLoadEnabled = $v.choicesLazyLoadEnabled;
      _choicesLazyLoadPageSize = $v.choicesLazyLoadPageSize;
      _inputFieldComponent = $v.inputFieldComponent;
      _itemComponent = $v.itemComponent;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(covariant $DropdownAllOf other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$$DropdownAllOf;
  }

  @override
  void update(void Function($DropdownAllOfBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  $DropdownAllOf build() => _build();

  _$$DropdownAllOf _build() {
    final _$result = _$v ??
        new _$$DropdownAllOf._(
            placeholder: placeholder,
            allowClear: allowClear,
            choicesMin: choicesMin,
            choicesMax: choicesMax,
            choicesStep: choicesStep,
            autocomplete: autocomplete,
            renderAs: renderAs,
            searchEnabled: searchEnabled,
            choicesLazyLoadEnabled: choicesLazyLoadEnabled,
            choicesLazyLoadPageSize: choicesLazyLoadPageSize,
            inputFieldComponent: inputFieldComponent,
            itemComponent: itemComponent);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
