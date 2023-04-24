// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'survey_logo_width.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$SurveyLogoWidth extends SurveyLogoWidth {
  @override
  final OneOf oneOf;

  factory _$SurveyLogoWidth([void Function(SurveyLogoWidthBuilder)? updates]) =>
      (new SurveyLogoWidthBuilder()..update(updates))._build();

  _$SurveyLogoWidth._({required this.oneOf}) : super._() {
    BuiltValueNullFieldError.checkNotNull(oneOf, r'SurveyLogoWidth', 'oneOf');
  }

  @override
  SurveyLogoWidth rebuild(void Function(SurveyLogoWidthBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  SurveyLogoWidthBuilder toBuilder() =>
      new SurveyLogoWidthBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is SurveyLogoWidth && oneOf == other.oneOf;
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
    return (newBuiltValueToStringHelper(r'SurveyLogoWidth')
          ..add('oneOf', oneOf))
        .toString();
  }
}

class SurveyLogoWidthBuilder
    implements Builder<SurveyLogoWidth, SurveyLogoWidthBuilder> {
  _$SurveyLogoWidth? _$v;

  OneOf? _oneOf;
  OneOf? get oneOf => _$this._oneOf;
  set oneOf(OneOf? oneOf) => _$this._oneOf = oneOf;

  SurveyLogoWidthBuilder() {
    SurveyLogoWidth._defaults(this);
  }

  SurveyLogoWidthBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _oneOf = $v.oneOf;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(SurveyLogoWidth other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$SurveyLogoWidth;
  }

  @override
  void update(void Function(SurveyLogoWidthBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  SurveyLogoWidth build() => _build();

  _$SurveyLogoWidth _build() {
    final _$result = _$v ??
        new _$SurveyLogoWidth._(
            oneOf: BuiltValueNullFieldError.checkNotNull(
                oneOf, r'SurveyLogoWidth', 'oneOf'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
