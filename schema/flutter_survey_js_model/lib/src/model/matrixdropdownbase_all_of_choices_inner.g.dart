// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'matrixdropdownbase_all_of_choices_inner.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$MatrixdropdownbaseAllOfChoicesInner
    extends MatrixdropdownbaseAllOfChoicesInner {
  @override
  final AnyOf anyOf;

  factory _$MatrixdropdownbaseAllOfChoicesInner(
          [void Function(MatrixdropdownbaseAllOfChoicesInnerBuilder)?
              updates]) =>
      (new MatrixdropdownbaseAllOfChoicesInnerBuilder()..update(updates))
          ._build();

  _$MatrixdropdownbaseAllOfChoicesInner._({required this.anyOf}) : super._() {
    BuiltValueNullFieldError.checkNotNull(
        anyOf, r'MatrixdropdownbaseAllOfChoicesInner', 'anyOf');
  }

  @override
  MatrixdropdownbaseAllOfChoicesInner rebuild(
          void Function(MatrixdropdownbaseAllOfChoicesInnerBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  MatrixdropdownbaseAllOfChoicesInnerBuilder toBuilder() =>
      new MatrixdropdownbaseAllOfChoicesInnerBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is MatrixdropdownbaseAllOfChoicesInner && anyOf == other.anyOf;
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
    return (newBuiltValueToStringHelper(r'MatrixdropdownbaseAllOfChoicesInner')
          ..add('anyOf', anyOf))
        .toString();
  }
}

class MatrixdropdownbaseAllOfChoicesInnerBuilder
    implements
        Builder<MatrixdropdownbaseAllOfChoicesInner,
            MatrixdropdownbaseAllOfChoicesInnerBuilder> {
  _$MatrixdropdownbaseAllOfChoicesInner? _$v;

  AnyOf? _anyOf;
  AnyOf? get anyOf => _$this._anyOf;
  set anyOf(AnyOf? anyOf) => _$this._anyOf = anyOf;

  MatrixdropdownbaseAllOfChoicesInnerBuilder() {
    MatrixdropdownbaseAllOfChoicesInner._defaults(this);
  }

  MatrixdropdownbaseAllOfChoicesInnerBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _anyOf = $v.anyOf;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(MatrixdropdownbaseAllOfChoicesInner other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$MatrixdropdownbaseAllOfChoicesInner;
  }

  @override
  void update(
      void Function(MatrixdropdownbaseAllOfChoicesInnerBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  MatrixdropdownbaseAllOfChoicesInner build() => _build();

  _$MatrixdropdownbaseAllOfChoicesInner _build() {
    final _$result = _$v ??
        new _$MatrixdropdownbaseAllOfChoicesInner._(
            anyOf: BuiltValueNullFieldError.checkNotNull(
                anyOf, r'MatrixdropdownbaseAllOfChoicesInner', 'anyOf'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
