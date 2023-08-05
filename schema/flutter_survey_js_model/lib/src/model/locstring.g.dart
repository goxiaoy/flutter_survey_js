// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'locstring.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$Locstring extends Locstring {
  @override
  final String? default_;
  @override
  final String? en;

  factory _$Locstring([void Function(LocstringBuilder)? updates]) =>
      (new LocstringBuilder()..update(updates))._build();

  _$Locstring._({this.default_, this.en}) : super._();

  @override
  Locstring rebuild(void Function(LocstringBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  LocstringBuilder toBuilder() => new LocstringBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Locstring && default_ == other.default_ && en == other.en;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, default_.hashCode);
    _$hash = $jc(_$hash, en.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'Locstring')
          ..add('default_', default_)
          ..add('en', en))
        .toString();
  }
}

class LocstringBuilder implements Builder<Locstring, LocstringBuilder> {
  _$Locstring? _$v;

  String? _default_;
  String? get default_ => _$this._default_;
  set default_(String? default_) => _$this._default_ = default_;

  String? _en;
  String? get en => _$this._en;
  set en(String? en) => _$this._en = en;

  LocstringBuilder() {
    Locstring._defaults(this);
  }

  LocstringBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _default_ = $v.default_;
      _en = $v.en;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Locstring other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$Locstring;
  }

  @override
  void update(void Function(LocstringBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  Locstring build() => _build();

  _$Locstring _build() {
    final _$result = _$v ?? new _$Locstring._(default_: default_, en: en);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
