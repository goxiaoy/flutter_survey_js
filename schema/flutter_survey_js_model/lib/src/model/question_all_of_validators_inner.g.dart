// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'question_all_of_validators_inner.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$QuestionAllOfValidatorsInner extends QuestionAllOfValidatorsInner {
  @override
  final AnyOf anyOf;

  factory _$QuestionAllOfValidatorsInner(
          [void Function(QuestionAllOfValidatorsInnerBuilder)? updates]) =>
      (new QuestionAllOfValidatorsInnerBuilder()..update(updates))._build();

  _$QuestionAllOfValidatorsInner._({required this.anyOf}) : super._() {
    BuiltValueNullFieldError.checkNotNull(
        anyOf, r'QuestionAllOfValidatorsInner', 'anyOf');
  }

  @override
  QuestionAllOfValidatorsInner rebuild(
          void Function(QuestionAllOfValidatorsInnerBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  QuestionAllOfValidatorsInnerBuilder toBuilder() =>
      new QuestionAllOfValidatorsInnerBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is QuestionAllOfValidatorsInner && anyOf == other.anyOf;
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
    return (newBuiltValueToStringHelper(r'QuestionAllOfValidatorsInner')
          ..add('anyOf', anyOf))
        .toString();
  }
}

class QuestionAllOfValidatorsInnerBuilder
    implements
        Builder<QuestionAllOfValidatorsInner,
            QuestionAllOfValidatorsInnerBuilder> {
  _$QuestionAllOfValidatorsInner? _$v;

  AnyOf? _anyOf;
  AnyOf? get anyOf => _$this._anyOf;
  set anyOf(AnyOf? anyOf) => _$this._anyOf = anyOf;

  QuestionAllOfValidatorsInnerBuilder() {
    QuestionAllOfValidatorsInner._defaults(this);
  }

  QuestionAllOfValidatorsInnerBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _anyOf = $v.anyOf;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(QuestionAllOfValidatorsInner other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$QuestionAllOfValidatorsInner;
  }

  @override
  void update(void Function(QuestionAllOfValidatorsInnerBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  QuestionAllOfValidatorsInner build() => _build();

  _$QuestionAllOfValidatorsInner _build() {
    final _$result = _$v ??
        new _$QuestionAllOfValidatorsInner._(
            anyOf: BuiltValueNullFieldError.checkNotNull(
                anyOf, r'QuestionAllOfValidatorsInner', 'anyOf'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
