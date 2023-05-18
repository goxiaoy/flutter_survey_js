// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'expression_all_of.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

abstract class ExpressionAllOfBuilder {
  void replace(ExpressionAllOf other);
  void update(void Function(ExpressionAllOfBuilder) updates);
  String? get expression;
  set expression(String? expression);

  String? get format;
  set format(String? format);

  ExpressionDisplayStyle? get displayStyle;
  set displayStyle(ExpressionDisplayStyle? displayStyle);

  ExpressionCurrency? get currency;
  set currency(ExpressionCurrency? currency);

  num? get maximumFractionDigits;
  set maximumFractionDigits(num? maximumFractionDigits);

  num? get minimumFractionDigits;
  set minimumFractionDigits(num? minimumFractionDigits);

  bool? get useGrouping;
  set useGrouping(bool? useGrouping);

  String? get enableIf;
  set enableIf(String? enableIf);

  bool? get isRequired;
  set isRequired(bool? isRequired);

  String? get readOnly;
  set readOnly(String? readOnly);

  String? get requiredErrorText;
  set requiredErrorText(String? requiredErrorText);

  String? get defaultValueExpression;
  set defaultValueExpression(String? defaultValueExpression);

  JsonObject? get defaultValue;
  set defaultValue(JsonObject? defaultValue);

  JsonObject? get correctAnswer;
  set correctAnswer(JsonObject? correctAnswer);

  String? get requiredIf;
  set requiredIf(String? requiredIf);
}

class _$$ExpressionAllOf extends $ExpressionAllOf {
  @override
  final String? expression;
  @override
  final String? format;
  @override
  final ExpressionDisplayStyle? displayStyle;
  @override
  final ExpressionCurrency? currency;
  @override
  final num? maximumFractionDigits;
  @override
  final num? minimumFractionDigits;
  @override
  final bool? useGrouping;
  @override
  final String? enableIf;
  @override
  final bool? isRequired;
  @override
  final String? readOnly;
  @override
  final String? requiredErrorText;
  @override
  final String? defaultValueExpression;
  @override
  final JsonObject? defaultValue;
  @override
  final JsonObject? correctAnswer;
  @override
  final String? requiredIf;

  factory _$$ExpressionAllOf(
          [void Function($ExpressionAllOfBuilder)? updates]) =>
      (new $ExpressionAllOfBuilder()..update(updates))._build();

  _$$ExpressionAllOf._(
      {this.expression,
      this.format,
      this.displayStyle,
      this.currency,
      this.maximumFractionDigits,
      this.minimumFractionDigits,
      this.useGrouping,
      this.enableIf,
      this.isRequired,
      this.readOnly,
      this.requiredErrorText,
      this.defaultValueExpression,
      this.defaultValue,
      this.correctAnswer,
      this.requiredIf})
      : super._();

  @override
  $ExpressionAllOf rebuild(void Function($ExpressionAllOfBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  $ExpressionAllOfBuilder toBuilder() =>
      new $ExpressionAllOfBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is $ExpressionAllOf &&
        expression == other.expression &&
        format == other.format &&
        displayStyle == other.displayStyle &&
        currency == other.currency &&
        maximumFractionDigits == other.maximumFractionDigits &&
        minimumFractionDigits == other.minimumFractionDigits &&
        useGrouping == other.useGrouping &&
        enableIf == other.enableIf &&
        isRequired == other.isRequired &&
        readOnly == other.readOnly &&
        requiredErrorText == other.requiredErrorText &&
        defaultValueExpression == other.defaultValueExpression &&
        defaultValue == other.defaultValue &&
        correctAnswer == other.correctAnswer &&
        requiredIf == other.requiredIf;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, expression.hashCode);
    _$hash = $jc(_$hash, format.hashCode);
    _$hash = $jc(_$hash, displayStyle.hashCode);
    _$hash = $jc(_$hash, currency.hashCode);
    _$hash = $jc(_$hash, maximumFractionDigits.hashCode);
    _$hash = $jc(_$hash, minimumFractionDigits.hashCode);
    _$hash = $jc(_$hash, useGrouping.hashCode);
    _$hash = $jc(_$hash, enableIf.hashCode);
    _$hash = $jc(_$hash, isRequired.hashCode);
    _$hash = $jc(_$hash, readOnly.hashCode);
    _$hash = $jc(_$hash, requiredErrorText.hashCode);
    _$hash = $jc(_$hash, defaultValueExpression.hashCode);
    _$hash = $jc(_$hash, defaultValue.hashCode);
    _$hash = $jc(_$hash, correctAnswer.hashCode);
    _$hash = $jc(_$hash, requiredIf.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'$ExpressionAllOf')
          ..add('expression', expression)
          ..add('format', format)
          ..add('displayStyle', displayStyle)
          ..add('currency', currency)
          ..add('maximumFractionDigits', maximumFractionDigits)
          ..add('minimumFractionDigits', minimumFractionDigits)
          ..add('useGrouping', useGrouping)
          ..add('enableIf', enableIf)
          ..add('isRequired', isRequired)
          ..add('readOnly', readOnly)
          ..add('requiredErrorText', requiredErrorText)
          ..add('defaultValueExpression', defaultValueExpression)
          ..add('defaultValue', defaultValue)
          ..add('correctAnswer', correctAnswer)
          ..add('requiredIf', requiredIf))
        .toString();
  }
}

class $ExpressionAllOfBuilder
    implements
        Builder<$ExpressionAllOf, $ExpressionAllOfBuilder>,
        ExpressionAllOfBuilder {
  _$$ExpressionAllOf? _$v;

  String? _expression;
  String? get expression => _$this._expression;
  set expression(covariant String? expression) =>
      _$this._expression = expression;

  String? _format;
  String? get format => _$this._format;
  set format(covariant String? format) => _$this._format = format;

  ExpressionDisplayStyle? _displayStyle;
  ExpressionDisplayStyle? get displayStyle => _$this._displayStyle;
  set displayStyle(covariant ExpressionDisplayStyle? displayStyle) =>
      _$this._displayStyle = displayStyle;

  ExpressionCurrency? _currency;
  ExpressionCurrency? get currency => _$this._currency;
  set currency(covariant ExpressionCurrency? currency) =>
      _$this._currency = currency;

  num? _maximumFractionDigits;
  num? get maximumFractionDigits => _$this._maximumFractionDigits;
  set maximumFractionDigits(covariant num? maximumFractionDigits) =>
      _$this._maximumFractionDigits = maximumFractionDigits;

  num? _minimumFractionDigits;
  num? get minimumFractionDigits => _$this._minimumFractionDigits;
  set minimumFractionDigits(covariant num? minimumFractionDigits) =>
      _$this._minimumFractionDigits = minimumFractionDigits;

  bool? _useGrouping;
  bool? get useGrouping => _$this._useGrouping;
  set useGrouping(covariant bool? useGrouping) =>
      _$this._useGrouping = useGrouping;

  String? _enableIf;
  String? get enableIf => _$this._enableIf;
  set enableIf(covariant String? enableIf) => _$this._enableIf = enableIf;

  bool? _isRequired;
  bool? get isRequired => _$this._isRequired;
  set isRequired(covariant bool? isRequired) => _$this._isRequired = isRequired;

  String? _readOnly;
  String? get readOnly => _$this._readOnly;
  set readOnly(covariant String? readOnly) => _$this._readOnly = readOnly;

  String? _requiredErrorText;
  String? get requiredErrorText => _$this._requiredErrorText;
  set requiredErrorText(covariant String? requiredErrorText) =>
      _$this._requiredErrorText = requiredErrorText;

  String? _defaultValueExpression;
  String? get defaultValueExpression => _$this._defaultValueExpression;
  set defaultValueExpression(covariant String? defaultValueExpression) =>
      _$this._defaultValueExpression = defaultValueExpression;

  JsonObject? _defaultValue;
  JsonObject? get defaultValue => _$this._defaultValue;
  set defaultValue(covariant JsonObject? defaultValue) =>
      _$this._defaultValue = defaultValue;

  JsonObject? _correctAnswer;
  JsonObject? get correctAnswer => _$this._correctAnswer;
  set correctAnswer(covariant JsonObject? correctAnswer) =>
      _$this._correctAnswer = correctAnswer;

  String? _requiredIf;
  String? get requiredIf => _$this._requiredIf;
  set requiredIf(covariant String? requiredIf) =>
      _$this._requiredIf = requiredIf;

  $ExpressionAllOfBuilder() {
    $ExpressionAllOf._defaults(this);
  }

  $ExpressionAllOfBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _expression = $v.expression;
      _format = $v.format;
      _displayStyle = $v.displayStyle;
      _currency = $v.currency;
      _maximumFractionDigits = $v.maximumFractionDigits;
      _minimumFractionDigits = $v.minimumFractionDigits;
      _useGrouping = $v.useGrouping;
      _enableIf = $v.enableIf;
      _isRequired = $v.isRequired;
      _readOnly = $v.readOnly;
      _requiredErrorText = $v.requiredErrorText;
      _defaultValueExpression = $v.defaultValueExpression;
      _defaultValue = $v.defaultValue;
      _correctAnswer = $v.correctAnswer;
      _requiredIf = $v.requiredIf;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(covariant $ExpressionAllOf other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$$ExpressionAllOf;
  }

  @override
  void update(void Function($ExpressionAllOfBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  $ExpressionAllOf build() => _build();

  _$$ExpressionAllOf _build() {
    final _$result = _$v ??
        new _$$ExpressionAllOf._(
            expression: expression,
            format: format,
            displayStyle: displayStyle,
            currency: currency,
            maximumFractionDigits: maximumFractionDigits,
            minimumFractionDigits: minimumFractionDigits,
            useGrouping: useGrouping,
            enableIf: enableIf,
            isRequired: isRequired,
            readOnly: readOnly,
            requiredErrorText: requiredErrorText,
            defaultValueExpression: defaultValueExpression,
            defaultValue: defaultValue,
            correctAnswer: correctAnswer,
            requiredIf: requiredIf);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
