// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'signaturepad_all_of.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

abstract class SignaturepadAllOfBuilder {
  void replace(SignaturepadAllOf other);
  void update(void Function(SignaturepadAllOfBuilder) updates);
  num? get signatureWidth;
  set signatureWidth(num? signatureWidth);

  num? get signatureHeight;
  set signatureHeight(num? signatureHeight);

  num? get height;
  set height(num? height);

  bool? get allowClear;
  set allowClear(bool? allowClear);

  String? get penColor;
  set penColor(String? penColor);

  String? get backgroundColor;
  set backgroundColor(String? backgroundColor);

  SignaturepadDataFormat? get dataFormat;
  set dataFormat(SignaturepadDataFormat? dataFormat);

  String? get defaultValue;
  set defaultValue(String? defaultValue);

  String? get correctAnswer;
  set correctAnswer(String? correctAnswer);
}

class _$$SignaturepadAllOf extends $SignaturepadAllOf {
  @override
  final num? signatureWidth;
  @override
  final num? signatureHeight;
  @override
  final num? height;
  @override
  final bool? allowClear;
  @override
  final String? penColor;
  @override
  final String? backgroundColor;
  @override
  final SignaturepadDataFormat? dataFormat;
  @override
  final String? defaultValue;
  @override
  final String? correctAnswer;

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

  num? _signatureWidth;
  num? get signatureWidth => _$this._signatureWidth;
  set signatureWidth(covariant num? signatureWidth) =>
      _$this._signatureWidth = signatureWidth;

  num? _signatureHeight;
  num? get signatureHeight => _$this._signatureHeight;
  set signatureHeight(covariant num? signatureHeight) =>
      _$this._signatureHeight = signatureHeight;

  num? _height;
  num? get height => _$this._height;
  set height(covariant num? height) => _$this._height = height;

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

  String? _defaultValue;
  String? get defaultValue => _$this._defaultValue;
  set defaultValue(covariant String? defaultValue) =>
      _$this._defaultValue = defaultValue;

  String? _correctAnswer;
  String? get correctAnswer => _$this._correctAnswer;
  set correctAnswer(covariant String? correctAnswer) =>
      _$this._correctAnswer = correctAnswer;

  $SignaturepadAllOfBuilder() {
    $SignaturepadAllOf._defaults(this);
  }

  $SignaturepadAllOfBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _signatureWidth = $v.signatureWidth;
      _signatureHeight = $v.signatureHeight;
      _height = $v.height;
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
    final _$result = _$v ??
        new _$$SignaturepadAllOf._(
            signatureWidth: signatureWidth,
            signatureHeight: signatureHeight,
            height: height,
            allowClear: allowClear,
            penColor: penColor,
            backgroundColor: backgroundColor,
            dataFormat: dataFormat,
            defaultValue: defaultValue,
            correctAnswer: correctAnswer);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
