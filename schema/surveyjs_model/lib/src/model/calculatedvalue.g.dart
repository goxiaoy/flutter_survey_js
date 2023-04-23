// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'calculatedvalue.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$Calculatedvalue extends Calculatedvalue {
  @override
  final String? name;
  @override
  final String? expression;
  @override
  final bool? includeIntoResult;

  factory _$Calculatedvalue([void Function(CalculatedvalueBuilder)? updates]) =>
      (new CalculatedvalueBuilder()..update(updates))._build();

  _$Calculatedvalue._({this.name, this.expression, this.includeIntoResult})
      : super._();

  @override
  Calculatedvalue rebuild(void Function(CalculatedvalueBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  CalculatedvalueBuilder toBuilder() =>
      new CalculatedvalueBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Calculatedvalue &&
        name == other.name &&
        expression == other.expression &&
        includeIntoResult == other.includeIntoResult;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, name.hashCode);
    _$hash = $jc(_$hash, expression.hashCode);
    _$hash = $jc(_$hash, includeIntoResult.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'Calculatedvalue')
          ..add('name', name)
          ..add('expression', expression)
          ..add('includeIntoResult', includeIntoResult))
        .toString();
  }
}

class CalculatedvalueBuilder
    implements Builder<Calculatedvalue, CalculatedvalueBuilder> {
  _$Calculatedvalue? _$v;

  String? _name;
  String? get name => _$this._name;
  set name(String? name) => _$this._name = name;

  String? _expression;
  String? get expression => _$this._expression;
  set expression(String? expression) => _$this._expression = expression;

  bool? _includeIntoResult;
  bool? get includeIntoResult => _$this._includeIntoResult;
  set includeIntoResult(bool? includeIntoResult) =>
      _$this._includeIntoResult = includeIntoResult;

  CalculatedvalueBuilder() {
    Calculatedvalue._defaults(this);
  }

  CalculatedvalueBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _name = $v.name;
      _expression = $v.expression;
      _includeIntoResult = $v.includeIntoResult;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Calculatedvalue other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$Calculatedvalue;
  }

  @override
  void update(void Function(CalculatedvalueBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  Calculatedvalue build() => _build();

  _$Calculatedvalue _build() {
    final _$result = _$v ??
        new _$Calculatedvalue._(
            name: name,
            expression: expression,
            includeIntoResult: includeIntoResult);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
