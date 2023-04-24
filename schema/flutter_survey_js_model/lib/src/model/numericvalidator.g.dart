// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'numericvalidator.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$Numericvalidator extends Numericvalidator {
  @override
  final num? minValue;
  @override
  final num? maxValue;
  @override
  final String? text;
  @override
  final String? type;

  factory _$Numericvalidator(
          [void Function(NumericvalidatorBuilder)? updates]) =>
      (new NumericvalidatorBuilder()..update(updates))._build();

  _$Numericvalidator._({this.minValue, this.maxValue, this.text, this.type})
      : super._();

  @override
  Numericvalidator rebuild(void Function(NumericvalidatorBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  NumericvalidatorBuilder toBuilder() =>
      new NumericvalidatorBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Numericvalidator &&
        minValue == other.minValue &&
        maxValue == other.maxValue &&
        text == other.text &&
        type == other.type;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, minValue.hashCode);
    _$hash = $jc(_$hash, maxValue.hashCode);
    _$hash = $jc(_$hash, text.hashCode);
    _$hash = $jc(_$hash, type.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'Numericvalidator')
          ..add('minValue', minValue)
          ..add('maxValue', maxValue)
          ..add('text', text)
          ..add('type', type))
        .toString();
  }
}

class NumericvalidatorBuilder
    implements
        Builder<Numericvalidator, NumericvalidatorBuilder>,
        NumericvalidatorAllOfBuilder,
        SurveyvalidatorBuilder {
  _$Numericvalidator? _$v;

  num? _minValue;
  num? get minValue => _$this._minValue;
  set minValue(covariant num? minValue) => _$this._minValue = minValue;

  num? _maxValue;
  num? get maxValue => _$this._maxValue;
  set maxValue(covariant num? maxValue) => _$this._maxValue = maxValue;

  String? _text;
  String? get text => _$this._text;
  set text(covariant String? text) => _$this._text = text;

  String? _type;
  String? get type => _$this._type;
  set type(covariant String? type) => _$this._type = type;

  NumericvalidatorBuilder() {
    Numericvalidator._defaults(this);
  }

  NumericvalidatorBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _minValue = $v.minValue;
      _maxValue = $v.maxValue;
      _text = $v.text;
      _type = $v.type;
      _$v = null;
    }
    return this;
  }

  @override
// ignore: override_on_non_overriding_method
  void replace(covariant Numericvalidator other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$Numericvalidator;
  }

  @override
  void update(void Function(NumericvalidatorBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  Numericvalidator build() => _build();

  _$Numericvalidator _build() {
    final _$result = _$v ??
        new _$Numericvalidator._(
            minValue: minValue, maxValue: maxValue, text: text, type: type);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
