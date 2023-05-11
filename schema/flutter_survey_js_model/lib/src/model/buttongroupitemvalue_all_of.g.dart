// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'buttongroupitemvalue_all_of.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

abstract class ButtongroupitemvalueAllOfBuilder {
  void replace(ButtongroupitemvalueAllOf other);
  void update(void Function(ButtongroupitemvalueAllOfBuilder) updates);
  bool? get showCaption;
  set showCaption(bool? showCaption);

  String? get iconName;
  set iconName(String? iconName);

  num? get iconSize;
  set iconSize(num? iconSize);
}

class _$$ButtongroupitemvalueAllOf extends $ButtongroupitemvalueAllOf {
  @override
  final bool? showCaption;
  @override
  final String? iconName;
  @override
  final num? iconSize;

  factory _$$ButtongroupitemvalueAllOf(
          [void Function($ButtongroupitemvalueAllOfBuilder)? updates]) =>
      (new $ButtongroupitemvalueAllOfBuilder()..update(updates))._build();

  _$$ButtongroupitemvalueAllOf._(
      {this.showCaption, this.iconName, this.iconSize})
      : super._();

  @override
  $ButtongroupitemvalueAllOf rebuild(
          void Function($ButtongroupitemvalueAllOfBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  $ButtongroupitemvalueAllOfBuilder toBuilder() =>
      new $ButtongroupitemvalueAllOfBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is $ButtongroupitemvalueAllOf &&
        showCaption == other.showCaption &&
        iconName == other.iconName &&
        iconSize == other.iconSize;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, showCaption.hashCode);
    _$hash = $jc(_$hash, iconName.hashCode);
    _$hash = $jc(_$hash, iconSize.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'$ButtongroupitemvalueAllOf')
          ..add('showCaption', showCaption)
          ..add('iconName', iconName)
          ..add('iconSize', iconSize))
        .toString();
  }
}

class $ButtongroupitemvalueAllOfBuilder
    implements
        Builder<$ButtongroupitemvalueAllOf, $ButtongroupitemvalueAllOfBuilder>,
        ButtongroupitemvalueAllOfBuilder {
  _$$ButtongroupitemvalueAllOf? _$v;

  bool? _showCaption;
  bool? get showCaption => _$this._showCaption;
  set showCaption(covariant bool? showCaption) =>
      _$this._showCaption = showCaption;

  String? _iconName;
  String? get iconName => _$this._iconName;
  set iconName(covariant String? iconName) => _$this._iconName = iconName;

  num? _iconSize;
  num? get iconSize => _$this._iconSize;
  set iconSize(covariant num? iconSize) => _$this._iconSize = iconSize;

  $ButtongroupitemvalueAllOfBuilder() {
    $ButtongroupitemvalueAllOf._defaults(this);
  }

  $ButtongroupitemvalueAllOfBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _showCaption = $v.showCaption;
      _iconName = $v.iconName;
      _iconSize = $v.iconSize;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(covariant $ButtongroupitemvalueAllOf other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$$ButtongroupitemvalueAllOf;
  }

  @override
  void update(void Function($ButtongroupitemvalueAllOfBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  $ButtongroupitemvalueAllOf build() => _build();

  _$$ButtongroupitemvalueAllOf _build() {
    final _$result = _$v ??
        new _$$ButtongroupitemvalueAllOf._(
            showCaption: showCaption, iconName: iconName, iconSize: iconSize);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
