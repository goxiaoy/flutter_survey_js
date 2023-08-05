// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'skiptrigger.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$Skiptrigger extends Skiptrigger {
  @override
  final String gotoName;
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

  factory _$Skiptrigger([void Function(SkiptriggerBuilder)? updates]) =>
      (new SkiptriggerBuilder()..update(updates))._build();

  _$Skiptrigger._(
      {required this.gotoName,
      this.name,
      this.operator_,
      this.value,
      this.expression,
      this.type})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(gotoName, r'Skiptrigger', 'gotoName');
  }

  @override
  Skiptrigger rebuild(void Function(SkiptriggerBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  SkiptriggerBuilder toBuilder() => new SkiptriggerBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Skiptrigger &&
        gotoName == other.gotoName &&
        name == other.name &&
        operator_ == other.operator_ &&
        value == other.value &&
        expression == other.expression &&
        type == other.type;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, gotoName.hashCode);
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
    return (newBuiltValueToStringHelper(r'Skiptrigger')
          ..add('gotoName', gotoName)
          ..add('name', name)
          ..add('operator_', operator_)
          ..add('value', value)
          ..add('expression', expression)
          ..add('type', type))
        .toString();
  }
}

class SkiptriggerBuilder
    implements Builder<Skiptrigger, SkiptriggerBuilder>, SurveytriggerBuilder {
  _$Skiptrigger? _$v;

  String? _gotoName;
  String? get gotoName => _$this._gotoName;
  set gotoName(covariant String? gotoName) => _$this._gotoName = gotoName;

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

  SkiptriggerBuilder() {
    Skiptrigger._defaults(this);
  }

  SkiptriggerBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _gotoName = $v.gotoName;
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
  void replace(covariant Skiptrigger other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$Skiptrigger;
  }

  @override
  void update(void Function(SkiptriggerBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  Skiptrigger build() => _build();

  _$Skiptrigger _build() {
    final _$result = _$v ??
        new _$Skiptrigger._(
            gotoName: BuiltValueNullFieldError.checkNotNull(
                gotoName, r'Skiptrigger', 'gotoName'),
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
