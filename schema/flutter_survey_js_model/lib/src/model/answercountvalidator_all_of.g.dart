// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'answercountvalidator_all_of.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

abstract class AnswercountvalidatorAllOfBuilder {
  void replace(AnswercountvalidatorAllOf other);
  void update(void Function(AnswercountvalidatorAllOfBuilder) updates);
  num? get minCount;
  set minCount(num? minCount);

  num? get maxCount;
  set maxCount(num? maxCount);
}

class _$$AnswercountvalidatorAllOf extends $AnswercountvalidatorAllOf {
  @override
  final num? minCount;
  @override
  final num? maxCount;

  factory _$$AnswercountvalidatorAllOf(
          [void Function($AnswercountvalidatorAllOfBuilder)? updates]) =>
      (new $AnswercountvalidatorAllOfBuilder()..update(updates))._build();

  _$$AnswercountvalidatorAllOf._({this.minCount, this.maxCount}) : super._();

  @override
  $AnswercountvalidatorAllOf rebuild(
          void Function($AnswercountvalidatorAllOfBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  $AnswercountvalidatorAllOfBuilder toBuilder() =>
      new $AnswercountvalidatorAllOfBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is $AnswercountvalidatorAllOf &&
        minCount == other.minCount &&
        maxCount == other.maxCount;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, minCount.hashCode);
    _$hash = $jc(_$hash, maxCount.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'$AnswercountvalidatorAllOf')
          ..add('minCount', minCount)
          ..add('maxCount', maxCount))
        .toString();
  }
}

class $AnswercountvalidatorAllOfBuilder
    implements
        Builder<$AnswercountvalidatorAllOf, $AnswercountvalidatorAllOfBuilder>,
        AnswercountvalidatorAllOfBuilder {
  _$$AnswercountvalidatorAllOf? _$v;

  num? _minCount;
  num? get minCount => _$this._minCount;
  set minCount(covariant num? minCount) => _$this._minCount = minCount;

  num? _maxCount;
  num? get maxCount => _$this._maxCount;
  set maxCount(covariant num? maxCount) => _$this._maxCount = maxCount;

  $AnswercountvalidatorAllOfBuilder() {
    $AnswercountvalidatorAllOf._defaults(this);
  }

  $AnswercountvalidatorAllOfBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _minCount = $v.minCount;
      _maxCount = $v.maxCount;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(covariant $AnswercountvalidatorAllOf other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$$AnswercountvalidatorAllOf;
  }

  @override
  void update(void Function($AnswercountvalidatorAllOfBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  $AnswercountvalidatorAllOf build() => _build();

  _$$AnswercountvalidatorAllOf _build() {
    final _$result = _$v ??
        new _$$AnswercountvalidatorAllOf._(
            minCount: minCount, maxCount: maxCount);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
