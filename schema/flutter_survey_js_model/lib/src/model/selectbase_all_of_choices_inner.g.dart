// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'selectbase_all_of_choices_inner.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$SelectbaseAllOfChoicesInner extends SelectbaseAllOfChoicesInner {
  @override
  final AnyOf anyOf;

  factory _$SelectbaseAllOfChoicesInner(
          [void Function(SelectbaseAllOfChoicesInnerBuilder)? updates]) =>
      (new SelectbaseAllOfChoicesInnerBuilder()..update(updates))._build();

  _$SelectbaseAllOfChoicesInner._({required this.anyOf}) : super._() {
    BuiltValueNullFieldError.checkNotNull(
        anyOf, r'SelectbaseAllOfChoicesInner', 'anyOf');
  }

  @override
  SelectbaseAllOfChoicesInner rebuild(
          void Function(SelectbaseAllOfChoicesInnerBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  SelectbaseAllOfChoicesInnerBuilder toBuilder() =>
      new SelectbaseAllOfChoicesInnerBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is SelectbaseAllOfChoicesInner && anyOf == other.anyOf;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, anyOf.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'SelectbaseAllOfChoicesInner')
          ..add('anyOf', anyOf))
        .toString();
  }
}

class SelectbaseAllOfChoicesInnerBuilder
    implements
        Builder<SelectbaseAllOfChoicesInner,
            SelectbaseAllOfChoicesInnerBuilder> {
  _$SelectbaseAllOfChoicesInner? _$v;

  AnyOf? _anyOf;
  AnyOf? get anyOf => _$this._anyOf;
  set anyOf(AnyOf? anyOf) => _$this._anyOf = anyOf;

  SelectbaseAllOfChoicesInnerBuilder() {
    SelectbaseAllOfChoicesInner._defaults(this);
  }

  SelectbaseAllOfChoicesInnerBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _anyOf = $v.anyOf;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(SelectbaseAllOfChoicesInner other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$SelectbaseAllOfChoicesInner;
  }

  @override
  void update(void Function(SelectbaseAllOfChoicesInnerBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  SelectbaseAllOfChoicesInner build() => _build();

  _$SelectbaseAllOfChoicesInner _build() {
    final _$result = _$v ??
        new _$SelectbaseAllOfChoicesInner._(
            anyOf: BuiltValueNullFieldError.checkNotNull(
                anyOf, r'SelectbaseAllOfChoicesInner', 'anyOf'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
