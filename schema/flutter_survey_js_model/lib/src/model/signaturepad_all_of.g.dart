// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'signaturepad_all_of.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

abstract class SignaturepadAllOfBuilder {
  void replace(SignaturepadAllOf other);
  void update(void Function(SignaturepadAllOfBuilder) updates);
  SurveyLogoWidthBuilder get signatureWidth;
  set signatureWidth(SurveyLogoWidthBuilder? signatureWidth);

  SurveyLogoWidthBuilder get signatureHeight;
  set signatureHeight(SurveyLogoWidthBuilder? signatureHeight);

  SurveyLogoWidthBuilder get height;
  set height(SurveyLogoWidthBuilder? height);

  bool? get allowClear;
  set allowClear(bool? allowClear);

  String? get penColor;
  set penColor(String? penColor);

  String? get backgroundColor;
  set backgroundColor(String? backgroundColor);

  SignaturepadDataFormat? get dataFormat;
  set dataFormat(SignaturepadDataFormat? dataFormat);

  JsonObject? get defaultValue;
  set defaultValue(JsonObject? defaultValue);

  JsonObject? get correctAnswer;
  set correctAnswer(JsonObject? correctAnswer);
}

class _$$SignaturepadAllOf extends $SignaturepadAllOf {
  @override
  final SurveyLogoWidth? signatureWidth;
  @override
  final SurveyLogoWidth? signatureHeight;
  @override
  final SurveyLogoWidth? height;
  @override
  final bool? allowClear;
  @override
  final String? penColor;
  @override
  final String? backgroundColor;
  @override
  final SignaturepadDataFormat? dataFormat;
  @override
  final JsonObject? defaultValue;
  @override
  final JsonObject? correctAnswer;

  factory _$$SignaturepadAllOf(
          [void Function($SignaturepadAllOfBuilder)? updates]) =>
      (new $SignaturepadAllOfBuilder()..update(updates))._build();

  _$$SignaturepadAllOf._(
      {this.signatureWidth,
      this.signatureHeight,
      this.height,
      this.allowClear,
      this.penColor,
      this.backgroundColor,
      this.dataFormat,
      this.defaultValue,
      this.correctAnswer})
      : super._();

  @override
  $SignaturepadAllOf rebuild(
          void Function($SignaturepadAllOfBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  $SignaturepadAllOfBuilder toBuilder() =>
      new $SignaturepadAllOfBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is $SignaturepadAllOf &&
        signatureWidth == other.signatureWidth &&
        signatureHeight == other.signatureHeight &&
        height == other.height &&
        allowClear == other.allowClear &&
        penColor == other.penColor &&
        backgroundColor == other.backgroundColor &&
        dataFormat == other.dataFormat &&
        defaultValue == other.defaultValue &&
        correctAnswer == other.correctAnswer;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, signatureWidth.hashCode);
    _$hash = $jc(_$hash, signatureHeight.hashCode);
    _$hash = $jc(_$hash, height.hashCode);
    _$hash = $jc(_$hash, allowClear.hashCode);
    _$hash = $jc(_$hash, penColor.hashCode);
    _$hash = $jc(_$hash, backgroundColor.hashCode);
    _$hash = $jc(_$hash, dataFormat.hashCode);
    _$hash = $jc(_$hash, defaultValue.hashCode);
    _$hash = $jc(_$hash, correctAnswer.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'$SignaturepadAllOf')
          ..add('signatureWidth', signatureWidth)
          ..add('signatureHeight', signatureHeight)
          ..add('height', height)
          ..add('allowClear', allowClear)
          ..add('penColor', penColor)
          ..add('backgroundColor', backgroundColor)
          ..add('dataFormat', dataFormat)
          ..add('defaultValue', defaultValue)
          ..add('correctAnswer', correctAnswer))
        .toString();
  }
}

class $SignaturepadAllOfBuilder
    implements
        Builder<$SignaturepadAllOf, $SignaturepadAllOfBuilder>,
        SignaturepadAllOfBuilder {
  _$$SignaturepadAllOf? _$v;

  SurveyLogoWidthBuilder? _signatureWidth;
  SurveyLogoWidthBuilder get signatureWidth =>
      _$this._signatureWidth ??= new SurveyLogoWidthBuilder();
  set signatureWidth(covariant SurveyLogoWidthBuilder? signatureWidth) =>
      _$this._signatureWidth = signatureWidth;

  SurveyLogoWidthBuilder? _signatureHeight;
  SurveyLogoWidthBuilder get signatureHeight =>
      _$this._signatureHeight ??= new SurveyLogoWidthBuilder();
  set signatureHeight(covariant SurveyLogoWidthBuilder? signatureHeight) =>
      _$this._signatureHeight = signatureHeight;

  SurveyLogoWidthBuilder? _height;
  SurveyLogoWidthBuilder get height =>
      _$this._height ??= new SurveyLogoWidthBuilder();
  set height(covariant SurveyLogoWidthBuilder? height) =>
      _$this._height = height;

  bool? _allowClear;
  bool? get allowClear => _$this._allowClear;
  set allowClear(covariant bool? allowClear) => _$this._allowClear = allowClear;

  String? _penColor;
  String? get penColor => _$this._penColor;
  set penColor(covariant String? penColor) => _$this._penColor = penColor;

  String? _backgroundColor;
  String? get backgroundColor => _$this._backgroundColor;
  set backgroundColor(covariant String? backgroundColor) =>
      _$this._backgroundColor = backgroundColor;

  SignaturepadDataFormat? _dataFormat;
  SignaturepadDataFormat? get dataFormat => _$this._dataFormat;
  set dataFormat(covariant SignaturepadDataFormat? dataFormat) =>
      _$this._dataFormat = dataFormat;

  JsonObject? _defaultValue;
  JsonObject? get defaultValue => _$this._defaultValue;
  set defaultValue(covariant JsonObject? defaultValue) =>
      _$this._defaultValue = defaultValue;

  JsonObject? _correctAnswer;
  JsonObject? get correctAnswer => _$this._correctAnswer;
  set correctAnswer(covariant JsonObject? correctAnswer) =>
      _$this._correctAnswer = correctAnswer;

  $SignaturepadAllOfBuilder() {
    $SignaturepadAllOf._defaults(this);
  }

  $SignaturepadAllOfBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _signatureWidth = $v.signatureWidth?.toBuilder();
      _signatureHeight = $v.signatureHeight?.toBuilder();
      _height = $v.height?.toBuilder();
      _allowClear = $v.allowClear;
      _penColor = $v.penColor;
      _backgroundColor = $v.backgroundColor;
      _dataFormat = $v.dataFormat;
      _defaultValue = $v.defaultValue;
      _correctAnswer = $v.correctAnswer;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(covariant $SignaturepadAllOf other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$$SignaturepadAllOf;
  }

  @override
  void update(void Function($SignaturepadAllOfBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  $SignaturepadAllOf build() => _build();

  _$$SignaturepadAllOf _build() {
    _$$SignaturepadAllOf _$result;
    try {
      _$result = _$v ??
          new _$$SignaturepadAllOf._(
              signatureWidth: _signatureWidth?.build(),
              signatureHeight: _signatureHeight?.build(),
              height: _height?.build(),
              allowClear: allowClear,
              penColor: penColor,
              backgroundColor: backgroundColor,
              dataFormat: dataFormat,
              defaultValue: defaultValue,
              correctAnswer: correctAnswer);
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'signatureWidth';
        _signatureWidth?.build();
        _$failedField = 'signatureHeight';
        _signatureHeight?.build();
        _$failedField = 'height';
        _height?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'$SignaturepadAllOf', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
