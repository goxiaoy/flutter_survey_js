// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'trigger.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

abstract class TriggerBuilder {
  void replace(Trigger other);
  void update(void Function(TriggerBuilder) updates);
  String? get operator_;
  set operator_(String? operator_);

  String? get value;
  set value(String? value);

  String? get expression;
  set expression(String? expression);
}

class _$$Trigger extends $Trigger {
  @override
  final String? operator_;
  @override
  final String? value;
  @override
  final String? expression;

  factory _$$Trigger([void Function($TriggerBuilder)? updates]) =>
      (new $TriggerBuilder()..update(updates))._build();

  _$$Trigger._({this.operator_, this.value, this.expression}) : super._();

  @override
  $Trigger rebuild(void Function($TriggerBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  $TriggerBuilder toBuilder() => new $TriggerBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is $Trigger &&
        operator_ == other.operator_ &&
        value == other.value &&
        expression == other.expression;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, operator_.hashCode);
    _$hash = $jc(_$hash, value.hashCode);
    _$hash = $jc(_$hash, expression.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'$Trigger')
          ..add('operator_', operator_)
          ..add('value', value)
          ..add('expression', expression))
        .toString();
  }
}

class $TriggerBuilder
    implements Builder<$Trigger, $TriggerBuilder>, TriggerBuilder {
  _$$Trigger? _$v;

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

  $TriggerBuilder() {
    $Trigger._defaults(this);
  }

  $TriggerBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _operator_ = $v.operator_;
      _value = $v.value;
      _expression = $v.expression;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(covariant $Trigger other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$$Trigger;
  }

  @override
  void update(void Function($TriggerBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  $Trigger build() => _build();

  _$$Trigger _build() {
    final _$result = _$v ??
        new _$$Trigger._(
            operator_: operator_, value: value, expression: expression);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
