// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'buttongroupitemvalue.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$Buttongroupitemvalue extends Buttongroupitemvalue {
  @override
  final String? iconName;
  @override
  final num? iconSize;
  @override
  final bool? showCaption;
  @override
  final JsonObject? value;
  @override
  final SurveyTitle? text;
  @override
  final String? visibleIf;
  @override
  final String? enableIf;

  factory _$Buttongroupitemvalue(
          [void Function(ButtongroupitemvalueBuilder)? updates]) =>
      (new ButtongroupitemvalueBuilder()..update(updates))._build();

  _$Buttongroupitemvalue._(
      {this.iconName,
      this.iconSize,
      this.showCaption,
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
        iconName == other.iconName &&
        iconSize == other.iconSize &&
        showCaption == other.showCaption &&
        value == other.value &&
        text == other.text &&
        visibleIf == other.visibleIf &&
        enableIf == other.enableIf;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, iconName.hashCode);
    _$hash = $jc(_$hash, iconSize.hashCode);
    _$hash = $jc(_$hash, showCaption.hashCode);
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
          ..add('iconName', iconName)
          ..add('iconSize', iconSize)
          ..add('showCaption', showCaption)
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
        ItemvalueBuilder {
  _$Buttongroupitemvalue? _$v;

  String? _iconName;
  String? get iconName => _$this._iconName;
  set iconName(covariant String? iconName) => _$this._iconName = iconName;

  num? _iconSize;
  num? get iconSize => _$this._iconSize;
  set iconSize(covariant num? iconSize) => _$this._iconSize = iconSize;

  bool? _showCaption;
  bool? get showCaption => _$this._showCaption;
  set showCaption(covariant bool? showCaption) =>
      _$this._showCaption = showCaption;

  JsonObject? _value;
  JsonObject? get value => _$this._value;
  set value(covariant JsonObject? value) => _$this._value = value;

  SurveyTitleBuilder? _text;
  SurveyTitleBuilder get text => _$this._text ??= new SurveyTitleBuilder();
  set text(covariant SurveyTitleBuilder? text) => _$this._text = text;

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
      _iconName = $v.iconName;
      _iconSize = $v.iconSize;
      _showCaption = $v.showCaption;
      _value = $v.value;
      _text = $v.text?.toBuilder();
      _visibleIf = $v.visibleIf;
      _enableIf = $v.enableIf;
      _$v = null;
    }
    return this;
  }

  @override
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
    _$Buttongroupitemvalue _$result;
    try {
      _$result = _$v ??
          new _$Buttongroupitemvalue._(
              iconName: iconName,
              iconSize: iconSize,
              showCaption: showCaption,
              value: value,
              text: _text?.build(),
              visibleIf: visibleIf,
              enableIf: enableIf);
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'text';
        _text?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'Buttongroupitemvalue', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
