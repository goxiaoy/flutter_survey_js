// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'survey_triggers_inner.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$SurveyTriggersInner extends SurveyTriggersInner {
  @override
  final AnyOf anyOf;

  factory _$SurveyTriggersInner(
          [void Function(SurveyTriggersInnerBuilder)? updates]) =>
      (new SurveyTriggersInnerBuilder()..update(updates))._build();

  _$SurveyTriggersInner._({required this.anyOf}) : super._() {
    BuiltValueNullFieldError.checkNotNull(
        anyOf, r'SurveyTriggersInner', 'anyOf');
  }

  @override
  SurveyTriggersInner rebuild(
          void Function(SurveyTriggersInnerBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  SurveyTriggersInnerBuilder toBuilder() =>
      new SurveyTriggersInnerBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is SurveyTriggersInner && anyOf == other.anyOf;
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
    return (newBuiltValueToStringHelper(r'SurveyTriggersInner')
          ..add('anyOf', anyOf))
        .toString();
  }
}

class SurveyTriggersInnerBuilder
    implements Builder<SurveyTriggersInner, SurveyTriggersInnerBuilder> {
  _$SurveyTriggersInner? _$v;

  AnyOf? _anyOf;
  AnyOf? get anyOf => _$this._anyOf;
  set anyOf(AnyOf? anyOf) => _$this._anyOf = anyOf;

  SurveyTriggersInnerBuilder() {
    SurveyTriggersInner._defaults(this);
  }

  SurveyTriggersInnerBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _anyOf = $v.anyOf;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(SurveyTriggersInner other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$SurveyTriggersInner;
  }

  @override
  void update(void Function(SurveyTriggersInnerBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  SurveyTriggersInner build() => _build();

  _$SurveyTriggersInner _build() {
    final _$result = _$v ??
        new _$SurveyTriggersInner._(
            anyOf: BuiltValueNullFieldError.checkNotNull(
                anyOf, r'SurveyTriggersInner', 'anyOf'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
