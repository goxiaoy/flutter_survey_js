// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'survey_questions_inner.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$SurveyQuestionsInner extends SurveyQuestionsInner {
  @override
  final AnyOf anyOf;

  factory _$SurveyQuestionsInner(
          [void Function(SurveyQuestionsInnerBuilder)? updates]) =>
      (new SurveyQuestionsInnerBuilder()..update(updates))._build();

  _$SurveyQuestionsInner._({required this.anyOf}) : super._() {
    BuiltValueNullFieldError.checkNotNull(
        anyOf, r'SurveyQuestionsInner', 'anyOf');
  }

  @override
  SurveyQuestionsInner rebuild(
          void Function(SurveyQuestionsInnerBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  SurveyQuestionsInnerBuilder toBuilder() =>
      new SurveyQuestionsInnerBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is SurveyQuestionsInner && anyOf == other.anyOf;
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
    return (newBuiltValueToStringHelper(r'SurveyQuestionsInner')
          ..add('anyOf', anyOf))
        .toString();
  }
}

class SurveyQuestionsInnerBuilder
    implements Builder<SurveyQuestionsInner, SurveyQuestionsInnerBuilder> {
  _$SurveyQuestionsInner? _$v;

  AnyOf? _anyOf;
  AnyOf? get anyOf => _$this._anyOf;
  set anyOf(AnyOf? anyOf) => _$this._anyOf = anyOf;

  SurveyQuestionsInnerBuilder() {
    SurveyQuestionsInner._defaults(this);
  }

  SurveyQuestionsInnerBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _anyOf = $v.anyOf;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(SurveyQuestionsInner other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$SurveyQuestionsInner;
  }

  @override
  void update(void Function(SurveyQuestionsInnerBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  SurveyQuestionsInner build() => _build();

  _$SurveyQuestionsInner _build() {
    final _$result = _$v ??
        new _$SurveyQuestionsInner._(
            anyOf: BuiltValueNullFieldError.checkNotNull(
                anyOf, r'SurveyQuestionsInner', 'anyOf'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
