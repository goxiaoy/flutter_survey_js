// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'numericvalidator_all_of.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

abstract class NumericvalidatorAllOfBuilder {
  void replace(NumericvalidatorAllOf other);
  void update(void Function(NumericvalidatorAllOfBuilder) updates);
  num? get minValue;
  set minValue(num? minValue);

  num? get maxValue;
  set maxValue(num? maxValue);
}

class _$$NumericvalidatorAllOf extends $NumericvalidatorAllOf {
  @override
  final num? minValue;
  @override
  final num? maxValue;

  factory _$$NumericvalidatorAllOf(
          [void Function($NumericvalidatorAllOfBuilder)? updates]) =>
      (new $NumericvalidatorAllOfBuilder()..update(updates))._build();

  _$$NumericvalidatorAllOf._({this.minValue, this.maxValue}) : super._();

  @override
  $NumericvalidatorAllOf rebuild(
          void Function($NumericvalidatorAllOfBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  $NumericvalidatorAllOfBuilder toBuilder() =>
      new $NumericvalidatorAllOfBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is $NumericvalidatorAllOf &&
        minValue == other.minValue &&
        maxValue == other.maxValue;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, minValue.hashCode);
    _$hash = $jc(_$hash, maxValue.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'$NumericvalidatorAllOf')
          ..add('minValue', minValue)
          ..add('maxValue', maxValue))
        .toString();
  }
}

class $NumericvalidatorAllOfBuilder
    implements
        Builder<$NumericvalidatorAllOf, $NumericvalidatorAllOfBuilder>,
        NumericvalidatorAllOfBuilder {
  _$$NumericvalidatorAllOf? _$v;

  num? _minValue;
  num? get minValue => _$this._minValue;
  set minValue(covariant num? minValue) => _$this._minValue = minValue;

  num? _maxValue;
  num? get maxValue => _$this._maxValue;
  set maxValue(covariant num? maxValue) => _$this._maxValue = maxValue;

  $NumericvalidatorAllOfBuilder() {
    $NumericvalidatorAllOf._defaults(this);
  }

  $NumericvalidatorAllOfBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _minValue = $v.minValue;
      _maxValue = $v.maxValue;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(covariant $NumericvalidatorAllOf other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$$NumericvalidatorAllOf;
  }

  @override
  void update(void Function($NumericvalidatorAllOfBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  $NumericvalidatorAllOf build() => _build();

  _$$NumericvalidatorAllOf _build() {
    final _$result = _$v ??
        new _$$NumericvalidatorAllOf._(minValue: minValue, maxValue: maxValue);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
