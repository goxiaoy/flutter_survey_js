// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'expressionitem.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

abstract class ExpressionitemBuilder {
  void replace(Expressionitem other);
  void update(void Function(ExpressionitemBuilder) updates);
  String? get expression;
  set expression(String? expression);
}

class _$$Expressionitem extends $Expressionitem {
  @override
  final String? expression;

  factory _$$Expressionitem([void Function($ExpressionitemBuilder)? updates]) =>
      (new $ExpressionitemBuilder()..update(updates))._build();

  _$$Expressionitem._({this.expression}) : super._();

  @override
  $Expressionitem rebuild(void Function($ExpressionitemBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  $ExpressionitemBuilder toBuilder() =>
      new $ExpressionitemBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is $Expressionitem && expression == other.expression;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, expression.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'$Expressionitem')
          ..add('expression', expression))
        .toString();
  }
}

class $ExpressionitemBuilder
    implements
        Builder<$Expressionitem, $ExpressionitemBuilder>,
        ExpressionitemBuilder {
  _$$Expressionitem? _$v;

  String? _expression;
  String? get expression => _$this._expression;
  set expression(covariant String? expression) =>
      _$this._expression = expression;

  $ExpressionitemBuilder() {
    $Expressionitem._defaults(this);
  }

  $ExpressionitemBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _expression = $v.expression;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(covariant $Expressionitem other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$$Expressionitem;
  }

  @override
  void update(void Function($ExpressionitemBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  $Expressionitem build() => _build();

  _$$Expressionitem _build() {
    final _$result = _$v ?? new _$$Expressionitem._(expression: expression);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
