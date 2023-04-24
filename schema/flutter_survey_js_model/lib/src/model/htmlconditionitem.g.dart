// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'htmlconditionitem.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$Htmlconditionitem extends Htmlconditionitem {
  @override
  final String? expression;
  @override
  final String? html;

  factory _$Htmlconditionitem(
          [void Function(HtmlconditionitemBuilder)? updates]) =>
      (new HtmlconditionitemBuilder()..update(updates))._build();

  _$Htmlconditionitem._({this.expression, this.html}) : super._();

  @override
  Htmlconditionitem rebuild(void Function(HtmlconditionitemBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  HtmlconditionitemBuilder toBuilder() =>
      new HtmlconditionitemBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Htmlconditionitem &&
        expression == other.expression &&
        html == other.html;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, expression.hashCode);
    _$hash = $jc(_$hash, html.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'Htmlconditionitem')
          ..add('expression', expression)
          ..add('html', html))
        .toString();
  }
}

class HtmlconditionitemBuilder
    implements
        Builder<Htmlconditionitem, HtmlconditionitemBuilder>,
        ExpressionitemBuilder,
        HtmlconditionitemAllOfBuilder {
  _$Htmlconditionitem? _$v;

  String? _expression;
  String? get expression => _$this._expression;
  set expression(covariant String? expression) =>
      _$this._expression = expression;

  String? _html;
  String? get html => _$this._html;
  set html(covariant String? html) => _$this._html = html;

  HtmlconditionitemBuilder() {
    Htmlconditionitem._defaults(this);
  }

  HtmlconditionitemBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _expression = $v.expression;
      _html = $v.html;
      _$v = null;
    }
    return this;
  }

  @override
// ignore: override_on_non_overriding_method
  void replace(covariant Htmlconditionitem other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$Htmlconditionitem;
  }

  @override
  void update(void Function(HtmlconditionitemBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  Htmlconditionitem build() => _build();

  _$Htmlconditionitem _build() {
    final _$result =
        _$v ?? new _$Htmlconditionitem._(expression: expression, html: html);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
