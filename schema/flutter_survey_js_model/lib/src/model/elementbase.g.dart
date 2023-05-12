// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'elementbase.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

abstract class ElementbaseBuilder {
  void replace(Elementbase other);
  void update(void Function(ElementbaseBuilder) updates);
  String? get type;
  set type(String? type);

  String? get name;
  set name(String? name);
}

class _$$Elementbase extends $Elementbase {
  @override
  final String? type;
  @override
  final String? name;

  factory _$$Elementbase([void Function($ElementbaseBuilder)? updates]) =>
      (new $ElementbaseBuilder()..update(updates))._build();

  _$$Elementbase._({this.type, this.name}) : super._();

  @override
  $Elementbase rebuild(void Function($ElementbaseBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  $ElementbaseBuilder toBuilder() => new $ElementbaseBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is $Elementbase && type == other.type && name == other.name;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, type.hashCode);
    _$hash = $jc(_$hash, name.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'$Elementbase')
          ..add('type', type)
          ..add('name', name))
        .toString();
  }
}

class $ElementbaseBuilder
    implements Builder<$Elementbase, $ElementbaseBuilder>, ElementbaseBuilder {
  _$$Elementbase? _$v;

  String? _type;
  String? get type => _$this._type;
  set type(covariant String? type) => _$this._type = type;

  String? _name;
  String? get name => _$this._name;
  set name(covariant String? name) => _$this._name = name;

  $ElementbaseBuilder() {
    $Elementbase._defaults(this);
  }

  $ElementbaseBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _type = $v.type;
      _name = $v.name;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(covariant $Elementbase other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$$Elementbase;
  }

  @override
  void update(void Function($ElementbaseBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  $Elementbase build() => _build();

  _$$Elementbase _build() {
    final _$result = _$v ?? new _$$Elementbase._(type: type, name: name);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
