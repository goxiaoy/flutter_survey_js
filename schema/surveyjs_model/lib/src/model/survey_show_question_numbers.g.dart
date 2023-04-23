// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'survey_show_question_numbers.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$SurveyShowQuestionNumbers extends SurveyShowQuestionNumbers {
  @override
  final OneOf oneOf;

  factory _$SurveyShowQuestionNumbers(
          [void Function(SurveyShowQuestionNumbersBuilder)? updates]) =>
      (new SurveyShowQuestionNumbersBuilder()..update(updates))._build();

  _$SurveyShowQuestionNumbers._({required this.oneOf}) : super._() {
    BuiltValueNullFieldError.checkNotNull(
        oneOf, r'SurveyShowQuestionNumbers', 'oneOf');
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
    return other is SurveyShowQuestionNumbers && oneOf == other.oneOf;
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
    return (newBuiltValueToStringHelper(r'SurveyShowQuestionNumbers')
          ..add('oneOf', oneOf))
        .toString();
  }
}

class SurveyShowQuestionNumbersBuilder
    implements
        Builder<SurveyShowQuestionNumbers, SurveyShowQuestionNumbersBuilder> {
  _$SurveyShowQuestionNumbers? _$v;

  OneOf? _oneOf;
  OneOf? get oneOf => _$this._oneOf;
  set oneOf(OneOf? oneOf) => _$this._oneOf = oneOf;

  SurveyShowQuestionNumbersBuilder() {
    SurveyShowQuestionNumbers._defaults(this);
  }

  SurveyShowQuestionNumbersBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _oneOf = $v.oneOf;
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
            oneOf: BuiltValueNullFieldError.checkNotNull(
                oneOf, r'SurveyShowQuestionNumbers', 'oneOf'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
