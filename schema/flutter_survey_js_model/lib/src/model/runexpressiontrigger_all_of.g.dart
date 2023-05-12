// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'runexpressiontrigger_all_of.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

abstract class RunexpressiontriggerAllOfBuilder {
  void replace(RunexpressiontriggerAllOf other);
  void update(void Function(RunexpressiontriggerAllOfBuilder) updates);
  String? get setToName;
  set setToName(String? setToName);

  String? get runExpression;
  set runExpression(String? runExpression);
}

class _$$RunexpressiontriggerAllOf extends $RunexpressiontriggerAllOf {
  @override
  final String? setToName;
  @override
  final String? runExpression;

  factory _$$RunexpressiontriggerAllOf(
          [void Function($RunexpressiontriggerAllOfBuilder)? updates]) =>
      (new $RunexpressiontriggerAllOfBuilder()..update(updates))._build();

  _$$RunexpressiontriggerAllOf._({this.setToName, this.runExpression})
      : super._();

  @override
  $RunexpressiontriggerAllOf rebuild(
          void Function($RunexpressiontriggerAllOfBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  $RunexpressiontriggerAllOfBuilder toBuilder() =>
      new $RunexpressiontriggerAllOfBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is $RunexpressiontriggerAllOf &&
        setToName == other.setToName &&
        runExpression == other.runExpression;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, setToName.hashCode);
    _$hash = $jc(_$hash, runExpression.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'$RunexpressiontriggerAllOf')
          ..add('setToName', setToName)
          ..add('runExpression', runExpression))
        .toString();
  }
}

class $RunexpressiontriggerAllOfBuilder
    implements
        Builder<$RunexpressiontriggerAllOf, $RunexpressiontriggerAllOfBuilder>,
        RunexpressiontriggerAllOfBuilder {
  _$$RunexpressiontriggerAllOf? _$v;

  String? _setToName;
  String? get setToName => _$this._setToName;
  set setToName(covariant String? setToName) => _$this._setToName = setToName;

  String? _runExpression;
  String? get runExpression => _$this._runExpression;
  set runExpression(covariant String? runExpression) =>
      _$this._runExpression = runExpression;

  $RunexpressiontriggerAllOfBuilder() {
    $RunexpressiontriggerAllOf._defaults(this);
  }

  $RunexpressiontriggerAllOfBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _setToName = $v.setToName;
      _runExpression = $v.runExpression;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(covariant $RunexpressiontriggerAllOf other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$$RunexpressiontriggerAllOf;
  }

  @override
  void update(void Function($RunexpressiontriggerAllOfBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  $RunexpressiontriggerAllOf build() => _build();

  _$$RunexpressiontriggerAllOf _build() {
    final _$result = _$v ??
        new _$$RunexpressiontriggerAllOf._(
            setToName: setToName, runExpression: runExpression);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
