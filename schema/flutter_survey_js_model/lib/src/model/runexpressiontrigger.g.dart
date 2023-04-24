// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'runexpressiontrigger.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$Runexpressiontrigger extends Runexpressiontrigger {
  @override
  final String? setToName;
  @override
  final String? runExpression;
  @override
  final String? name;
  @override
  final String? operator_;
  @override
  final String? value;
  @override
  final String? expression;
  @override
  final String? type;

  factory _$Runexpressiontrigger(
          [void Function(RunexpressiontriggerBuilder)? updates]) =>
      (new RunexpressiontriggerBuilder()..update(updates))._build();

  _$Runexpressiontrigger._(
      {this.setToName,
      this.runExpression,
      this.name,
      this.operator_,
      this.value,
      this.expression,
      this.type})
      : super._();

  @override
  Runexpressiontrigger rebuild(
          void Function(RunexpressiontriggerBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  RunexpressiontriggerBuilder toBuilder() =>
      new RunexpressiontriggerBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Runexpressiontrigger &&
        setToName == other.setToName &&
        runExpression == other.runExpression &&
        name == other.name &&
        operator_ == other.operator_ &&
        value == other.value &&
        expression == other.expression &&
        type == other.type;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, setToName.hashCode);
    _$hash = $jc(_$hash, runExpression.hashCode);
    _$hash = $jc(_$hash, name.hashCode);
    _$hash = $jc(_$hash, operator_.hashCode);
    _$hash = $jc(_$hash, value.hashCode);
    _$hash = $jc(_$hash, expression.hashCode);
    _$hash = $jc(_$hash, type.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'Runexpressiontrigger')
          ..add('setToName', setToName)
          ..add('runExpression', runExpression)
          ..add('name', name)
          ..add('operator_', operator_)
          ..add('value', value)
          ..add('expression', expression)
          ..add('type', type))
        .toString();
  }
}

class RunexpressiontriggerBuilder
    implements
        Builder<Runexpressiontrigger, RunexpressiontriggerBuilder>,
        RunexpressiontriggerAllOfBuilder,
        SurveytriggerBuilder {
  _$Runexpressiontrigger? _$v;

  String? _setToName;
  String? get setToName => _$this._setToName;
  set setToName(covariant String? setToName) => _$this._setToName = setToName;

  String? _runExpression;
  String? get runExpression => _$this._runExpression;
  set runExpression(covariant String? runExpression) =>
      _$this._runExpression = runExpression;

  String? _name;
  String? get name => _$this._name;
  set name(covariant String? name) => _$this._name = name;

  String? _operator_;
  String? get operator_ => _$this._operator_;
  set operator_(covariant String? operator_) => _$this._operator_ = operator_;

  String? _value;
  String? get value => _$this._value;
  set value(covariant String? value) => _$this._value = value;

  String? _expression;
  String? get expression => _$this._expression;
  set expression(covariant String? expression) =>
      _$this._expression = expression;

  String? _type;
  String? get type => _$this._type;
  set type(covariant String? type) => _$this._type = type;

  RunexpressiontriggerBuilder() {
    Runexpressiontrigger._defaults(this);
  }

  RunexpressiontriggerBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _setToName = $v.setToName;
      _runExpression = $v.runExpression;
      _name = $v.name;
      _operator_ = $v.operator_;
      _value = $v.value;
      _expression = $v.expression;
      _type = $v.type;
      _$v = null;
    }
    return this;
  }

  @override
// ignore: override_on_non_overriding_method
  void replace(covariant Runexpressiontrigger other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$Runexpressiontrigger;
  }

  @override
  void update(void Function(RunexpressiontriggerBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  Runexpressiontrigger build() => _build();

  _$Runexpressiontrigger _build() {
    final _$result = _$v ??
        new _$Runexpressiontrigger._(
            setToName: setToName,
            runExpression: runExpression,
            name: name,
            operator_: operator_,
            value: value,
            expression: expression,
            type: type);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
