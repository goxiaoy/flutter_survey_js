// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'expressionvalidator_all_of.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

abstract class ExpressionvalidatorAllOfBuilder {
  void replace(ExpressionvalidatorAllOf other);
  void update(void Function(ExpressionvalidatorAllOfBuilder) updates);
  String? get expression;
  set expression(String? expression);
}

class _$$ExpressionvalidatorAllOf extends $ExpressionvalidatorAllOf {
  @override
  final String? expression;

  factory _$$ExpressionvalidatorAllOf(
          [void Function($ExpressionvalidatorAllOfBuilder)? updates]) =>
      (new $ExpressionvalidatorAllOfBuilder()..update(updates))._build();

  _$$ExpressionvalidatorAllOf._({this.expression}) : super._();

  @override
  $ExpressionvalidatorAllOf rebuild(
          void Function($ExpressionvalidatorAllOfBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  $ExpressionvalidatorAllOfBuilder toBuilder() =>
      new $ExpressionvalidatorAllOfBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is $ExpressionvalidatorAllOf && expression == other.expression;
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
    return (newBuiltValueToStringHelper(r'$ExpressionvalidatorAllOf')
          ..add('expression', expression))
        .toString();
  }
}

class $ExpressionvalidatorAllOfBuilder
    implements
        Builder<$ExpressionvalidatorAllOf, $ExpressionvalidatorAllOfBuilder>,
        ExpressionvalidatorAllOfBuilder {
  _$$ExpressionvalidatorAllOf? _$v;

  String? _expression;
  String? get expression => _$this._expression;
  set expression(covariant String? expression) =>
      _$this._expression = expression;

  $ExpressionvalidatorAllOfBuilder() {
    $ExpressionvalidatorAllOf._defaults(this);
  }

  $ExpressionvalidatorAllOfBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _expression = $v.expression;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(covariant $ExpressionvalidatorAllOf other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$$ExpressionvalidatorAllOf;
  }

  @override
  void update(void Function($ExpressionvalidatorAllOfBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  $ExpressionvalidatorAllOf build() => _build();

  _$$ExpressionvalidatorAllOf _build() {
    final _$result =
        _$v ?? new _$$ExpressionvalidatorAllOf._(expression: expression);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
