// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'matrixdropdown_all_of_rows_inner.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$MatrixdropdownAllOfRowsInner extends MatrixdropdownAllOfRowsInner {
  @override
  final AnyOf anyOf;

  factory _$MatrixdropdownAllOfRowsInner(
          [void Function(MatrixdropdownAllOfRowsInnerBuilder)? updates]) =>
      (new MatrixdropdownAllOfRowsInnerBuilder()..update(updates))._build();

  _$MatrixdropdownAllOfRowsInner._({required this.anyOf}) : super._() {
    BuiltValueNullFieldError.checkNotNull(
        anyOf, r'MatrixdropdownAllOfRowsInner', 'anyOf');
  }

  @override
  MatrixdropdownAllOfRowsInner rebuild(
          void Function(MatrixdropdownAllOfRowsInnerBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  MatrixdropdownAllOfRowsInnerBuilder toBuilder() =>
      new MatrixdropdownAllOfRowsInnerBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is MatrixdropdownAllOfRowsInner && anyOf == other.anyOf;
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
    return (newBuiltValueToStringHelper(r'MatrixdropdownAllOfRowsInner')
          ..add('anyOf', anyOf))
        .toString();
  }
}

class MatrixdropdownAllOfRowsInnerBuilder
    implements
        Builder<MatrixdropdownAllOfRowsInner,
            MatrixdropdownAllOfRowsInnerBuilder> {
  _$MatrixdropdownAllOfRowsInner? _$v;

  AnyOf? _anyOf;
  AnyOf? get anyOf => _$this._anyOf;
  set anyOf(AnyOf? anyOf) => _$this._anyOf = anyOf;

  MatrixdropdownAllOfRowsInnerBuilder() {
    MatrixdropdownAllOfRowsInner._defaults(this);
  }

  MatrixdropdownAllOfRowsInnerBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _anyOf = $v.anyOf;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(MatrixdropdownAllOfRowsInner other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$MatrixdropdownAllOfRowsInner;
  }

  @override
  void update(void Function(MatrixdropdownAllOfRowsInnerBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  MatrixdropdownAllOfRowsInner build() => _build();

  _$MatrixdropdownAllOfRowsInner _build() {
    final _$result = _$v ??
        new _$MatrixdropdownAllOfRowsInner._(
            anyOf: BuiltValueNullFieldError.checkNotNull(
                anyOf, r'MatrixdropdownAllOfRowsInner', 'anyOf'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
