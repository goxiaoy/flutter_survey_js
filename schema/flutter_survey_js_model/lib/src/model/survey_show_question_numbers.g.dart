// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'survey_show_question_numbers.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$SurveyShowQuestionNumbers extends SurveyShowQuestionNumbers {
  @override
  final AnyOf anyOf;

  factory _$SurveyShowQuestionNumbers(
          [void Function(SurveyShowQuestionNumbersBuilder)? updates]) =>
      (new SurveyShowQuestionNumbersBuilder()..update(updates))._build();

  _$SurveyShowQuestionNumbers._({required this.anyOf}) : super._() {
    BuiltValueNullFieldError.checkNotNull(
        anyOf, r'SurveyShowQuestionNumbers', 'anyOf');
  }

  @override
  SurveyShowQuestionNumbers rebuild(
          void Function(SurveyShowQuestionNumbersBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  SurveyShowQuestionNumbersBuilder toBuilder() =>
      new SurveyShowQuestionNumbersBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is SurveyShowQuestionNumbers && anyOf == other.anyOf;
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
    return (newBuiltValueToStringHelper(r'SurveyShowQuestionNumbers')
          ..add('anyOf', anyOf))
        .toString();
  }
}

class SurveyShowQuestionNumbersBuilder
    implements
        Builder<SurveyShowQuestionNumbers, SurveyShowQuestionNumbersBuilder> {
  _$SurveyShowQuestionNumbers? _$v;

  AnyOf? _anyOf;
  AnyOf? get anyOf => _$this._anyOf;
  set anyOf(AnyOf? anyOf) => _$this._anyOf = anyOf;

  SurveyShowQuestionNumbersBuilder() {
    SurveyShowQuestionNumbers._defaults(this);
  }

  SurveyShowQuestionNumbersBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _anyOf = $v.anyOf;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(SurveyShowQuestionNumbers other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$SurveyShowQuestionNumbers;
  }

  @override
  void update(void Function(SurveyShowQuestionNumbersBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  SurveyShowQuestionNumbers build() => _build();

  _$SurveyShowQuestionNumbers _build() {
    final _$result = _$v ??
        new _$SurveyShowQuestionNumbers._(
            anyOf: BuiltValueNullFieldError.checkNotNull(
                anyOf, r'SurveyShowQuestionNumbers', 'anyOf'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
