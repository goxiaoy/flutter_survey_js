// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'urlconditionitem.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$Urlconditionitem extends Urlconditionitem {
  @override
  final SurveyTitle? url;
  @override
  final String? expression;

  factory _$Urlconditionitem(
          [void Function(UrlconditionitemBuilder)? updates]) =>
      (new UrlconditionitemBuilder()..update(updates))._build();

  _$Urlconditionitem._({this.url, this.expression}) : super._();

  @override
  Urlconditionitem rebuild(void Function(UrlconditionitemBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  UrlconditionitemBuilder toBuilder() =>
      new UrlconditionitemBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Urlconditionitem &&
        url == other.url &&
        expression == other.expression;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, url.hashCode);
    _$hash = $jc(_$hash, expression.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'Urlconditionitem')
          ..add('url', url)
          ..add('expression', expression))
        .toString();
  }
}

class UrlconditionitemBuilder
    implements
        Builder<Urlconditionitem, UrlconditionitemBuilder>,
        ExpressionitemBuilder {
  _$Urlconditionitem? _$v;

  SurveyTitleBuilder? _url;
  SurveyTitleBuilder get url => _$this._url ??= new SurveyTitleBuilder();
  set url(covariant SurveyTitleBuilder? url) => _$this._url = url;

  String? _expression;
  String? get expression => _$this._expression;
  set expression(covariant String? expression) =>
      _$this._expression = expression;

  UrlconditionitemBuilder() {
    Urlconditionitem._defaults(this);
  }

  UrlconditionitemBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _url = $v.url?.toBuilder();
      _expression = $v.expression;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(covariant Urlconditionitem other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$Urlconditionitem;
  }

  @override
  void update(void Function(UrlconditionitemBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  Urlconditionitem build() => _build();

  _$Urlconditionitem _build() {
    _$Urlconditionitem _$result;
    try {
      _$result = _$v ??
          new _$Urlconditionitem._(url: _url?.build(), expression: expression);
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'url';
        _url?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'Urlconditionitem', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
