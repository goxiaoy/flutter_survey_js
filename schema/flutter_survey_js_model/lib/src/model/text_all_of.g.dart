// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'text_all_of.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

abstract class TextAllOfBuilder {
  void replace(TextAllOf other);
  void update(void Function(TextAllOfBuilder) updates);
  TextInputType? get inputType;
  set inputType(TextInputType? inputType);

  num? get size;
  set size(num? size);

  TextTextUpdateMode? get textUpdateMode;
  set textUpdateMode(TextTextUpdateMode? textUpdateMode);

  TextAutocomplete? get autocomplete;
  set autocomplete(TextAutocomplete? autocomplete);

  String? get min;
  set min(String? min);

  String? get max;
  set max(String? max);

  String? get minValueExpression;
  set minValueExpression(String? minValueExpression);

  String? get maxValueExpression;
  set maxValueExpression(String? maxValueExpression);

  String? get minErrorText;
  set minErrorText(String? minErrorText);

  String? get maxErrorText;
  set maxErrorText(String? maxErrorText);

  num? get step;
  set step(num? step);

  num? get maxLength;
  set maxLength(num? maxLength);

  String? get placeholder;
  set placeholder(String? placeholder);

  ListBuilder<String> get dataList;
  set dataList(ListBuilder<String>? dataList);
}

class _$$TextAllOf extends $TextAllOf {
  @override
  final TextInputType? inputType;
  @override
  final num? size;
  @override
  final TextTextUpdateMode? textUpdateMode;
  @override
  final TextAutocomplete? autocomplete;
  @override
  final String? min;
  @override
  final String? max;
  @override
  final String? minValueExpression;
  @override
  final String? maxValueExpression;
  @override
  final String? minErrorText;
  @override
  final String? maxErrorText;
  @override
  final num? step;
  @override
  final num? maxLength;
  @override
  final String? placeholder;
  @override
  final BuiltList<String>? dataList;

  factory _$$TextAllOf([void Function($TextAllOfBuilder)? updates]) =>
      (new $TextAllOfBuilder()..update(updates))._build();

  _$$TextAllOf._(
      {this.inputType,
      this.size,
      this.textUpdateMode,
      this.autocomplete,
      this.min,
      this.max,
      this.minValueExpression,
      this.maxValueExpression,
      this.minErrorText,
      this.maxErrorText,
      this.step,
      this.maxLength,
      this.placeholder,
      this.dataList})
      : super._();

  @override
  $TextAllOf rebuild(void Function($TextAllOfBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  $TextAllOfBuilder toBuilder() => new $TextAllOfBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is $TextAllOf &&
        inputType == other.inputType &&
        size == other.size &&
        textUpdateMode == other.textUpdateMode &&
        autocomplete == other.autocomplete &&
        min == other.min &&
        max == other.max &&
        minValueExpression == other.minValueExpression &&
        maxValueExpression == other.maxValueExpression &&
        minErrorText == other.minErrorText &&
        maxErrorText == other.maxErrorText &&
        step == other.step &&
        maxLength == other.maxLength &&
        placeholder == other.placeholder &&
        dataList == other.dataList;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, inputType.hashCode);
    _$hash = $jc(_$hash, size.hashCode);
    _$hash = $jc(_$hash, textUpdateMode.hashCode);
    _$hash = $jc(_$hash, autocomplete.hashCode);
    _$hash = $jc(_$hash, min.hashCode);
    _$hash = $jc(_$hash, max.hashCode);
    _$hash = $jc(_$hash, minValueExpression.hashCode);
    _$hash = $jc(_$hash, maxValueExpression.hashCode);
    _$hash = $jc(_$hash, minErrorText.hashCode);
    _$hash = $jc(_$hash, maxErrorText.hashCode);
    _$hash = $jc(_$hash, step.hashCode);
    _$hash = $jc(_$hash, maxLength.hashCode);
    _$hash = $jc(_$hash, placeholder.hashCode);
    _$hash = $jc(_$hash, dataList.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'$TextAllOf')
          ..add('inputType', inputType)
          ..add('size', size)
          ..add('textUpdateMode', textUpdateMode)
          ..add('autocomplete', autocomplete)
          ..add('min', min)
          ..add('max', max)
          ..add('minValueExpression', minValueExpression)
          ..add('maxValueExpression', maxValueExpression)
          ..add('minErrorText', minErrorText)
          ..add('maxErrorText', maxErrorText)
          ..add('step', step)
          ..add('maxLength', maxLength)
          ..add('placeholder', placeholder)
          ..add('dataList', dataList))
        .toString();
  }
}

class $TextAllOfBuilder
    implements Builder<$TextAllOf, $TextAllOfBuilder>, TextAllOfBuilder {
  _$$TextAllOf? _$v;

  TextInputType? _inputType;
  TextInputType? get inputType => _$this._inputType;
  set inputType(covariant TextInputType? inputType) =>
      _$this._inputType = inputType;

  num? _size;
  num? get size => _$this._size;
  set size(covariant num? size) => _$this._size = size;

  TextTextUpdateMode? _textUpdateMode;
  TextTextUpdateMode? get textUpdateMode => _$this._textUpdateMode;
  set textUpdateMode(covariant TextTextUpdateMode? textUpdateMode) =>
      _$this._textUpdateMode = textUpdateMode;

  TextAutocomplete? _autocomplete;
  TextAutocomplete? get autocomplete => _$this._autocomplete;
  set autocomplete(covariant TextAutocomplete? autocomplete) =>
      _$this._autocomplete = autocomplete;

  String? _min;
  String? get min => _$this._min;
  set min(covariant String? min) => _$this._min = min;

  String? _max;
  String? get max => _$this._max;
  set max(covariant String? max) => _$this._max = max;

  String? _minValueExpression;
  String? get minValueExpression => _$this._minValueExpression;
  set minValueExpression(covariant String? minValueExpression) =>
      _$this._minValueExpression = minValueExpression;

  String? _maxValueExpression;
  String? get maxValueExpression => _$this._maxValueExpression;
  set maxValueExpression(covariant String? maxValueExpression) =>
      _$this._maxValueExpression = maxValueExpression;

  String? _minErrorText;
  String? get minErrorText => _$this._minErrorText;
  set minErrorText(covariant String? minErrorText) =>
      _$this._minErrorText = minErrorText;

  String? _maxErrorText;
  String? get maxErrorText => _$this._maxErrorText;
  set maxErrorText(covariant String? maxErrorText) =>
      _$this._maxErrorText = maxErrorText;

  num? _step;
  num? get step => _$this._step;
  set step(covariant num? step) => _$this._step = step;

  num? _maxLength;
  num? get maxLength => _$this._maxLength;
  set maxLength(covariant num? maxLength) => _$this._maxLength = maxLength;

  String? _placeholder;
  String? get placeholder => _$this._placeholder;
  set placeholder(covariant String? placeholder) =>
      _$this._placeholder = placeholder;

  ListBuilder<String>? _dataList;
  ListBuilder<String> get dataList =>
      _$this._dataList ??= new ListBuilder<String>();
  set dataList(covariant ListBuilder<String>? dataList) =>
      _$this._dataList = dataList;

  $TextAllOfBuilder() {
    $TextAllOf._defaults(this);
  }

  $TextAllOfBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _inputType = $v.inputType;
      _size = $v.size;
      _textUpdateMode = $v.textUpdateMode;
      _autocomplete = $v.autocomplete;
      _min = $v.min;
      _max = $v.max;
      _minValueExpression = $v.minValueExpression;
      _maxValueExpression = $v.maxValueExpression;
      _minErrorText = $v.minErrorText;
      _maxErrorText = $v.maxErrorText;
      _step = $v.step;
      _maxLength = $v.maxLength;
      _placeholder = $v.placeholder;
      _dataList = $v.dataList?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(covariant $TextAllOf other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$$TextAllOf;
  }

  @override
  void update(void Function($TextAllOfBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  $TextAllOf build() => _build();

  _$$TextAllOf _build() {
    _$$TextAllOf _$result;
    try {
      _$result = _$v ??
          new _$$TextAllOf._(
              inputType: inputType,
              size: size,
              textUpdateMode: textUpdateMode,
              autocomplete: autocomplete,
              min: min,
              max: max,
              minValueExpression: minValueExpression,
              maxValueExpression: maxValueExpression,
              minErrorText: minErrorText,
              maxErrorText: maxErrorText,
              step: step,
              maxLength: maxLength,
              placeholder: placeholder,
              dataList: _dataList?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'dataList';
        _dataList?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'$TextAllOf', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
