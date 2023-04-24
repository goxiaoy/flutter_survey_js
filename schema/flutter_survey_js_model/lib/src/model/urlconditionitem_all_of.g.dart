// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'urlconditionitem_all_of.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

abstract class UrlconditionitemAllOfBuilder {
  void replace(UrlconditionitemAllOf other);
  void update(void Function(UrlconditionitemAllOfBuilder) updates);
  String? get url;
  set url(String? url);
}

class _$$UrlconditionitemAllOf extends $UrlconditionitemAllOf {
  @override
  final String? url;

  factory _$$UrlconditionitemAllOf(
          [void Function($UrlconditionitemAllOfBuilder)? updates]) =>
      (new $UrlconditionitemAllOfBuilder()..update(updates))._build();

  _$$UrlconditionitemAllOf._({this.url}) : super._();

  @override
  $UrlconditionitemAllOf rebuild(
          void Function($UrlconditionitemAllOfBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  $UrlconditionitemAllOfBuilder toBuilder() =>
      new $UrlconditionitemAllOfBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is $UrlconditionitemAllOf && url == other.url;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, url.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'$UrlconditionitemAllOf')
          ..add('url', url))
        .toString();
  }
}

class $UrlconditionitemAllOfBuilder
    implements
        Builder<$UrlconditionitemAllOf, $UrlconditionitemAllOfBuilder>,
        UrlconditionitemAllOfBuilder {
  _$$UrlconditionitemAllOf? _$v;

  String? _url;
  String? get url => _$this._url;
  set url(covariant String? url) => _$this._url = url;

  $UrlconditionitemAllOfBuilder() {
    $UrlconditionitemAllOf._defaults(this);
  }

  $UrlconditionitemAllOfBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _url = $v.url;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(covariant $UrlconditionitemAllOf other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$$UrlconditionitemAllOf;
  }

  @override
  void update(void Function($UrlconditionitemAllOfBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  $UrlconditionitemAllOf build() => _build();

  _$$UrlconditionitemAllOf _build() {
    final _$result = _$v ?? new _$$UrlconditionitemAllOf._(url: url);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
