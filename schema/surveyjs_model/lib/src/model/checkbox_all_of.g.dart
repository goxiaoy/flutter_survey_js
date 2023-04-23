// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'checkbox_all_of.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

abstract class CheckboxAllOfBuilder {
  void replace(CheckboxAllOf other);
  void update(void Function(CheckboxAllOfBuilder) updates);
  bool? get showSelectAllItem;
  set showSelectAllItem(bool? showSelectAllItem);

  bool? get separateSpecialChoices;
  set separateSpecialChoices(bool? separateSpecialChoices);

  num? get maxSelectedChoices;
  set maxSelectedChoices(num? maxSelectedChoices);

  String? get selectAllText;
  set selectAllText(String? selectAllText);

  String? get valuePropertyName;
  set valuePropertyName(String? valuePropertyName);

  String? get itemComponent;
  set itemComponent(String? itemComponent);
}

class _$$CheckboxAllOf extends $CheckboxAllOf {
  @override
  final bool? showSelectAllItem;
  @override
  final bool? separateSpecialChoices;
  @override
  final num? maxSelectedChoices;
  @override
  final String? selectAllText;
  @override
  final String? valuePropertyName;
  @override
  final String? itemComponent;

  factory _$$CheckboxAllOf([void Function($CheckboxAllOfBuilder)? updates]) =>
      (new $CheckboxAllOfBuilder()..update(updates))._build();

  _$$CheckboxAllOf._(
      {this.showSelectAllItem,
      this.separateSpecialChoices,
      this.maxSelectedChoices,
      this.selectAllText,
      this.valuePropertyName,
      this.itemComponent})
      : super._();

  @override
  $CheckboxAllOf rebuild(void Function($CheckboxAllOfBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  $CheckboxAllOfBuilder toBuilder() =>
      new $CheckboxAllOfBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is $CheckboxAllOf &&
        showSelectAllItem == other.showSelectAllItem &&
        separateSpecialChoices == other.separateSpecialChoices &&
        maxSelectedChoices == other.maxSelectedChoices &&
        selectAllText == other.selectAllText &&
        valuePropertyName == other.valuePropertyName &&
        itemComponent == other.itemComponent;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, showSelectAllItem.hashCode);
    _$hash = $jc(_$hash, separateSpecialChoices.hashCode);
    _$hash = $jc(_$hash, maxSelectedChoices.hashCode);
    _$hash = $jc(_$hash, selectAllText.hashCode);
    _$hash = $jc(_$hash, valuePropertyName.hashCode);
    _$hash = $jc(_$hash, itemComponent.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'$CheckboxAllOf')
          ..add('showSelectAllItem', showSelectAllItem)
          ..add('separateSpecialChoices', separateSpecialChoices)
          ..add('maxSelectedChoices', maxSelectedChoices)
          ..add('selectAllText', selectAllText)
          ..add('valuePropertyName', valuePropertyName)
          ..add('itemComponent', itemComponent))
        .toString();
  }
}

class $CheckboxAllOfBuilder
    implements
        Builder<$CheckboxAllOf, $CheckboxAllOfBuilder>,
        CheckboxAllOfBuilder {
  _$$CheckboxAllOf? _$v;

  bool? _showSelectAllItem;
  bool? get showSelectAllItem => _$this._showSelectAllItem;
  set showSelectAllItem(covariant bool? showSelectAllItem) =>
      _$this._showSelectAllItem = showSelectAllItem;

  bool? _separateSpecialChoices;
  bool? get separateSpecialChoices => _$this._separateSpecialChoices;
  set separateSpecialChoices(covariant bool? separateSpecialChoices) =>
      _$this._separateSpecialChoices = separateSpecialChoices;

  num? _maxSelectedChoices;
  num? get maxSelectedChoices => _$this._maxSelectedChoices;
  set maxSelectedChoices(covariant num? maxSelectedChoices) =>
      _$this._maxSelectedChoices = maxSelectedChoices;

  String? _selectAllText;
  String? get selectAllText => _$this._selectAllText;
  set selectAllText(covariant String? selectAllText) =>
      _$this._selectAllText = selectAllText;

  String? _valuePropertyName;
  String? get valuePropertyName => _$this._valuePropertyName;
  set valuePropertyName(covariant String? valuePropertyName) =>
      _$this._valuePropertyName = valuePropertyName;

  String? _itemComponent;
  String? get itemComponent => _$this._itemComponent;
  set itemComponent(covariant String? itemComponent) =>
      _$this._itemComponent = itemComponent;

  $CheckboxAllOfBuilder() {
    $CheckboxAllOf._defaults(this);
  }

  $CheckboxAllOfBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _showSelectAllItem = $v.showSelectAllItem;
      _separateSpecialChoices = $v.separateSpecialChoices;
      _maxSelectedChoices = $v.maxSelectedChoices;
      _selectAllText = $v.selectAllText;
      _valuePropertyName = $v.valuePropertyName;
      _itemComponent = $v.itemComponent;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(covariant $CheckboxAllOf other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$$CheckboxAllOf;
  }

  @override
  void update(void Function($CheckboxAllOfBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  $CheckboxAllOf build() => _build();

  _$$CheckboxAllOf _build() {
    final _$result = _$v ??
        new _$$CheckboxAllOf._(
            showSelectAllItem: showSelectAllItem,
            separateSpecialChoices: separateSpecialChoices,
            maxSelectedChoices: maxSelectedChoices,
            selectAllText: selectAllText,
            valuePropertyName: valuePropertyName,
            itemComponent: itemComponent);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
