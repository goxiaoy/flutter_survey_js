// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'expressionvalidator.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$Expressionvalidator extends Expressionvalidator {
  @override
  final String? expression;
  @override
  final String? text;

  factory _$Expressionvalidator(
          [void Function(ExpressionvalidatorBuilder)? updates]) =>
      (new ExpressionvalidatorBuilder()..update(updates))._build();

  _$Expressionvalidator._({this.expression, this.text}) : super._();

  @override
  Expressionvalidator rebuild(
          void Function(ExpressionvalidatorBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ExpressionvalidatorBuilder toBuilder() =>
      new ExpressionvalidatorBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Expressionvalidator &&
        expression == other.expression &&
        text == other.text;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, expression.hashCode);
    _$hash = $jc(_$hash, text.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'Expressionvalidator')
          ..add('expression', expression)
          ..add('text', text))
        .toString();
  }
}

class ExpressionvalidatorBuilder
    implements
        Builder<Expressionvalidator, ExpressionvalidatorBuilder>,
        ExpressionvalidatorAllOfBuilder,
        SurveyvalidatorBuilder {
  _$Expressionvalidator? _$v;

  String? _expression;
  String? get expression => _$this._expression;
  set expression(covariant String? expression) =>
      _$this._expression = expression;

  String? _text;
  String? get text => _$this._text;
  set text(covariant String? text) => _$this._text = text;

  ExpressionvalidatorBuilder() {
    Expressionvalidator._defaults(this);
  }

  ExpressionvalidatorBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _expression = $v.expression;
      _text = $v.text;
      _$v = null;
    }
    return this;
  }

  @override
// ignore: override_on_non_overriding_method
  void replace(covariant Expressionvalidator other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$Expressionvalidator;
  }

  @override
  void update(void Function(ExpressionvalidatorBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  Expressionvalidator build() => _build();

  _$Expressionvalidator _build() {
    final _$result =
        _$v ?? new _$Expressionvalidator._(expression: expression, text: text);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
