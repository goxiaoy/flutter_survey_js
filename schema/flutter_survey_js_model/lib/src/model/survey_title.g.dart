// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'survey_title.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$SurveyTitle extends SurveyTitle {
  @override
  final OneOf oneOf;

  factory _$SurveyTitle([void Function(SurveyTitleBuilder)? updates]) =>
      (new SurveyTitleBuilder()..update(updates))._build();

  _$SurveyTitle._({required this.oneOf}) : super._() {
    BuiltValueNullFieldError.checkNotNull(oneOf, r'SurveyTitle', 'oneOf');
  }

  @override
  SurveyTitle rebuild(void Function(SurveyTitleBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  SurveyTitleBuilder toBuilder() => new SurveyTitleBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is SurveyTitle && oneOf == other.oneOf;
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
    return (newBuiltValueToStringHelper(r'SurveyTitle')..add('oneOf', oneOf))
        .toString();
  }
}

class SurveyTitleBuilder implements Builder<SurveyTitle, SurveyTitleBuilder> {
  _$SurveyTitle? _$v;

  OneOf? _oneOf;
  OneOf? get oneOf => _$this._oneOf;
  set oneOf(OneOf? oneOf) => _$this._oneOf = oneOf;

  SurveyTitleBuilder() {
    SurveyTitle._defaults(this);
  }

  SurveyTitleBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _oneOf = $v.oneOf;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(SurveyTitle other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$SurveyTitle;
  }

  @override
  void update(void Function(SurveyTitleBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  SurveyTitle build() => _build();

  _$SurveyTitle _build() {
    final _$result = _$v ??
        new _$SurveyTitle._(
            oneOf: BuiltValueNullFieldError.checkNotNull(
                oneOf, r'SurveyTitle', 'oneOf'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
