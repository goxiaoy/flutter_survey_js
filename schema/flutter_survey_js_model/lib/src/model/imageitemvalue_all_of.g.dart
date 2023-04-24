// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'imageitemvalue_all_of.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

abstract class ImageitemvalueAllOfBuilder {
  void replace(ImageitemvalueAllOf other);
  void update(void Function(ImageitemvalueAllOfBuilder) updates);
  String? get imageLink;
  set imageLink(String? imageLink);
}

class _$$ImageitemvalueAllOf extends $ImageitemvalueAllOf {
  @override
  final String? imageLink;

  factory _$$ImageitemvalueAllOf(
          [void Function($ImageitemvalueAllOfBuilder)? updates]) =>
      (new $ImageitemvalueAllOfBuilder()..update(updates))._build();

  _$$ImageitemvalueAllOf._({this.imageLink}) : super._();

  @override
  $ImageitemvalueAllOf rebuild(
          void Function($ImageitemvalueAllOfBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  $ImageitemvalueAllOfBuilder toBuilder() =>
      new $ImageitemvalueAllOfBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is $ImageitemvalueAllOf && imageLink == other.imageLink;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, imageLink.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'$ImageitemvalueAllOf')
          ..add('imageLink', imageLink))
        .toString();
  }
}

class $ImageitemvalueAllOfBuilder
    implements
        Builder<$ImageitemvalueAllOf, $ImageitemvalueAllOfBuilder>,
        ImageitemvalueAllOfBuilder {
  _$$ImageitemvalueAllOf? _$v;

  String? _imageLink;
  String? get imageLink => _$this._imageLink;
  set imageLink(covariant String? imageLink) => _$this._imageLink = imageLink;

  $ImageitemvalueAllOfBuilder() {
    $ImageitemvalueAllOf._defaults(this);
  }

  $ImageitemvalueAllOfBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _imageLink = $v.imageLink;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(covariant $ImageitemvalueAllOf other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$$ImageitemvalueAllOf;
  }

  @override
  void update(void Function($ImageitemvalueAllOfBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  $ImageitemvalueAllOf build() => _build();

  _$$ImageitemvalueAllOf _build() {
    final _$result = _$v ?? new _$$ImageitemvalueAllOf._(imageLink: imageLink);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
