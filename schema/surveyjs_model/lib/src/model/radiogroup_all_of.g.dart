// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'radiogroup_all_of.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

abstract class RadiogroupAllOfBuilder {
  void replace(RadiogroupAllOf other);
  void update(void Function(RadiogroupAllOfBuilder) updates);
  bool? get showClearButton;
  set showClearButton(bool? showClearButton);

  bool? get separateSpecialChoices;
  set separateSpecialChoices(bool? separateSpecialChoices);

  String? get itemComponent;
  set itemComponent(String? itemComponent);
}

class _$$RadiogroupAllOf extends $RadiogroupAllOf {
  @override
  final bool? showClearButton;
  @override
  final bool? separateSpecialChoices;
  @override
  final String? itemComponent;

  factory _$$RadiogroupAllOf(
          [void Function($RadiogroupAllOfBuilder)? updates]) =>
      (new $RadiogroupAllOfBuilder()..update(updates))._build();

  _$$RadiogroupAllOf._(
      {this.showClearButton, this.separateSpecialChoices, this.itemComponent})
      : super._();

  @override
  $RadiogroupAllOf rebuild(void Function($RadiogroupAllOfBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  $RadiogroupAllOfBuilder toBuilder() =>
      new $RadiogroupAllOfBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is $RadiogroupAllOf &&
        showClearButton == other.showClearButton &&
        separateSpecialChoices == other.separateSpecialChoices &&
        itemComponent == other.itemComponent;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, showClearButton.hashCode);
    _$hash = $jc(_$hash, separateSpecialChoices.hashCode);
    _$hash = $jc(_$hash, itemComponent.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'$RadiogroupAllOf')
          ..add('showClearButton', showClearButton)
          ..add('separateSpecialChoices', separateSpecialChoices)
          ..add('itemComponent', itemComponent))
        .toString();
  }
}

class $RadiogroupAllOfBuilder
    implements
        Builder<$RadiogroupAllOf, $RadiogroupAllOfBuilder>,
        RadiogroupAllOfBuilder {
  _$$RadiogroupAllOf? _$v;

  bool? _showClearButton;
  bool? get showClearButton => _$this._showClearButton;
  set showClearButton(covariant bool? showClearButton) =>
      _$this._showClearButton = showClearButton;

  bool? _separateSpecialChoices;
  bool? get separateSpecialChoices => _$this._separateSpecialChoices;
  set separateSpecialChoices(covariant bool? separateSpecialChoices) =>
      _$this._separateSpecialChoices = separateSpecialChoices;

  String? _itemComponent;
  String? get itemComponent => _$this._itemComponent;
  set itemComponent(covariant String? itemComponent) =>
      _$this._itemComponent = itemComponent;

  $RadiogroupAllOfBuilder() {
    $RadiogroupAllOf._defaults(this);
  }

  $RadiogroupAllOfBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _showClearButton = $v.showClearButton;
      _separateSpecialChoices = $v.separateSpecialChoices;
      _itemComponent = $v.itemComponent;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(covariant $RadiogroupAllOf other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$$RadiogroupAllOf;
  }

  @override
  void update(void Function($RadiogroupAllOfBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  $RadiogroupAllOf build() => _build();

  _$$RadiogroupAllOf _build() {
    final _$result = _$v ??
        new _$$RadiogroupAllOf._(
            showClearButton: showClearButton,
            separateSpecialChoices: separateSpecialChoices,
            itemComponent: itemComponent);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
