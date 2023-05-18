// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'file_all_of.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

abstract class FileAllOfBuilder {
  void replace(FileAllOf other);
  void update(void Function(FileAllOfBuilder) updates);
  String? get showCommentArea;
  set showCommentArea(String? showCommentArea);

  bool? get showPreview;
  set showPreview(bool? showPreview);

  bool? get allowMultiple;
  set allowMultiple(bool? allowMultiple);

  bool? get allowImagesPreview;
  set allowImagesPreview(bool? allowImagesPreview);

  SurveyLogoWidthBuilder get imageHeight;
  set imageHeight(SurveyLogoWidthBuilder? imageHeight);

  SurveyLogoWidthBuilder get imageWidth;
  set imageWidth(SurveyLogoWidthBuilder? imageWidth);

  String? get acceptedTypes;
  set acceptedTypes(String? acceptedTypes);

  bool? get storeDataAsText;
  set storeDataAsText(bool? storeDataAsText);

  bool? get waitForUpload;
  set waitForUpload(bool? waitForUpload);

  num? get maxSize;
  set maxSize(num? maxSize);

  JsonObject? get defaultValue;
  set defaultValue(JsonObject? defaultValue);

  JsonObject? get correctAnswer;
  set correctAnswer(JsonObject? correctAnswer);

  ListBuilder<QuestionAllOfValidatorsInner> get validators;
  set validators(ListBuilder<QuestionAllOfValidatorsInner>? validators);

  bool? get needConfirmRemoveFile;
  set needConfirmRemoveFile(bool? needConfirmRemoveFile);
}

class _$$FileAllOf extends $FileAllOf {
  @override
  final String? showCommentArea;
  @override
  final bool? showPreview;
  @override
  final bool? allowMultiple;
  @override
  final bool? allowImagesPreview;
  @override
  final SurveyLogoWidth? imageHeight;
  @override
  final SurveyLogoWidth? imageWidth;
  @override
  final String? acceptedTypes;
  @override
  final bool? storeDataAsText;
  @override
  final bool? waitForUpload;
  @override
  final num? maxSize;
  @override
  final JsonObject? defaultValue;
  @override
  final JsonObject? correctAnswer;
  @override
  final BuiltList<QuestionAllOfValidatorsInner>? validators;
  @override
  final bool? needConfirmRemoveFile;

  factory _$$FileAllOf([void Function($FileAllOfBuilder)? updates]) =>
      (new $FileAllOfBuilder()..update(updates))._build();

  _$$FileAllOf._(
      {this.showCommentArea,
      this.showPreview,
      this.allowMultiple,
      this.allowImagesPreview,
      this.imageHeight,
      this.imageWidth,
      this.acceptedTypes,
      this.storeDataAsText,
      this.waitForUpload,
      this.maxSize,
      this.defaultValue,
      this.correctAnswer,
      this.validators,
      this.needConfirmRemoveFile})
      : super._();

  @override
  $FileAllOf rebuild(void Function($FileAllOfBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  $FileAllOfBuilder toBuilder() => new $FileAllOfBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is $FileAllOf &&
        showCommentArea == other.showCommentArea &&
        showPreview == other.showPreview &&
        allowMultiple == other.allowMultiple &&
        allowImagesPreview == other.allowImagesPreview &&
        imageHeight == other.imageHeight &&
        imageWidth == other.imageWidth &&
        acceptedTypes == other.acceptedTypes &&
        storeDataAsText == other.storeDataAsText &&
        waitForUpload == other.waitForUpload &&
        maxSize == other.maxSize &&
        defaultValue == other.defaultValue &&
        correctAnswer == other.correctAnswer &&
        validators == other.validators &&
        needConfirmRemoveFile == other.needConfirmRemoveFile;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, showCommentArea.hashCode);
    _$hash = $jc(_$hash, showPreview.hashCode);
    _$hash = $jc(_$hash, allowMultiple.hashCode);
    _$hash = $jc(_$hash, allowImagesPreview.hashCode);
    _$hash = $jc(_$hash, imageHeight.hashCode);
    _$hash = $jc(_$hash, imageWidth.hashCode);
    _$hash = $jc(_$hash, acceptedTypes.hashCode);
    _$hash = $jc(_$hash, storeDataAsText.hashCode);
    _$hash = $jc(_$hash, waitForUpload.hashCode);
    _$hash = $jc(_$hash, maxSize.hashCode);
    _$hash = $jc(_$hash, defaultValue.hashCode);
    _$hash = $jc(_$hash, correctAnswer.hashCode);
    _$hash = $jc(_$hash, validators.hashCode);
    _$hash = $jc(_$hash, needConfirmRemoveFile.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'$FileAllOf')
          ..add('showCommentArea', showCommentArea)
          ..add('showPreview', showPreview)
          ..add('allowMultiple', allowMultiple)
          ..add('allowImagesPreview', allowImagesPreview)
          ..add('imageHeight', imageHeight)
          ..add('imageWidth', imageWidth)
          ..add('acceptedTypes', acceptedTypes)
          ..add('storeDataAsText', storeDataAsText)
          ..add('waitForUpload', waitForUpload)
          ..add('maxSize', maxSize)
          ..add('defaultValue', defaultValue)
          ..add('correctAnswer', correctAnswer)
          ..add('validators', validators)
          ..add('needConfirmRemoveFile', needConfirmRemoveFile))
        .toString();
  }
}

class $FileAllOfBuilder
    implements Builder<$FileAllOf, $FileAllOfBuilder>, FileAllOfBuilder {
  _$$FileAllOf? _$v;

  String? _showCommentArea;
  String? get showCommentArea => _$this._showCommentArea;
  set showCommentArea(covariant String? showCommentArea) =>
      _$this._showCommentArea = showCommentArea;

  bool? _showPreview;
  bool? get showPreview => _$this._showPreview;
  set showPreview(covariant bool? showPreview) =>
      _$this._showPreview = showPreview;

  bool? _allowMultiple;
  bool? get allowMultiple => _$this._allowMultiple;
  set allowMultiple(covariant bool? allowMultiple) =>
      _$this._allowMultiple = allowMultiple;

  bool? _allowImagesPreview;
  bool? get allowImagesPreview => _$this._allowImagesPreview;
  set allowImagesPreview(covariant bool? allowImagesPreview) =>
      _$this._allowImagesPreview = allowImagesPreview;

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

  String? _acceptedTypes;
  String? get acceptedTypes => _$this._acceptedTypes;
  set acceptedTypes(covariant String? acceptedTypes) =>
      _$this._acceptedTypes = acceptedTypes;

  bool? _storeDataAsText;
  bool? get storeDataAsText => _$this._storeDataAsText;
  set storeDataAsText(covariant bool? storeDataAsText) =>
      _$this._storeDataAsText = storeDataAsText;

  bool? _waitForUpload;
  bool? get waitForUpload => _$this._waitForUpload;
  set waitForUpload(covariant bool? waitForUpload) =>
      _$this._waitForUpload = waitForUpload;

  num? _maxSize;
  num? get maxSize => _$this._maxSize;
  set maxSize(covariant num? maxSize) => _$this._maxSize = maxSize;

  JsonObject? _defaultValue;
  JsonObject? get defaultValue => _$this._defaultValue;
  set defaultValue(covariant JsonObject? defaultValue) =>
      _$this._defaultValue = defaultValue;

  JsonObject? _correctAnswer;
  JsonObject? get correctAnswer => _$this._correctAnswer;
  set correctAnswer(covariant JsonObject? correctAnswer) =>
      _$this._correctAnswer = correctAnswer;

  ListBuilder<QuestionAllOfValidatorsInner>? _validators;
  ListBuilder<QuestionAllOfValidatorsInner> get validators =>
      _$this._validators ??= new ListBuilder<QuestionAllOfValidatorsInner>();
  set validators(
          covariant ListBuilder<QuestionAllOfValidatorsInner>? validators) =>
      _$this._validators = validators;

  bool? _needConfirmRemoveFile;
  bool? get needConfirmRemoveFile => _$this._needConfirmRemoveFile;
  set needConfirmRemoveFile(covariant bool? needConfirmRemoveFile) =>
      _$this._needConfirmRemoveFile = needConfirmRemoveFile;

  $FileAllOfBuilder() {
    $FileAllOf._defaults(this);
  }

  $FileAllOfBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _showCommentArea = $v.showCommentArea;
      _showPreview = $v.showPreview;
      _allowMultiple = $v.allowMultiple;
      _allowImagesPreview = $v.allowImagesPreview;
      _imageHeight = $v.imageHeight?.toBuilder();
      _imageWidth = $v.imageWidth?.toBuilder();
      _acceptedTypes = $v.acceptedTypes;
      _storeDataAsText = $v.storeDataAsText;
      _waitForUpload = $v.waitForUpload;
      _maxSize = $v.maxSize;
      _defaultValue = $v.defaultValue;
      _correctAnswer = $v.correctAnswer;
      _validators = $v.validators?.toBuilder();
      _needConfirmRemoveFile = $v.needConfirmRemoveFile;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(covariant $FileAllOf other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$$FileAllOf;
  }

  @override
  void update(void Function($FileAllOfBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  $FileAllOf build() => _build();

  _$$FileAllOf _build() {
    _$$FileAllOf _$result;
    try {
      _$result = _$v ??
          new _$$FileAllOf._(
              showCommentArea: showCommentArea,
              showPreview: showPreview,
              allowMultiple: allowMultiple,
              allowImagesPreview: allowImagesPreview,
              imageHeight: _imageHeight?.build(),
              imageWidth: _imageWidth?.build(),
              acceptedTypes: acceptedTypes,
              storeDataAsText: storeDataAsText,
              waitForUpload: waitForUpload,
              maxSize: maxSize,
              defaultValue: defaultValue,
              correctAnswer: correctAnswer,
              validators: _validators?.build(),
              needConfirmRemoveFile: needConfirmRemoveFile);
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'imageHeight';
        _imageHeight?.build();
        _$failedField = 'imageWidth';
        _imageWidth?.build();

        _$failedField = 'validators';
        _validators?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'$FileAllOf', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
