// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'textvalidator.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$Textvalidator extends Textvalidator {
  @override
  final String? text;
  @override
  final String? type;
  @override
  final num? minLength;
  @override
  final num? maxLength;
  @override
  final bool? allowDigits;

  factory _$Textvalidator([void Function(TextvalidatorBuilder)? updates]) =>
      (new TextvalidatorBuilder()..update(updates))._build();

  _$Textvalidator._(
      {this.text, this.type, this.minLength, this.maxLength, this.allowDigits})
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
        text == other.text &&
        type == other.type &&
        minLength == other.minLength &&
        maxLength == other.maxLength &&
        allowDigits == other.allowDigits;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, text.hashCode);
    _$hash = $jc(_$hash, type.hashCode);
    _$hash = $jc(_$hash, minLength.hashCode);
    _$hash = $jc(_$hash, maxLength.hashCode);
    _$hash = $jc(_$hash, allowDigits.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'Textvalidator')
          ..add('text', text)
          ..add('type', type)
          ..add('minLength', minLength)
          ..add('maxLength', maxLength)
          ..add('allowDigits', allowDigits))
        .toString();
  }
}

class TextvalidatorBuilder
    implements
        Builder<Textvalidator, TextvalidatorBuilder>,
        SurveyvalidatorBuilder,
        TextvalidatorAllOfBuilder {
  _$Textvalidator? _$v;

  String? _text;
  String? get text => _$this._text;
  set text(covariant String? text) => _$this._text = text;

  String? _type;
  String? get type => _$this._type;
  set type(covariant String? type) => _$this._type = type;

  num? _minLength;
  num? get minLength => _$this._minLength;
  set minLength(covariant num? minLength) => _$this._minLength = minLength;

  num? _maxLength;
  num? get maxLength => _$this._maxLength;
  set maxLength(covariant num? maxLength) => _$this._maxLength = maxLength;

  bool? _allowDigits;
  bool? get allowDigits => _$this._allowDigits;
  set allowDigits(covariant bool? allowDigits) =>
      _$this._allowDigits = allowDigits;

  TextvalidatorBuilder() {
    Textvalidator._defaults(this);
  }

  TextvalidatorBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _text = $v.text;
      _type = $v.type;
      _minLength = $v.minLength;
      _maxLength = $v.maxLength;
      _allowDigits = $v.allowDigits;
      _$v = null;
    }
    return this;
  }

  @override
// ignore: override_on_non_overriding_method
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
    final _$result = _$v ??
        new _$Textvalidator._(
            text: text,
            type: type,
            minLength: minLength,
            maxLength: maxLength,
            allowDigits: allowDigits);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
