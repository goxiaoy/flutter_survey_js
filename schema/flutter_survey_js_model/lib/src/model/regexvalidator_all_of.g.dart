// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'regexvalidator_all_of.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

abstract class RegexvalidatorAllOfBuilder {
  void replace(RegexvalidatorAllOf other);
  void update(void Function(RegexvalidatorAllOfBuilder) updates);
  String? get regex;
  set regex(String? regex);
}

class _$$RegexvalidatorAllOf extends $RegexvalidatorAllOf {
  @override
  final String? regex;

  factory _$$RegexvalidatorAllOf(
          [void Function($RegexvalidatorAllOfBuilder)? updates]) =>
      (new $RegexvalidatorAllOfBuilder()..update(updates))._build();

  _$$RegexvalidatorAllOf._({this.regex}) : super._();

  @override
  $RegexvalidatorAllOf rebuild(
          void Function($RegexvalidatorAllOfBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  $RegexvalidatorAllOfBuilder toBuilder() =>
      new $RegexvalidatorAllOfBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is $RegexvalidatorAllOf && regex == other.regex;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, regex.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'$RegexvalidatorAllOf')
          ..add('regex', regex))
        .toString();
  }
}

class $RegexvalidatorAllOfBuilder
    implements
        Builder<$RegexvalidatorAllOf, $RegexvalidatorAllOfBuilder>,
        RegexvalidatorAllOfBuilder {
  _$$RegexvalidatorAllOf? _$v;

  String? _regex;
  String? get regex => _$this._regex;
  set regex(covariant String? regex) => _$this._regex = regex;

  $RegexvalidatorAllOfBuilder() {
    $RegexvalidatorAllOf._defaults(this);
  }

  $RegexvalidatorAllOfBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _regex = $v.regex;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(covariant $RegexvalidatorAllOf other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$$RegexvalidatorAllOf;
  }

  @override
  void update(void Function($RegexvalidatorAllOfBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  $RegexvalidatorAllOf build() => _build();

  _$$RegexvalidatorAllOf _build() {
    final _$result = _$v ?? new _$$RegexvalidatorAllOf._(regex: regex);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
