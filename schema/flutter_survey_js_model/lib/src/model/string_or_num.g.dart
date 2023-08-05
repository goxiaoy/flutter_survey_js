// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'string_or_num.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$StringOrNum extends StringOrNum {
  @override
  final OneOf oneOf;

  factory _$StringOrNum([void Function(StringOrNumBuilder)? updates]) =>
      (new StringOrNumBuilder()..update(updates))._build();

  _$StringOrNum._({required this.oneOf}) : super._() {
    BuiltValueNullFieldError.checkNotNull(oneOf, r'StringOrNum', 'oneOf');
  }

  @override
  StringOrNum rebuild(void Function(StringOrNumBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  StringOrNumBuilder toBuilder() => new StringOrNumBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is StringOrNum && oneOf == other.oneOf;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, oneOf.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'StringOrNum')..add('oneOf', oneOf))
        .toString();
  }
}

class StringOrNumBuilder implements Builder<StringOrNum, StringOrNumBuilder> {
  _$StringOrNum? _$v;

  OneOf? _oneOf;
  OneOf? get oneOf => _$this._oneOf;
  set oneOf(OneOf? oneOf) => _$this._oneOf = oneOf;

  StringOrNumBuilder() {
    StringOrNum._defaults(this);
  }

  StringOrNumBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _oneOf = $v.oneOf;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(StringOrNum other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$StringOrNum;
  }

  @override
  void update(void Function(StringOrNumBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  StringOrNum build() => _build();

  _$StringOrNum _build() {
    final _$result = _$v ??
        new _$StringOrNum._(
            oneOf: BuiltValueNullFieldError.checkNotNull(
                oneOf, r'StringOrNum', 'oneOf'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
