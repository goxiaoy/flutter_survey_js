// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'textvalidator_all_of.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

abstract class TextvalidatorAllOfBuilder {
  void replace(TextvalidatorAllOf other);
  void update(void Function(TextvalidatorAllOfBuilder) updates);
  num? get minLength;
  set minLength(num? minLength);

  num? get maxLength;
  set maxLength(num? maxLength);

  bool? get allowDigits;
  set allowDigits(bool? allowDigits);
}

class _$$TextvalidatorAllOf extends $TextvalidatorAllOf {
  @override
  final num? minLength;
  @override
  final num? maxLength;
  @override
  final bool? allowDigits;

  factory _$$TextvalidatorAllOf(
          [void Function($TextvalidatorAllOfBuilder)? updates]) =>
      (new $TextvalidatorAllOfBuilder()..update(updates))._build();

  _$$TextvalidatorAllOf._({this.minLength, this.maxLength, this.allowDigits})
      : super._();

  @override
  $TextvalidatorAllOf rebuild(
          void Function($TextvalidatorAllOfBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  $TextvalidatorAllOfBuilder toBuilder() =>
      new $TextvalidatorAllOfBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is $TextvalidatorAllOf &&
        minLength == other.minLength &&
        maxLength == other.maxLength &&
        allowDigits == other.allowDigits;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, minLength.hashCode);
    _$hash = $jc(_$hash, maxLength.hashCode);
    _$hash = $jc(_$hash, allowDigits.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'$TextvalidatorAllOf')
          ..add('minLength', minLength)
          ..add('maxLength', maxLength)
          ..add('allowDigits', allowDigits))
        .toString();
  }
}

class $TextvalidatorAllOfBuilder
    implements
        Builder<$TextvalidatorAllOf, $TextvalidatorAllOfBuilder>,
        TextvalidatorAllOfBuilder {
  _$$TextvalidatorAllOf? _$v;

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

  $TextvalidatorAllOfBuilder() {
    $TextvalidatorAllOf._defaults(this);
  }

  $TextvalidatorAllOfBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _minLength = $v.minLength;
      _maxLength = $v.maxLength;
      _allowDigits = $v.allowDigits;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(covariant $TextvalidatorAllOf other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$$TextvalidatorAllOf;
  }

  @override
  void update(void Function($TextvalidatorAllOfBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  $TextvalidatorAllOf build() => _build();

  _$$TextvalidatorAllOf _build() {
    final _$result = _$v ??
        new _$$TextvalidatorAllOf._(
            minLength: minLength,
            maxLength: maxLength,
            allowDigits: allowDigits);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
