// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'element_base.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

abstract class ElementBaseBuilder {
  void replace(ElementBase other);
  void update(void Function(ElementBaseBuilder) updates);
  String? get type;
  set type(String? type);

  String? get name;
  set name(String? name);
}

class _$$ElementBase extends $ElementBase {
  @override
  final String? type;
  @override
  final String? name;

  factory _$$ElementBase([void Function($ElementBaseBuilder)? updates]) =>
      (new $ElementBaseBuilder()..update(updates))._build();

  _$$ElementBase._({this.type, this.name}) : super._();

  @override
  $ElementBase rebuild(void Function($ElementBaseBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  $ElementBaseBuilder toBuilder() => new $ElementBaseBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is $ElementBase && type == other.type && name == other.name;
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
    return (newBuiltValueToStringHelper(r'$ElementBase')
          ..add('type', type)
          ..add('name', name))
        .toString();
  }
}

class $ElementBaseBuilder
    implements Builder<$ElementBase, $ElementBaseBuilder>, ElementBaseBuilder {
  _$$ElementBase? _$v;

  String? _type;
  String? get type => _$this._type;
  set type(covariant String? type) => _$this._type = type;

  String? _name;
  String? get name => _$this._name;
  set name(covariant String? name) => _$this._name = name;

  $ElementBaseBuilder() {
    $ElementBase._defaults(this);
  }

  $ElementBaseBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _type = $v.type;
      _name = $v.name;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(covariant $ElementBase other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$$ElementBase;
  }

  @override
  void update(void Function($ElementBaseBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  $ElementBase build() => _build();

  _$$ElementBase _build() {
    final _$result = _$v ?? new _$$ElementBase._(type: type, name: name);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
