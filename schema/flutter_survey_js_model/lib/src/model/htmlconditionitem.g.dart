// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'htmlconditionitem.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$Htmlconditionitem extends Htmlconditionitem {
  @override
  final SurveyTitle? html;
  @override
  final String? expression;

  factory _$Htmlconditionitem(
          [void Function(HtmlconditionitemBuilder)? updates]) =>
      (new HtmlconditionitemBuilder()..update(updates))._build();

  _$Htmlconditionitem._({this.html, this.expression}) : super._();

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
        html == other.html &&
        expression == other.expression;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, html.hashCode);
    _$hash = $jc(_$hash, expression.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'Htmlconditionitem')
          ..add('html', html)
          ..add('expression', expression))
        .toString();
  }
}

class HtmlconditionitemBuilder
    implements
        Builder<Htmlconditionitem, HtmlconditionitemBuilder>,
        ExpressionitemBuilder {
  _$Htmlconditionitem? _$v;

  SurveyTitleBuilder? _html;
  SurveyTitleBuilder get html => _$this._html ??= new SurveyTitleBuilder();
  set html(covariant SurveyTitleBuilder? html) => _$this._html = html;

  String? _expression;
  String? get expression => _$this._expression;
  set expression(covariant String? expression) =>
      _$this._expression = expression;

  HtmlconditionitemBuilder() {
    Htmlconditionitem._defaults(this);
  }

  HtmlconditionitemBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _html = $v.html?.toBuilder();
      _expression = $v.expression;
      _$v = null;
    }
    return this;
  }

  @override
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
    _$Htmlconditionitem _$result;
    try {
      _$result = _$v ??
          new _$Htmlconditionitem._(
              html: _html?.build(), expression: expression);
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'html';
        _html?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'Htmlconditionitem', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
