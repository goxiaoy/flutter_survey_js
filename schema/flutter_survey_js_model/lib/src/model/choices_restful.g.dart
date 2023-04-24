// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'choices_restful.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$ChoicesRestful extends ChoicesRestful {
  @override
  final String? url;
  @override
  final String? valueName;
  @override
  final String? titleName;
  @override
  final String? imageLinkName;
  @override
  final String? path;

  factory _$ChoicesRestful([void Function(ChoicesRestfulBuilder)? updates]) =>
      (new ChoicesRestfulBuilder()..update(updates))._build();

  _$ChoicesRestful._(
      {this.url, this.valueName, this.titleName, this.imageLinkName, this.path})
      : super._();

  @override
  ChoicesRestful rebuild(void Function(ChoicesRestfulBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ChoicesRestfulBuilder toBuilder() =>
      new ChoicesRestfulBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ChoicesRestful &&
        url == other.url &&
        valueName == other.valueName &&
        titleName == other.titleName &&
        imageLinkName == other.imageLinkName &&
        path == other.path;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, url.hashCode);
    _$hash = $jc(_$hash, valueName.hashCode);
    _$hash = $jc(_$hash, titleName.hashCode);
    _$hash = $jc(_$hash, imageLinkName.hashCode);
    _$hash = $jc(_$hash, path.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'ChoicesRestful')
          ..add('url', url)
          ..add('valueName', valueName)
          ..add('titleName', titleName)
          ..add('imageLinkName', imageLinkName)
          ..add('path', path))
        .toString();
  }
}

class ChoicesRestfulBuilder
    implements Builder<ChoicesRestful, ChoicesRestfulBuilder> {
  _$ChoicesRestful? _$v;

  String? _url;
  String? get url => _$this._url;
  set url(String? url) => _$this._url = url;

  String? _valueName;
  String? get valueName => _$this._valueName;
  set valueName(String? valueName) => _$this._valueName = valueName;

  String? _titleName;
  String? get titleName => _$this._titleName;
  set titleName(String? titleName) => _$this._titleName = titleName;

  String? _imageLinkName;
  String? get imageLinkName => _$this._imageLinkName;
  set imageLinkName(String? imageLinkName) =>
      _$this._imageLinkName = imageLinkName;

  String? _path;
  String? get path => _$this._path;
  set path(String? path) => _$this._path = path;

  ChoicesRestfulBuilder() {
    ChoicesRestful._defaults(this);
  }

  ChoicesRestfulBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _url = $v.url;
      _valueName = $v.valueName;
      _titleName = $v.titleName;
      _imageLinkName = $v.imageLinkName;
      _path = $v.path;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ChoicesRestful other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$ChoicesRestful;
  }

  @override
  void update(void Function(ChoicesRestfulBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ChoicesRestful build() => _build();

  _$ChoicesRestful _build() {
    final _$result = _$v ??
        new _$ChoicesRestful._(
            url: url,
            valueName: valueName,
            titleName: titleName,
            imageLinkName: imageLinkName,
            path: path);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
