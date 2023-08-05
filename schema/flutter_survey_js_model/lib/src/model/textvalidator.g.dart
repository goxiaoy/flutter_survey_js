// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'textvalidator.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$Textvalidator extends Textvalidator {
  @override
  final bool? allowDigits;
  @override
  final num? minLength;
  @override
  final num? maxLength;
  @override
  final SurveyTitle? text;
  @override
  final String? type;

  factory _$Textvalidator([void Function(TextvalidatorBuilder)? updates]) =>
      (new TextvalidatorBuilder()..update(updates))._build();

  _$Textvalidator._(
      {this.allowDigits, this.minLength, this.maxLength, this.text, this.type})
      : super._();

  @override
  Textvalidator rebuild(void Function(TextvalidatorBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  TextvalidatorBuilder toBuilder() => new TextvalidatorBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Textvalidator &&
        allowDigits == other.allowDigits &&
        minLength == other.minLength &&
        maxLength == other.maxLength &&
        text == other.text &&
        type == other.type;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, allowDigits.hashCode);
    _$hash = $jc(_$hash, minLength.hashCode);
    _$hash = $jc(_$hash, maxLength.hashCode);
    _$hash = $jc(_$hash, text.hashCode);
    _$hash = $jc(_$hash, type.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'Textvalidator')
          ..add('allowDigits', allowDigits)
          ..add('minLength', minLength)
          ..add('maxLength', maxLength)
          ..add('text', text)
          ..add('type', type))
        .toString();
  }
}

class TextvalidatorBuilder
    implements
        Builder<Textvalidator, TextvalidatorBuilder>,
        SurveyvalidatorBuilder {
  _$Textvalidator? _$v;

  bool? _allowDigits;
  bool? get allowDigits => _$this._allowDigits;
  set allowDigits(covariant bool? allowDigits) =>
      _$this._allowDigits = allowDigits;

  num? _minLength;
  num? get minLength => _$this._minLength;
  set minLength(covariant num? minLength) => _$this._minLength = minLength;

  num? _maxLength;
  num? get maxLength => _$this._maxLength;
  set maxLength(covariant num? maxLength) => _$this._maxLength = maxLength;

  SurveyTitleBuilder? _text;
  SurveyTitleBuilder get text => _$this._text ??= new SurveyTitleBuilder();
  set text(covariant SurveyTitleBuilder? text) => _$this._text = text;

  String? _type;
  String? get type => _$this._type;
  set type(covariant String? type) => _$this._type = type;

  TextvalidatorBuilder() {
    Textvalidator._defaults(this);
  }

  TextvalidatorBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _allowDigits = $v.allowDigits;
      _minLength = $v.minLength;
      _maxLength = $v.maxLength;
      _text = $v.text?.toBuilder();
      _type = $v.type;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(covariant Textvalidator other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$Textvalidator;
  }

  @override
  void update(void Function(TextvalidatorBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  Textvalidator build() => _build();

  _$Textvalidator _build() {
    _$Textvalidator _$result;
    try {
      _$result = _$v ??
          new _$Textvalidator._(
              allowDigits: allowDigits,
              minLength: minLength,
              maxLength: maxLength,
              text: _text?.build(),
              type: type);
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'text';
        _text?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'Textvalidator', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
