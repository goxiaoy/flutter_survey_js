// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'surveytrigger.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

abstract class SurveytriggerBuilder
    implements SurveytriggerAllOfBuilder, TriggerBuilder {
  void replace(covariant Surveytrigger other);
  void update(void Function(SurveytriggerBuilder) updates);
  String? get name;
  set name(covariant String? name);

  String? get operator_;
  set operator_(covariant String? operator_);

  String? get value;
  set value(covariant String? value);

  String? get expression;
  set expression(covariant String? expression);

  String? get type;
  set type(covariant String? type);
}

class _$$Surveytrigger extends $Surveytrigger {
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

  factory _$$Surveytrigger([void Function($SurveytriggerBuilder)? updates]) =>
      (new $SurveytriggerBuilder()..update(updates))._build();

  _$$Surveytrigger._(
      {this.name, this.operator_, this.value, this.expression, this.type})
      : super._();

  @override
  $Surveytrigger rebuild(void Function($SurveytriggerBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  $SurveytriggerBuilder toBuilder() =>
      new $SurveytriggerBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is $Surveytrigger &&
        name == other.name &&
        operator_ == other.operator_ &&
        value == other.value &&
        expression == other.expression &&
        type == other.type;
  }

  @override
  int get hashCode {
    var _$hash = 0;
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
    return (newBuiltValueToStringHelper(r'$Surveytrigger')
          ..add('name', name)
          ..add('operator_', operator_)
          ..add('value', value)
          ..add('expression', expression)
          ..add('type', type))
        .toString();
  }
}

class $SurveytriggerBuilder
    implements
        Builder<$Surveytrigger, $SurveytriggerBuilder>,
        SurveytriggerBuilder {
  _$$Surveytrigger? _$v;

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

  $SurveytriggerBuilder() {
    $Surveytrigger._defaults(this);
  }

  $SurveytriggerBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
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
  void replace(covariant $Surveytrigger other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$$Surveytrigger;
  }

  @override
  void update(void Function($SurveytriggerBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  $Surveytrigger build() => _build();

  _$$Surveytrigger _build() {
    final _$result = _$v ??
        new _$$Surveytrigger._(
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
