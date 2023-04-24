// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'htmlconditionitem_all_of.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

abstract class HtmlconditionitemAllOfBuilder {
  void replace(HtmlconditionitemAllOf other);
  void update(void Function(HtmlconditionitemAllOfBuilder) updates);
  String? get html;
  set html(String? html);
}

class _$$HtmlconditionitemAllOf extends $HtmlconditionitemAllOf {
  @override
  final String? html;

  factory _$$HtmlconditionitemAllOf(
          [void Function($HtmlconditionitemAllOfBuilder)? updates]) =>
      (new $HtmlconditionitemAllOfBuilder()..update(updates))._build();

  _$$HtmlconditionitemAllOf._({this.html}) : super._();

  @override
  $HtmlconditionitemAllOf rebuild(
          void Function($HtmlconditionitemAllOfBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  $HtmlconditionitemAllOfBuilder toBuilder() =>
      new $HtmlconditionitemAllOfBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is $HtmlconditionitemAllOf && html == other.html;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, html.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'$HtmlconditionitemAllOf')
          ..add('html', html))
        .toString();
  }
}

class $HtmlconditionitemAllOfBuilder
    implements
        Builder<$HtmlconditionitemAllOf, $HtmlconditionitemAllOfBuilder>,
        HtmlconditionitemAllOfBuilder {
  _$$HtmlconditionitemAllOf? _$v;

  String? _html;
  String? get html => _$this._html;
  set html(covariant String? html) => _$this._html = html;

  $HtmlconditionitemAllOfBuilder() {
    $HtmlconditionitemAllOf._defaults(this);
  }

  $HtmlconditionitemAllOfBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _html = $v.html;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(covariant $HtmlconditionitemAllOf other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$$HtmlconditionitemAllOf;
  }

  @override
  void update(void Function($HtmlconditionitemAllOfBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  $HtmlconditionitemAllOf build() => _build();

  _$$HtmlconditionitemAllOf _build() {
    final _$result = _$v ?? new _$$HtmlconditionitemAllOf._(html: html);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
