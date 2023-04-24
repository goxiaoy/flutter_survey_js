// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'checkboxbase_all_of.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

abstract class CheckboxbaseAllOfBuilder {
  void replace(CheckboxbaseAllOf other);
  void update(void Function(CheckboxbaseAllOfBuilder) updates);
  CheckboxbaseColCount? get colCount;
  set colCount(CheckboxbaseColCount? colCount);
}

class _$$CheckboxbaseAllOf extends $CheckboxbaseAllOf {
  @override
  final CheckboxbaseColCount? colCount;

  factory _$$CheckboxbaseAllOf(
          [void Function($CheckboxbaseAllOfBuilder)? updates]) =>
      (new $CheckboxbaseAllOfBuilder()..update(updates))._build();

  _$$CheckboxbaseAllOf._({this.colCount}) : super._();

  @override
  $CheckboxbaseAllOf rebuild(
          void Function($CheckboxbaseAllOfBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  $CheckboxbaseAllOfBuilder toBuilder() =>
      new $CheckboxbaseAllOfBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is $CheckboxbaseAllOf && colCount == other.colCount;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, colCount.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'$CheckboxbaseAllOf')
          ..add('colCount', colCount))
        .toString();
  }
}

class $CheckboxbaseAllOfBuilder
    implements
        Builder<$CheckboxbaseAllOf, $CheckboxbaseAllOfBuilder>,
        CheckboxbaseAllOfBuilder {
  _$$CheckboxbaseAllOf? _$v;

  CheckboxbaseColCount? _colCount;
  CheckboxbaseColCount? get colCount => _$this._colCount;
  set colCount(covariant CheckboxbaseColCount? colCount) =>
      _$this._colCount = colCount;

  $CheckboxbaseAllOfBuilder() {
    $CheckboxbaseAllOf._defaults(this);
  }

  $CheckboxbaseAllOfBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _colCount = $v.colCount;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(covariant $CheckboxbaseAllOf other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$$CheckboxbaseAllOf;
  }

  @override
  void update(void Function($CheckboxbaseAllOfBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  $CheckboxbaseAllOf build() => _build();

  _$$CheckboxbaseAllOf _build() {
    final _$result = _$v ?? new _$$CheckboxbaseAllOf._(colCount: colCount);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
