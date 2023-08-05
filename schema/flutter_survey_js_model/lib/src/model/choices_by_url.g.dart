// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'choices_by_url.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$ChoicesByUrl extends ChoicesByUrl {
  @override
  final String? url;
  @override
  final String? path;
  @override
  final String? valueName;
  @override
  final String? titleName;
  @override
  final String? imageLinkName;
  @override
  final bool? allowEmptyResponse;
  @override
  final bool? attachOriginalItems;

  factory _$ChoicesByUrl([void Function(ChoicesByUrlBuilder)? updates]) =>
      (new ChoicesByUrlBuilder()..update(updates))._build();

  _$ChoicesByUrl._(
      {this.url,
      this.path,
      this.valueName,
      this.titleName,
      this.imageLinkName,
      this.allowEmptyResponse,
      this.attachOriginalItems})
      : super._();

  @override
  ChoicesByUrl rebuild(void Function(ChoicesByUrlBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ChoicesByUrlBuilder toBuilder() => new ChoicesByUrlBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ChoicesByUrl &&
        url == other.url &&
        path == other.path &&
        valueName == other.valueName &&
        titleName == other.titleName &&
        imageLinkName == other.imageLinkName &&
        allowEmptyResponse == other.allowEmptyResponse &&
        attachOriginalItems == other.attachOriginalItems;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, url.hashCode);
    _$hash = $jc(_$hash, path.hashCode);
    _$hash = $jc(_$hash, valueName.hashCode);
    _$hash = $jc(_$hash, titleName.hashCode);
    _$hash = $jc(_$hash, imageLinkName.hashCode);
    _$hash = $jc(_$hash, allowEmptyResponse.hashCode);
    _$hash = $jc(_$hash, attachOriginalItems.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'ChoicesByUrl')
          ..add('url', url)
          ..add('path', path)
          ..add('valueName', valueName)
          ..add('titleName', titleName)
          ..add('imageLinkName', imageLinkName)
          ..add('allowEmptyResponse', allowEmptyResponse)
          ..add('attachOriginalItems', attachOriginalItems))
        .toString();
  }
}

class ChoicesByUrlBuilder
    implements Builder<ChoicesByUrl, ChoicesByUrlBuilder> {
  _$ChoicesByUrl? _$v;

  String? _url;
  String? get url => _$this._url;
  set url(String? url) => _$this._url = url;

  String? _path;
  String? get path => _$this._path;
  set path(String? path) => _$this._path = path;

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

  bool? _allowEmptyResponse;
  bool? get allowEmptyResponse => _$this._allowEmptyResponse;
  set allowEmptyResponse(bool? allowEmptyResponse) =>
      _$this._allowEmptyResponse = allowEmptyResponse;

  bool? _attachOriginalItems;
  bool? get attachOriginalItems => _$this._attachOriginalItems;
  set attachOriginalItems(bool? attachOriginalItems) =>
      _$this._attachOriginalItems = attachOriginalItems;

  ChoicesByUrlBuilder() {
    ChoicesByUrl._defaults(this);
  }

  ChoicesByUrlBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _url = $v.url;
      _path = $v.path;
      _valueName = $v.valueName;
      _titleName = $v.titleName;
      _imageLinkName = $v.imageLinkName;
      _allowEmptyResponse = $v.allowEmptyResponse;
      _attachOriginalItems = $v.attachOriginalItems;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ChoicesByUrl other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$ChoicesByUrl;
  }

  @override
  void update(void Function(ChoicesByUrlBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ChoicesByUrl build() => _build();

  _$ChoicesByUrl _build() {
    final _$result = _$v ??
        new _$ChoicesByUrl._(
            url: url,
            path: path,
            valueName: valueName,
            titleName: titleName,
            imageLinkName: imageLinkName,
            allowEmptyResponse: allowEmptyResponse,
            attachOriginalItems: attachOriginalItems);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
