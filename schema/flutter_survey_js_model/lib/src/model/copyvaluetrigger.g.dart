// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'copyvaluetrigger.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$Copyvaluetrigger extends Copyvaluetrigger {
  @override
  final String setToName;
  @override
  final String fromName;
  @override
  final bool? copyDisplayValue;
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

  factory _$Copyvaluetrigger(
          [void Function(CopyvaluetriggerBuilder)? updates]) =>
      (new CopyvaluetriggerBuilder()..update(updates))._build();

  _$Copyvaluetrigger._(
      {required this.setToName,
      required this.fromName,
      this.copyDisplayValue,
      this.name,
      this.operator_,
      this.value,
      this.expression,
      this.type})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        setToName, r'Copyvaluetrigger', 'setToName');
    BuiltValueNullFieldError.checkNotNull(
        fromName, r'Copyvaluetrigger', 'fromName');
  }

  @override
  Copyvaluetrigger rebuild(void Function(CopyvaluetriggerBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  CopyvaluetriggerBuilder toBuilder() =>
      new CopyvaluetriggerBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Copyvaluetrigger &&
        setToName == other.setToName &&
        fromName == other.fromName &&
        copyDisplayValue == other.copyDisplayValue &&
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
    _$hash = $jc(_$hash, fromName.hashCode);
    _$hash = $jc(_$hash, copyDisplayValue.hashCode);
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
    return (newBuiltValueToStringHelper(r'Copyvaluetrigger')
          ..add('setToName', setToName)
          ..add('fromName', fromName)
          ..add('copyDisplayValue', copyDisplayValue)
          ..add('name', name)
          ..add('operator_', operator_)
          ..add('value', value)
          ..add('expression', expression)
          ..add('type', type))
        .toString();
  }
}

class CopyvaluetriggerBuilder
    implements
        Builder<Copyvaluetrigger, CopyvaluetriggerBuilder>,
        SurveytriggerBuilder {
  _$Copyvaluetrigger? _$v;

  String? _setToName;
  String? get setToName => _$this._setToName;
  set setToName(covariant String? setToName) => _$this._setToName = setToName;

  String? _fromName;
  String? get fromName => _$this._fromName;
  set fromName(covariant String? fromName) => _$this._fromName = fromName;

  bool? _copyDisplayValue;
  bool? get copyDisplayValue => _$this._copyDisplayValue;
  set copyDisplayValue(covariant bool? copyDisplayValue) =>
      _$this._copyDisplayValue = copyDisplayValue;

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

  CopyvaluetriggerBuilder() {
    Copyvaluetrigger._defaults(this);
  }

  CopyvaluetriggerBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _setToName = $v.setToName;
      _fromName = $v.fromName;
      _copyDisplayValue = $v.copyDisplayValue;
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
  void replace(covariant Copyvaluetrigger other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$Copyvaluetrigger;
  }

  @override
  void update(void Function(CopyvaluetriggerBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  Copyvaluetrigger build() => _build();

  _$Copyvaluetrigger _build() {
    final _$result = _$v ??
        new _$Copyvaluetrigger._(
            setToName: BuiltValueNullFieldError.checkNotNull(
                setToName, r'Copyvaluetrigger', 'setToName'),
            fromName: BuiltValueNullFieldError.checkNotNull(
                fromName, r'Copyvaluetrigger', 'fromName'),
            copyDisplayValue: copyDisplayValue,
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
