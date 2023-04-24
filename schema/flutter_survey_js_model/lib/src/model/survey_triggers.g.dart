// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'survey_triggers.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$SurveyTriggers extends SurveyTriggers {
  @override
  final AnyOf anyOf;

  factory _$SurveyTriggers([void Function(SurveyTriggersBuilder)? updates]) =>
      (new SurveyTriggersBuilder()..update(updates))._build();

  _$SurveyTriggers._({required this.anyOf}) : super._() {
    BuiltValueNullFieldError.checkNotNull(anyOf, r'SurveyTriggers', 'anyOf');
  }

  @override
  SurveyTriggers rebuild(void Function(SurveyTriggersBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  SurveyTriggersBuilder toBuilder() =>
      new SurveyTriggersBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is SurveyTriggers && anyOf == other.anyOf;
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
    return (newBuiltValueToStringHelper(r'SurveyTriggers')..add('anyOf', anyOf))
        .toString();
  }
}

class SurveyTriggersBuilder
    implements Builder<SurveyTriggers, SurveyTriggersBuilder> {
  _$SurveyTriggers? _$v;

  AnyOf? _anyOf;
  AnyOf? get anyOf => _$this._anyOf;
  set anyOf(AnyOf? anyOf) => _$this._anyOf = anyOf;

  SurveyTriggersBuilder() {
    SurveyTriggers._defaults(this);
  }

  SurveyTriggersBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _anyOf = $v.anyOf;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(SurveyTriggers other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$SurveyTriggers;
  }

  @override
  void update(void Function(SurveyTriggersBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  SurveyTriggers build() => _build();

  _$SurveyTriggers _build() {
    final _$result = _$v ??
        new _$SurveyTriggers._(
            anyOf: BuiltValueNullFieldError.checkNotNull(
                anyOf, r'SurveyTriggers', 'anyOf'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
