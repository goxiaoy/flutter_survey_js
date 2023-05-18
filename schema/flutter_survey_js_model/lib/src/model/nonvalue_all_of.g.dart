// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'nonvalue_all_of.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

abstract class NonvalueAllOfBuilder {
  void replace(NonvalueAllOf other);
  void update(void Function(NonvalueAllOfBuilder) updates);
  String? get title;
  set title(String? title);

  String? get description;
  set description(String? description);

  String? get valueName;
  set valueName(String? valueName);

  String? get enableIf;
  set enableIf(String? enableIf);

  JsonObject? get defaultValue;
  set defaultValue(JsonObject? defaultValue);

  JsonObject? get correctAnswer;
  set correctAnswer(JsonObject? correctAnswer);

  QuestionClearIfInvisible? get clearIfInvisible;
  set clearIfInvisible(QuestionClearIfInvisible? clearIfInvisible);

  bool? get isRequired;
  set isRequired(bool? isRequired);

  String? get requiredErrorText;
  set requiredErrorText(String? requiredErrorText);

  String? get readOnly;
  set readOnly(String? readOnly);

  String? get requiredIf;
  set requiredIf(String? requiredIf);

  ListBuilder<QuestionAllOfValidatorsInner> get validators;
  set validators(ListBuilder<QuestionAllOfValidatorsInner>? validators);

  QuestionTitleLocation? get titleLocation;
  set titleLocation(QuestionTitleLocation? titleLocation);

  String? get showCommentArea;
  set showCommentArea(String? showCommentArea);

  bool? get useDisplayValuesInDynamicTexts;
  set useDisplayValuesInDynamicTexts(bool? useDisplayValuesInDynamicTexts);
}

class _$$NonvalueAllOf extends $NonvalueAllOf {
  @override
  final String? title;
  @override
  final String? description;
  @override
  final String? valueName;
  @override
  final String? enableIf;
  @override
  final JsonObject? defaultValue;
  @override
  final JsonObject? correctAnswer;
  @override
  final QuestionClearIfInvisible? clearIfInvisible;
  @override
  final bool? isRequired;
  @override
  final String? requiredErrorText;
  @override
  final String? readOnly;
  @override
  final String? requiredIf;
  @override
  final BuiltList<QuestionAllOfValidatorsInner>? validators;
  @override
  final QuestionTitleLocation? titleLocation;
  @override
  final String? showCommentArea;
  @override
  final bool? useDisplayValuesInDynamicTexts;

  factory _$$NonvalueAllOf([void Function($NonvalueAllOfBuilder)? updates]) =>
      (new $NonvalueAllOfBuilder()..update(updates))._build();

  _$$NonvalueAllOf._(
      {this.title,
      this.description,
      this.valueName,
      this.enableIf,
      this.defaultValue,
      this.correctAnswer,
      this.clearIfInvisible,
      this.isRequired,
      this.requiredErrorText,
      this.readOnly,
      this.requiredIf,
      this.validators,
      this.titleLocation,
      this.showCommentArea,
      this.useDisplayValuesInDynamicTexts})
      : super._();

  @override
  $NonvalueAllOf rebuild(void Function($NonvalueAllOfBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  $NonvalueAllOfBuilder toBuilder() =>
      new $NonvalueAllOfBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is $NonvalueAllOf &&
        title == other.title &&
        description == other.description &&
        valueName == other.valueName &&
        enableIf == other.enableIf &&
        defaultValue == other.defaultValue &&
        correctAnswer == other.correctAnswer &&
        clearIfInvisible == other.clearIfInvisible &&
        isRequired == other.isRequired &&
        requiredErrorText == other.requiredErrorText &&
        readOnly == other.readOnly &&
        requiredIf == other.requiredIf &&
        validators == other.validators &&
        titleLocation == other.titleLocation &&
        showCommentArea == other.showCommentArea &&
        useDisplayValuesInDynamicTexts == other.useDisplayValuesInDynamicTexts;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, title.hashCode);
    _$hash = $jc(_$hash, description.hashCode);
    _$hash = $jc(_$hash, valueName.hashCode);
    _$hash = $jc(_$hash, enableIf.hashCode);
    _$hash = $jc(_$hash, defaultValue.hashCode);
    _$hash = $jc(_$hash, correctAnswer.hashCode);
    _$hash = $jc(_$hash, clearIfInvisible.hashCode);
    _$hash = $jc(_$hash, isRequired.hashCode);
    _$hash = $jc(_$hash, requiredErrorText.hashCode);
    _$hash = $jc(_$hash, readOnly.hashCode);
    _$hash = $jc(_$hash, requiredIf.hashCode);
    _$hash = $jc(_$hash, validators.hashCode);
    _$hash = $jc(_$hash, titleLocation.hashCode);
    _$hash = $jc(_$hash, showCommentArea.hashCode);
    _$hash = $jc(_$hash, useDisplayValuesInDynamicTexts.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'$NonvalueAllOf')
          ..add('title', title)
          ..add('description', description)
          ..add('valueName', valueName)
          ..add('enableIf', enableIf)
          ..add('defaultValue', defaultValue)
          ..add('correctAnswer', correctAnswer)
          ..add('clearIfInvisible', clearIfInvisible)
          ..add('isRequired', isRequired)
          ..add('requiredErrorText', requiredErrorText)
          ..add('readOnly', readOnly)
          ..add('requiredIf', requiredIf)
          ..add('validators', validators)
          ..add('titleLocation', titleLocation)
          ..add('showCommentArea', showCommentArea)
          ..add(
              'useDisplayValuesInDynamicTexts', useDisplayValuesInDynamicTexts))
        .toString();
  }
}

class $NonvalueAllOfBuilder
    implements
        Builder<$NonvalueAllOf, $NonvalueAllOfBuilder>,
        NonvalueAllOfBuilder {
  _$$NonvalueAllOf? _$v;

  String? _title;
  String? get title => _$this._title;
  set title(covariant String? title) => _$this._title = title;

  String? _description;
  String? get description => _$this._description;
  set description(covariant String? description) =>
      _$this._description = description;

  String? _valueName;
  String? get valueName => _$this._valueName;
  set valueName(covariant String? valueName) => _$this._valueName = valueName;

  String? _enableIf;
  String? get enableIf => _$this._enableIf;
  set enableIf(covariant String? enableIf) => _$this._enableIf = enableIf;

  JsonObject? _defaultValue;
  JsonObject? get defaultValue => _$this._defaultValue;
  set defaultValue(covariant JsonObject? defaultValue) =>
      _$this._defaultValue = defaultValue;

  JsonObject? _correctAnswer;
  JsonObject? get correctAnswer => _$this._correctAnswer;
  set correctAnswer(covariant JsonObject? correctAnswer) =>
      _$this._correctAnswer = correctAnswer;

  QuestionClearIfInvisible? _clearIfInvisible;
  QuestionClearIfInvisible? get clearIfInvisible => _$this._clearIfInvisible;
  set clearIfInvisible(covariant QuestionClearIfInvisible? clearIfInvisible) =>
      _$this._clearIfInvisible = clearIfInvisible;

  bool? _isRequired;
  bool? get isRequired => _$this._isRequired;
  set isRequired(covariant bool? isRequired) => _$this._isRequired = isRequired;

  String? _requiredErrorText;
  String? get requiredErrorText => _$this._requiredErrorText;
  set requiredErrorText(covariant String? requiredErrorText) =>
      _$this._requiredErrorText = requiredErrorText;

  String? _readOnly;
  String? get readOnly => _$this._readOnly;
  set readOnly(covariant String? readOnly) => _$this._readOnly = readOnly;

  String? _requiredIf;
  String? get requiredIf => _$this._requiredIf;
  set requiredIf(covariant String? requiredIf) =>
      _$this._requiredIf = requiredIf;

  ListBuilder<QuestionAllOfValidatorsInner>? _validators;
  ListBuilder<QuestionAllOfValidatorsInner> get validators =>
      _$this._validators ??= new ListBuilder<QuestionAllOfValidatorsInner>();
  set validators(
          covariant ListBuilder<QuestionAllOfValidatorsInner>? validators) =>
      _$this._validators = validators;

  QuestionTitleLocation? _titleLocation;
  QuestionTitleLocation? get titleLocation => _$this._titleLocation;
  set titleLocation(covariant QuestionTitleLocation? titleLocation) =>
      _$this._titleLocation = titleLocation;

  String? _showCommentArea;
  String? get showCommentArea => _$this._showCommentArea;
  set showCommentArea(covariant String? showCommentArea) =>
      _$this._showCommentArea = showCommentArea;

  bool? _useDisplayValuesInDynamicTexts;
  bool? get useDisplayValuesInDynamicTexts =>
      _$this._useDisplayValuesInDynamicTexts;
  set useDisplayValuesInDynamicTexts(
          covariant bool? useDisplayValuesInDynamicTexts) =>
      _$this._useDisplayValuesInDynamicTexts = useDisplayValuesInDynamicTexts;

  $NonvalueAllOfBuilder() {
    $NonvalueAllOf._defaults(this);
  }

  $NonvalueAllOfBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _title = $v.title;
      _description = $v.description;
      _valueName = $v.valueName;
      _enableIf = $v.enableIf;
      _defaultValue = $v.defaultValue;
      _correctAnswer = $v.correctAnswer;
      _clearIfInvisible = $v.clearIfInvisible;
      _isRequired = $v.isRequired;
      _requiredErrorText = $v.requiredErrorText;
      _readOnly = $v.readOnly;
      _requiredIf = $v.requiredIf;
      _validators = $v.validators?.toBuilder();
      _titleLocation = $v.titleLocation;
      _showCommentArea = $v.showCommentArea;
      _useDisplayValuesInDynamicTexts = $v.useDisplayValuesInDynamicTexts;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(covariant $NonvalueAllOf other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$$NonvalueAllOf;
  }

  @override
  void update(void Function($NonvalueAllOfBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  $NonvalueAllOf build() => _build();

  _$$NonvalueAllOf _build() {
    _$$NonvalueAllOf _$result;
    try {
      _$result = _$v ??
          new _$$NonvalueAllOf._(
              title: title,
              description: description,
              valueName: valueName,
              enableIf: enableIf,
              defaultValue: defaultValue,
              correctAnswer: correctAnswer,
              clearIfInvisible: clearIfInvisible,
              isRequired: isRequired,
              requiredErrorText: requiredErrorText,
              readOnly: readOnly,
              requiredIf: requiredIf,
              validators: _validators?.build(),
              titleLocation: titleLocation,
              showCommentArea: showCommentArea,
              useDisplayValuesInDynamicTexts: useDisplayValuesInDynamicTexts);
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'validators';
        _validators?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'$NonvalueAllOf', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
