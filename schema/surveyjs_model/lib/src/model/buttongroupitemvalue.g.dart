// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'buttongroupitemvalue.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$Buttongroupitemvalue extends Buttongroupitemvalue {
  @override
  final bool? showCaption;
  @override
  final String? iconName;
  @override
  final num? iconSize;
  @override
  final String? value;
  @override
  final String? text;
  @override
  final String? visibleIf;
  @override
  final String? enableIf;

  factory _$Buttongroupitemvalue(
          [void Function(ButtongroupitemvalueBuilder)? updates]) =>
      (new ButtongroupitemvalueBuilder()..update(updates))._build();

  _$Buttongroupitemvalue._(
      {this.showCaption,
      this.iconName,
      this.iconSize,
      this.value,
      this.text,
      this.visibleIf,
      this.enableIf})
      : super._();

  @override
  Buttongroupitemvalue rebuild(
          void Function(ButtongroupitemvalueBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ButtongroupitemvalueBuilder toBuilder() =>
      new ButtongroupitemvalueBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Buttongroupitemvalue &&
        showCaption == other.showCaption &&
        iconName == other.iconName &&
        iconSize == other.iconSize &&
        value == other.value &&
        text == other.text &&
        visibleIf == other.visibleIf &&
        enableIf == other.enableIf;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, showCaption.hashCode);
    _$hash = $jc(_$hash, iconName.hashCode);
    _$hash = $jc(_$hash, iconSize.hashCode);
    _$hash = $jc(_$hash, value.hashCode);
    _$hash = $jc(_$hash, text.hashCode);
    _$hash = $jc(_$hash, visibleIf.hashCode);
    _$hash = $jc(_$hash, enableIf.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'Buttongroupitemvalue')
          ..add('showCaption', showCaption)
          ..add('iconName', iconName)
          ..add('iconSize', iconSize)
          ..add('value', value)
          ..add('text', text)
          ..add('visibleIf', visibleIf)
          ..add('enableIf', enableIf))
        .toString();
  }
}

class ButtongroupitemvalueBuilder
    implements
        Builder<Buttongroupitemvalue, ButtongroupitemvalueBuilder>,
        ButtongroupitemvalueAllOfBuilder,
        ItemvalueBuilder {
  _$Buttongroupitemvalue? _$v;

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

  String? _value;
  String? get value => _$this._value;
  set value(covariant String? value) => _$this._value = value;

  String? _text;
  String? get text => _$this._text;
  set text(covariant String? text) => _$this._text = text;

  String? _visibleIf;
  String? get visibleIf => _$this._visibleIf;
  set visibleIf(covariant String? visibleIf) => _$this._visibleIf = visibleIf;

  String? _enableIf;
  String? get enableIf => _$this._enableIf;
  set enableIf(covariant String? enableIf) => _$this._enableIf = enableIf;

  ButtongroupitemvalueBuilder() {
    Buttongroupitemvalue._defaults(this);
  }

  ButtongroupitemvalueBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _showCaption = $v.showCaption;
      _iconName = $v.iconName;
      _iconSize = $v.iconSize;
      _value = $v.value;
      _text = $v.text;
      _visibleIf = $v.visibleIf;
      _enableIf = $v.enableIf;
      _$v = null;
    }
    return this;
  }

  @override
// ignore: override_on_non_overriding_method
  void replace(covariant Buttongroupitemvalue other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$Buttongroupitemvalue;
  }

  @override
  void update(void Function(ButtongroupitemvalueBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  Buttongroupitemvalue build() => _build();

  _$Buttongroupitemvalue _build() {
    final _$result = _$v ??
        new _$Buttongroupitemvalue._(
            showCaption: showCaption,
            iconName: iconName,
            iconSize: iconSize,
            value: value,
            text: text,
            visibleIf: visibleIf,
            enableIf: enableIf);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
