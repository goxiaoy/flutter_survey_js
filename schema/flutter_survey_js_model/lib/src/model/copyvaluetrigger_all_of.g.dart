// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'copyvaluetrigger_all_of.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

abstract class CopyvaluetriggerAllOfBuilder {
  void replace(CopyvaluetriggerAllOf other);
  void update(void Function(CopyvaluetriggerAllOfBuilder) updates);
  String? get fromName;
  set fromName(String? fromName);

  String? get setToName;
  set setToName(String? setToName);
}

class _$$CopyvaluetriggerAllOf extends $CopyvaluetriggerAllOf {
  @override
  final String? fromName;
  @override
  final String? setToName;

  factory _$$CopyvaluetriggerAllOf(
          [void Function($CopyvaluetriggerAllOfBuilder)? updates]) =>
      (new $CopyvaluetriggerAllOfBuilder()..update(updates))._build();

  _$$CopyvaluetriggerAllOf._({this.fromName, this.setToName}) : super._();

  @override
  $CopyvaluetriggerAllOf rebuild(
          void Function($CopyvaluetriggerAllOfBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  $CopyvaluetriggerAllOfBuilder toBuilder() =>
      new $CopyvaluetriggerAllOfBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is $CopyvaluetriggerAllOf &&
        fromName == other.fromName &&
        setToName == other.setToName;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, fromName.hashCode);
    _$hash = $jc(_$hash, setToName.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'$CopyvaluetriggerAllOf')
          ..add('fromName', fromName)
          ..add('setToName', setToName))
        .toString();
  }
}

class $CopyvaluetriggerAllOfBuilder
    implements
        Builder<$CopyvaluetriggerAllOf, $CopyvaluetriggerAllOfBuilder>,
        CopyvaluetriggerAllOfBuilder {
  _$$CopyvaluetriggerAllOf? _$v;

  String? _fromName;
  String? get fromName => _$this._fromName;
  set fromName(covariant String? fromName) => _$this._fromName = fromName;

  String? _setToName;
  String? get setToName => _$this._setToName;
  set setToName(covariant String? setToName) => _$this._setToName = setToName;

  $CopyvaluetriggerAllOfBuilder() {
    $CopyvaluetriggerAllOf._defaults(this);
  }

  $CopyvaluetriggerAllOfBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _fromName = $v.fromName;
      _setToName = $v.setToName;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(covariant $CopyvaluetriggerAllOf other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$$CopyvaluetriggerAllOf;
  }

  @override
  void update(void Function($CopyvaluetriggerAllOfBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  $CopyvaluetriggerAllOf build() => _build();

  _$$CopyvaluetriggerAllOf _build() {
    final _$result = _$v ??
        new _$$CopyvaluetriggerAllOf._(
            fromName: fromName, setToName: setToName);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
