// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'setvaluetrigger.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$Setvaluetrigger extends Setvaluetrigger {
  @override
  final String setToName;
  @override
  final String? setValue;
  @override
  final bool? isVariable;
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

  factory _$Setvaluetrigger([void Function(SetvaluetriggerBuilder)? updates]) =>
      (new SetvaluetriggerBuilder()..update(updates))._build();

  _$Setvaluetrigger._(
      {required this.setToName,
      this.setValue,
      this.isVariable,
      this.name,
      this.operator_,
      this.value,
      this.expression,
      this.type})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        setToName, r'Setvaluetrigger', 'setToName');
  }

  @override
  Setvaluetrigger rebuild(void Function(SetvaluetriggerBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  SetvaluetriggerBuilder toBuilder() =>
      new SetvaluetriggerBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Setvaluetrigger &&
        setToName == other.setToName &&
        setValue == other.setValue &&
        isVariable == other.isVariable &&
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
    _$hash = $jc(_$hash, setValue.hashCode);
    _$hash = $jc(_$hash, isVariable.hashCode);
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
    return (newBuiltValueToStringHelper(r'Setvaluetrigger')
          ..add('setToName', setToName)
          ..add('setValue', setValue)
          ..add('isVariable', isVariable)
          ..add('name', name)
          ..add('operator_', operator_)
          ..add('value', value)
          ..add('expression', expression)
          ..add('type', type))
        .toString();
  }
}

class SetvaluetriggerBuilder
    implements
        Builder<Setvaluetrigger, SetvaluetriggerBuilder>,
        SurveytriggerBuilder {
  _$Setvaluetrigger? _$v;

  String? _setToName;
  String? get setToName => _$this._setToName;
  set setToName(covariant String? setToName) => _$this._setToName = setToName;

  String? _setValue;
  String? get setValue => _$this._setValue;
  set setValue(covariant String? setValue) => _$this._setValue = setValue;

  bool? _isVariable;
  bool? get isVariable => _$this._isVariable;
  set isVariable(covariant bool? isVariable) => _$this._isVariable = isVariable;

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

  SetvaluetriggerBuilder() {
    Setvaluetrigger._defaults(this);
  }

  SetvaluetriggerBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _setToName = $v.setToName;
      _setValue = $v.setValue;
      _isVariable = $v.isVariable;
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
  void replace(covariant Setvaluetrigger other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$Setvaluetrigger;
  }

  @override
  void update(void Function(SetvaluetriggerBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  Setvaluetrigger build() => _build();

  _$Setvaluetrigger _build() {
    final _$result = _$v ??
        new _$Setvaluetrigger._(
            setToName: BuiltValueNullFieldError.checkNotNull(
                setToName, r'Setvaluetrigger', 'setToName'),
            setValue: setValue,
            isVariable: isVariable,
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
