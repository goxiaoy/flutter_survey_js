// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'answercountvalidator.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$Answercountvalidator extends Answercountvalidator {
  @override
  final num? minCount;
  @override
  final num? maxCount;
  @override
  final SurveyTitle? text;
  @override
  final String? type;

  factory _$Answercountvalidator(
          [void Function(AnswercountvalidatorBuilder)? updates]) =>
      (new AnswercountvalidatorBuilder()..update(updates))._build();

  _$Answercountvalidator._({this.minCount, this.maxCount, this.text, this.type})
      : super._();

  @override
  Answercountvalidator rebuild(
          void Function(AnswercountvalidatorBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  AnswercountvalidatorBuilder toBuilder() =>
      new AnswercountvalidatorBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Answercountvalidator &&
        minCount == other.minCount &&
        maxCount == other.maxCount &&
        text == other.text &&
        type == other.type;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, minCount.hashCode);
    _$hash = $jc(_$hash, maxCount.hashCode);
    _$hash = $jc(_$hash, text.hashCode);
    _$hash = $jc(_$hash, type.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'Answercountvalidator')
          ..add('minCount', minCount)
          ..add('maxCount', maxCount)
          ..add('text', text)
          ..add('type', type))
        .toString();
  }
}

class AnswercountvalidatorBuilder
    implements
        Builder<Answercountvalidator, AnswercountvalidatorBuilder>,
        SurveyvalidatorBuilder {
  _$Answercountvalidator? _$v;

  num? _minCount;
  num? get minCount => _$this._minCount;
  set minCount(covariant num? minCount) => _$this._minCount = minCount;

  num? _maxCount;
  num? get maxCount => _$this._maxCount;
  set maxCount(covariant num? maxCount) => _$this._maxCount = maxCount;

  SurveyTitleBuilder? _text;
  SurveyTitleBuilder get text => _$this._text ??= new SurveyTitleBuilder();
  set text(covariant SurveyTitleBuilder? text) => _$this._text = text;

  String? _type;
  String? get type => _$this._type;
  set type(covariant String? type) => _$this._type = type;

  AnswercountvalidatorBuilder() {
    Answercountvalidator._defaults(this);
  }

  AnswercountvalidatorBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _minCount = $v.minCount;
      _maxCount = $v.maxCount;
      _text = $v.text?.toBuilder();
      _type = $v.type;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(covariant Answercountvalidator other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$Answercountvalidator;
  }

  @override
  void update(void Function(AnswercountvalidatorBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  Answercountvalidator build() => _build();

  _$Answercountvalidator _build() {
    _$Answercountvalidator _$result;
    try {
      _$result = _$v ??
          new _$Answercountvalidator._(
              minCount: minCount,
              maxCount: maxCount,
              text: _text?.build(),
              type: type);
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'text';
        _text?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'Answercountvalidator', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
