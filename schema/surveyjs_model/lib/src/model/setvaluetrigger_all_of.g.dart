// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'setvaluetrigger_all_of.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

abstract class SetvaluetriggerAllOfBuilder {
  void replace(SetvaluetriggerAllOf other);
  void update(void Function(SetvaluetriggerAllOfBuilder) updates);
  String? get setToName;
  set setToName(String? setToName);

  String? get setValue;
  set setValue(String? setValue);

  bool? get isVariable;
  set isVariable(bool? isVariable);
}

class _$$SetvaluetriggerAllOf extends $SetvaluetriggerAllOf {
  @override
  final String? setToName;
  @override
  final String? setValue;
  @override
  final bool? isVariable;

  factory _$$SetvaluetriggerAllOf(
          [void Function($SetvaluetriggerAllOfBuilder)? updates]) =>
      (new $SetvaluetriggerAllOfBuilder()..update(updates))._build();

  _$$SetvaluetriggerAllOf._({this.setToName, this.setValue, this.isVariable})
      : super._();

  @override
  $SetvaluetriggerAllOf rebuild(
          void Function($SetvaluetriggerAllOfBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  $SetvaluetriggerAllOfBuilder toBuilder() =>
      new $SetvaluetriggerAllOfBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is $SetvaluetriggerAllOf &&
        setToName == other.setToName &&
        setValue == other.setValue &&
        isVariable == other.isVariable;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, setToName.hashCode);
    _$hash = $jc(_$hash, setValue.hashCode);
    _$hash = $jc(_$hash, isVariable.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'$SetvaluetriggerAllOf')
          ..add('setToName', setToName)
          ..add('setValue', setValue)
          ..add('isVariable', isVariable))
        .toString();
  }
}

class $SetvaluetriggerAllOfBuilder
    implements
        Builder<$SetvaluetriggerAllOf, $SetvaluetriggerAllOfBuilder>,
        SetvaluetriggerAllOfBuilder {
  _$$SetvaluetriggerAllOf? _$v;

  String? _setToName;
  String? get setToName => _$this._setToName;
  set setToName(covariant String? setToName) => _$this._setToName = setToName;

  String? _setValue;
  String? get setValue => _$this._setValue;
  set setValue(covariant String? setValue) => _$this._setValue = setValue;

  bool? _isVariable;
  bool? get isVariable => _$this._isVariable;
  set isVariable(covariant bool? isVariable) => _$this._isVariable = isVariable;

  $SetvaluetriggerAllOfBuilder() {
    $SetvaluetriggerAllOf._defaults(this);
  }

  $SetvaluetriggerAllOfBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _setToName = $v.setToName;
      _setValue = $v.setValue;
      _isVariable = $v.isVariable;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(covariant $SetvaluetriggerAllOf other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$$SetvaluetriggerAllOf;
  }

  @override
  void update(void Function($SetvaluetriggerAllOfBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  $SetvaluetriggerAllOf build() => _build();

  _$$SetvaluetriggerAllOf _build() {
    final _$result = _$v ??
        new _$$SetvaluetriggerAllOf._(
            setToName: setToName, setValue: setValue, isVariable: isVariable);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
