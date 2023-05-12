// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'imageitemvalue.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$Imageitemvalue extends Imageitemvalue {
  @override
  final String? imageLink;
  @override
  final JsonObject? value;
  @override
  final String? text;
  @override
  final String? visibleIf;
  @override
  final String? enableIf;

  factory _$Imageitemvalue([void Function(ImageitemvalueBuilder)? updates]) =>
      (new ImageitemvalueBuilder()..update(updates))._build();

  _$Imageitemvalue._(
      {this.imageLink, this.value, this.text, this.visibleIf, this.enableIf})
      : super._();

  @override
  Imageitemvalue rebuild(void Function(ImageitemvalueBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ImageitemvalueBuilder toBuilder() =>
      new ImageitemvalueBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Imageitemvalue &&
        imageLink == other.imageLink &&
        value == other.value &&
        text == other.text &&
        visibleIf == other.visibleIf &&
        enableIf == other.enableIf;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, imageLink.hashCode);
    _$hash = $jc(_$hash, value.hashCode);
    _$hash = $jc(_$hash, text.hashCode);
    _$hash = $jc(_$hash, visibleIf.hashCode);
    _$hash = $jc(_$hash, enableIf.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'Imageitemvalue')
          ..add('imageLink', imageLink)
          ..add('value', value)
          ..add('text', text)
          ..add('visibleIf', visibleIf)
          ..add('enableIf', enableIf))
        .toString();
  }
}

class ImageitemvalueBuilder
    implements
        Builder<Imageitemvalue, ImageitemvalueBuilder>,
        ImageitemvalueAllOfBuilder,
        ItemvalueBuilder {
  _$Imageitemvalue? _$v;

  String? _imageLink;
  String? get imageLink => _$this._imageLink;
  set imageLink(covariant String? imageLink) => _$this._imageLink = imageLink;

  JsonObject? _value;
  JsonObject? get value => _$this._value;
  set value(covariant JsonObject? value) => _$this._value = value;

  String? _text;
  String? get text => _$this._text;
  set text(covariant String? text) => _$this._text = text;

  String? _visibleIf;
  String? get visibleIf => _$this._visibleIf;
  set visibleIf(covariant String? visibleIf) => _$this._visibleIf = visibleIf;

  String? _enableIf;
  String? get enableIf => _$this._enableIf;
  set enableIf(covariant String? enableIf) => _$this._enableIf = enableIf;

  ImageitemvalueBuilder() {
    Imageitemvalue._defaults(this);
  }

  ImageitemvalueBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _imageLink = $v.imageLink;
      _value = $v.value;
      _text = $v.text;
      _visibleIf = $v.visibleIf;
      _enableIf = $v.enableIf;
      _$v = null;
    }
    return this;
  }

  @override
// ignore: override_on_non_overriding_method
  void replace(covariant Imageitemvalue other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$Imageitemvalue;
  }

  @override
  void update(void Function(ImageitemvalueBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  Imageitemvalue build() => _build();

  _$Imageitemvalue _build() {
    final _$result = _$v ??
        new _$Imageitemvalue._(
            imageLink: imageLink,
            value: value,
            text: text,
            visibleIf: visibleIf,
            enableIf: enableIf);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
