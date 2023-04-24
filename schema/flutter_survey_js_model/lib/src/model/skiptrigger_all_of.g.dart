// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'skiptrigger_all_of.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

abstract class SkiptriggerAllOfBuilder {
  void replace(SkiptriggerAllOf other);
  void update(void Function(SkiptriggerAllOfBuilder) updates);
  String? get gotoName;
  set gotoName(String? gotoName);
}

class _$$SkiptriggerAllOf extends $SkiptriggerAllOf {
  @override
  final String? gotoName;

  factory _$$SkiptriggerAllOf(
          [void Function($SkiptriggerAllOfBuilder)? updates]) =>
      (new $SkiptriggerAllOfBuilder()..update(updates))._build();

  _$$SkiptriggerAllOf._({this.gotoName}) : super._();

  @override
  $SkiptriggerAllOf rebuild(void Function($SkiptriggerAllOfBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  $SkiptriggerAllOfBuilder toBuilder() =>
      new $SkiptriggerAllOfBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is $SkiptriggerAllOf && gotoName == other.gotoName;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, gotoName.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'$SkiptriggerAllOf')
          ..add('gotoName', gotoName))
        .toString();
  }
}

class $SkiptriggerAllOfBuilder
    implements
        Builder<$SkiptriggerAllOf, $SkiptriggerAllOfBuilder>,
        SkiptriggerAllOfBuilder {
  _$$SkiptriggerAllOf? _$v;

  String? _gotoName;
  String? get gotoName => _$this._gotoName;
  set gotoName(covariant String? gotoName) => _$this._gotoName = gotoName;

  $SkiptriggerAllOfBuilder() {
    $SkiptriggerAllOf._defaults(this);
  }

  $SkiptriggerAllOfBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _gotoName = $v.gotoName;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(covariant $SkiptriggerAllOf other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$$SkiptriggerAllOf;
  }

  @override
  void update(void Function($SkiptriggerAllOfBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  $SkiptriggerAllOf build() => _build();

  _$$SkiptriggerAllOf _build() {
    final _$result = _$v ?? new _$$SkiptriggerAllOf._(gotoName: gotoName);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
