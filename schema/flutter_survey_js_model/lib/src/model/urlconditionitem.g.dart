// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'urlconditionitem.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$Urlconditionitem extends Urlconditionitem {
  @override
  final String? expression;
  @override
  final String? url;

  factory _$Urlconditionitem(
          [void Function(UrlconditionitemBuilder)? updates]) =>
      (new UrlconditionitemBuilder()..update(updates))._build();

  _$Urlconditionitem._({this.expression, this.url}) : super._();

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
        expression == other.expression &&
        url == other.url;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, expression.hashCode);
    _$hash = $jc(_$hash, url.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'Urlconditionitem')
          ..add('expression', expression)
          ..add('url', url))
        .toString();
  }
}

class UrlconditionitemBuilder
    implements
        Builder<Urlconditionitem, UrlconditionitemBuilder>,
        ExpressionitemBuilder,
        UrlconditionitemAllOfBuilder {
  _$Urlconditionitem? _$v;

  String? _expression;
  String? get expression => _$this._expression;
  set expression(covariant String? expression) =>
      _$this._expression = expression;

  String? _url;
  String? get url => _$this._url;
  set url(covariant String? url) => _$this._url = url;

  UrlconditionitemBuilder() {
    Urlconditionitem._defaults(this);
  }

  UrlconditionitemBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _expression = $v.expression;
      _url = $v.url;
      _$v = null;
    }
    return this;
  }

  @override
// ignore: override_on_non_overriding_method
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
    final _$result =
        _$v ?? new _$Urlconditionitem._(expression: expression, url: url);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
