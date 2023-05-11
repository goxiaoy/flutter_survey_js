// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'image_all_of.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

abstract class ImageAllOfBuilder {
  void replace(ImageAllOf other);
  void update(void Function(ImageAllOfBuilder) updates);
  String? get imageLink;
  set imageLink(String? imageLink);

  String? get altText;
  set altText(String? altText);

  ImageContentMode? get contentMode;
  set contentMode(ImageContentMode? contentMode);

  ImageImageFit? get imageFit;
  set imageFit(ImageImageFit? imageFit);

  SurveyLogoWidthBuilder get imageHeight;
  set imageHeight(SurveyLogoWidthBuilder? imageHeight);

  SurveyLogoWidthBuilder get imageWidth;
  set imageWidth(SurveyLogoWidthBuilder? imageWidth);
}

class _$$ImageAllOf extends $ImageAllOf {
  @override
  final String? imageLink;
  @override
  final String? altText;
  @override
  final ImageContentMode? contentMode;
  @override
  final ImageImageFit? imageFit;
  @override
  final SurveyLogoWidth? imageHeight;
  @override
  final SurveyLogoWidth? imageWidth;

  factory _$$ImageAllOf([void Function($ImageAllOfBuilder)? updates]) =>
      (new $ImageAllOfBuilder()..update(updates))._build();

  _$$ImageAllOf._(
      {this.imageLink,
      this.altText,
      this.contentMode,
      this.imageFit,
      this.imageHeight,
      this.imageWidth})
      : super._();

  @override
  $ImageAllOf rebuild(void Function($ImageAllOfBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  $ImageAllOfBuilder toBuilder() => new $ImageAllOfBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is $ImageAllOf &&
        imageLink == other.imageLink &&
        altText == other.altText &&
        contentMode == other.contentMode &&
        imageFit == other.imageFit &&
        imageHeight == other.imageHeight &&
        imageWidth == other.imageWidth;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, imageLink.hashCode);
    _$hash = $jc(_$hash, altText.hashCode);
    _$hash = $jc(_$hash, contentMode.hashCode);
    _$hash = $jc(_$hash, imageFit.hashCode);
    _$hash = $jc(_$hash, imageHeight.hashCode);
    _$hash = $jc(_$hash, imageWidth.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'$ImageAllOf')
          ..add('imageLink', imageLink)
          ..add('altText', altText)
          ..add('contentMode', contentMode)
          ..add('imageFit', imageFit)
          ..add('imageHeight', imageHeight)
          ..add('imageWidth', imageWidth))
        .toString();
  }
}

class $ImageAllOfBuilder
    implements Builder<$ImageAllOf, $ImageAllOfBuilder>, ImageAllOfBuilder {
  _$$ImageAllOf? _$v;

  String? _imageLink;
  String? get imageLink => _$this._imageLink;
  set imageLink(covariant String? imageLink) => _$this._imageLink = imageLink;

  String? _altText;
  String? get altText => _$this._altText;
  set altText(covariant String? altText) => _$this._altText = altText;

  ImageContentMode? _contentMode;
  ImageContentMode? get contentMode => _$this._contentMode;
  set contentMode(covariant ImageContentMode? contentMode) =>
      _$this._contentMode = contentMode;

  ImageImageFit? _imageFit;
  ImageImageFit? get imageFit => _$this._imageFit;
  set imageFit(covariant ImageImageFit? imageFit) =>
      _$this._imageFit = imageFit;

  SurveyLogoWidthBuilder? _imageHeight;
  SurveyLogoWidthBuilder get imageHeight =>
      _$this._imageHeight ??= new SurveyLogoWidthBuilder();
  set imageHeight(covariant SurveyLogoWidthBuilder? imageHeight) =>
      _$this._imageHeight = imageHeight;

  SurveyLogoWidthBuilder? _imageWidth;
  SurveyLogoWidthBuilder get imageWidth =>
      _$this._imageWidth ??= new SurveyLogoWidthBuilder();
  set imageWidth(covariant SurveyLogoWidthBuilder? imageWidth) =>
      _$this._imageWidth = imageWidth;

  $ImageAllOfBuilder() {
    $ImageAllOf._defaults(this);
  }

  $ImageAllOfBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _imageLink = $v.imageLink;
      _altText = $v.altText;
      _contentMode = $v.contentMode;
      _imageFit = $v.imageFit;
      _imageHeight = $v.imageHeight?.toBuilder();
      _imageWidth = $v.imageWidth?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(covariant $ImageAllOf other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$$ImageAllOf;
  }

  @override
  void update(void Function($ImageAllOfBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  $ImageAllOf build() => _build();

  _$$ImageAllOf _build() {
    _$$ImageAllOf _$result;
    try {
      _$result = _$v ??
          new _$$ImageAllOf._(
              imageLink: imageLink,
              altText: altText,
              contentMode: contentMode,
              imageFit: imageFit,
              imageHeight: _imageHeight?.build(),
              imageWidth: _imageWidth?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'imageHeight';
        _imageHeight?.build();
        _$failedField = 'imageWidth';
        _imageWidth?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'$ImageAllOf', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
