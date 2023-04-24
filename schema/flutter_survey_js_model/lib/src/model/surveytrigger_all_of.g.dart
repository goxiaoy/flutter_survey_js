// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'surveytrigger_all_of.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

abstract class SurveytriggerAllOfBuilder {
  void replace(SurveytriggerAllOf other);
  void update(void Function(SurveytriggerAllOfBuilder) updates);
  String? get name;
  set name(String? name);
}

class _$$SurveytriggerAllOf extends $SurveytriggerAllOf {
  @override
  final String? name;

  factory _$$SurveytriggerAllOf(
          [void Function($SurveytriggerAllOfBuilder)? updates]) =>
      (new $SurveytriggerAllOfBuilder()..update(updates))._build();

  _$$SurveytriggerAllOf._({this.name}) : super._();

  @override
  $SurveytriggerAllOf rebuild(
          void Function($SurveytriggerAllOfBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  $SurveytriggerAllOfBuilder toBuilder() =>
      new $SurveytriggerAllOfBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is $SurveytriggerAllOf && name == other.name;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, name.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'$SurveytriggerAllOf')
          ..add('name', name))
        .toString();
  }
}

class $SurveytriggerAllOfBuilder
    implements
        Builder<$SurveytriggerAllOf, $SurveytriggerAllOfBuilder>,
        SurveytriggerAllOfBuilder {
  _$$SurveytriggerAllOf? _$v;

  String? _name;
  String? get name => _$this._name;
  set name(covariant String? name) => _$this._name = name;

  $SurveytriggerAllOfBuilder() {
    $SurveytriggerAllOf._defaults(this);
  }

  $SurveytriggerAllOfBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _name = $v.name;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(covariant $SurveytriggerAllOf other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$$SurveytriggerAllOf;
  }

  @override
  void update(void Function($SurveytriggerAllOfBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  $SurveytriggerAllOf build() => _build();

  _$$SurveytriggerAllOf _build() {
    final _$result = _$v ?? new _$$SurveytriggerAllOf._(name: name);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
