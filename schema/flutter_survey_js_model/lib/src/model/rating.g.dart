// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'rating.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

abstract class RatingBuilder implements QuestionBuilder {
  void replace(covariant Rating other);
  void update(void Function(RatingBuilder) updates);
  bool? get displayRateDescriptionsAsExtremeItems;
  set displayRateDescriptionsAsExtremeItems(
      covariant bool? displayRateDescriptionsAsExtremeItems);

  RatingRateColorMode? get rateColorMode;
  set rateColorMode(covariant RatingRateColorMode? rateColorMode);

  num? get rateStep;
  set rateStep(covariant num? rateStep);

  ListBuilder<MatrixdropdownAllOfRowsInner> get rateValues;
  set rateValues(
      covariant ListBuilder<MatrixdropdownAllOfRowsInner>? rateValues);

  num? get rateMin;
  set rateMin(covariant num? rateMin);

  RatingDisplayMode? get displayMode;
  set displayMode(covariant RatingDisplayMode? displayMode);

  RatingScaleColorMode? get scaleColorMode;
  set scaleColorMode(covariant RatingScaleColorMode? scaleColorMode);

  RatingAutoGenerate? get autoGenerate;
  set autoGenerate(covariant RatingAutoGenerate? autoGenerate);

  RatingRateType? get rateType;
  set rateType(covariant RatingRateType? rateType);

  num? get rateCount;
  set rateCount(covariant num? rateCount);

  SurveyTitleBuilder get minRateDescription;
  set minRateDescription(covariant SurveyTitleBuilder? minRateDescription);

  SurveyTitleBuilder get maxRateDescription;
  set maxRateDescription(covariant SurveyTitleBuilder? maxRateDescription);

  num? get rateMax;
  set rateMax(covariant num? rateMax);

  bool? get useDisplayValuesInDynamicTexts;
  set useDisplayValuesInDynamicTexts(
      covariant bool? useDisplayValuesInDynamicTexts);

  QuestionIndent? get indent;
  set indent(covariant QuestionIndent? indent);

  String? get valueName;
  set valueName(covariant String? valueName);

  JsonObject? get defaultValue;
  set defaultValue(covariant JsonObject? defaultValue);

  ListBuilder<QuestionAllOfValidatorsInner> get validators;
  set validators(
      covariant ListBuilder<QuestionAllOfValidatorsInner>? validators);

  String? get bindings;
  set bindings(covariant String? bindings);

  SurveyTitleBuilder get description;
  set description(covariant SurveyTitleBuilder? description);

  SurveyTitleBuilder get title;
  set title(covariant SurveyTitleBuilder? title);

  SurveyTitleBuilder get commentText;
  set commentText(covariant SurveyTitleBuilder? commentText);

  QuestionClearIfInvisible? get clearIfInvisible;
  set clearIfInvisible(covariant QuestionClearIfInvisible? clearIfInvisible);

  bool? get startWithNewLine;
  set startWithNewLine(covariant bool? startWithNewLine);

  QuestionDescriptionLocation? get descriptionLocation;
  set descriptionLocation(
      covariant QuestionDescriptionLocation? descriptionLocation);

  QuestionState? get state;
  set state(covariant QuestionState? state);

  bool? get hideNumber;
  set hideNumber(covariant bool? hideNumber);

  JsonObject? get correctAnswer;
  set correctAnswer(covariant JsonObject? correctAnswer);

  SurveyLogoWidthBuilder get maxWidth;
  set maxWidth(covariant SurveyLogoWidthBuilder? maxWidth);

  bool? get showCommentArea;
  set showCommentArea(covariant bool? showCommentArea);

  String? get enableIf;
  set enableIf(covariant String? enableIf);

  bool? get isRequired;
  set isRequired(covariant bool? isRequired);

  bool? get visible;
  set visible(covariant bool? visible);

  SurveyTitleBuilder get commentPlaceholder;
  set commentPlaceholder(covariant SurveyTitleBuilder? commentPlaceholder);

  String? get defaultValueExpression;
  set defaultValueExpression(covariant String? defaultValueExpression);

  String? get requiredIf;
  set requiredIf(covariant String? requiredIf);

  String? get renderAs;
  set renderAs(covariant String? renderAs);

  SurveyLogoWidthBuilder get minWidth;
  set minWidth(covariant SurveyLogoWidthBuilder? minWidth);

  bool? get readOnly;
  set readOnly(covariant bool? readOnly);

  QuestionTitleLocation? get titleLocation;
  set titleLocation(covariant QuestionTitleLocation? titleLocation);

  SurveyTitleBuilder get requiredErrorText;
  set requiredErrorText(covariant SurveyTitleBuilder? requiredErrorText);

  String? get visibleIf;
  set visibleIf(covariant String? visibleIf);

  SurveyLogoWidthBuilder get width;
  set width(covariant SurveyLogoWidthBuilder? width);

  String? get page;
  set page(covariant String? page);

  String? get type;
  set type(covariant String? type);

  String? get name;
  set name(covariant String? name);
}

class _$$Rating extends $Rating {
  @override
  final bool? displayRateDescriptionsAsExtremeItems;
  @override
  final RatingRateColorMode? rateColorMode;
  @override
  final num? rateStep;
  @override
  final BuiltList<MatrixdropdownAllOfRowsInner>? rateValues;
  @override
  final num? rateMin;
  @override
  final RatingDisplayMode? displayMode;
  @override
  final RatingScaleColorMode? scaleColorMode;
  @override
  final RatingAutoGenerate? autoGenerate;
  @override
  final RatingRateType? rateType;
  @override
  final num? rateCount;
  @override
  final SurveyTitle? minRateDescription;
  @override
  final SurveyTitle? maxRateDescription;
  @override
  final num? rateMax;
  @override
  final bool? useDisplayValuesInDynamicTexts;
  @override
  final QuestionIndent? indent;
  @override
  final String? valueName;
  @override
  final JsonObject? defaultValue;
  @override
  final BuiltList<QuestionAllOfValidatorsInner>? validators;
  @override
  final String? bindings;
  @override
  final SurveyTitle? description;
  @override
  final SurveyTitle? title;
  @override
  final SurveyTitle? commentText;
  @override
  final QuestionClearIfInvisible? clearIfInvisible;
  @override
  final bool? startWithNewLine;
  @override
  final QuestionDescriptionLocation? descriptionLocation;
  @override
  final QuestionState? state;
  @override
  final bool? hideNumber;
  @override
  final JsonObject? correctAnswer;
  @override
  final SurveyLogoWidth? maxWidth;
  @override
  final bool? showCommentArea;
  @override
  final String? enableIf;
  @override
  final bool? isRequired;
  @override
  final bool? visible;
  @override
  final SurveyTitle? commentPlaceholder;
  @override
  final String? defaultValueExpression;
  @override
  final String? requiredIf;
  @override
  final String? renderAs;
  @override
  final SurveyLogoWidth? minWidth;
  @override
  final bool? readOnly;
  @override
  final QuestionTitleLocation? titleLocation;
  @override
  final SurveyTitle? requiredErrorText;
  @override
  final String? visibleIf;
  @override
  final SurveyLogoWidth? width;
  @override
  final String? page;
  @override
  final String? type;
  @override
  final String? name;

  factory _$$Rating([void Function($RatingBuilder)? updates]) =>
      (new $RatingBuilder()..update(updates))._build();

  _$$Rating._(
      {this.displayRateDescriptionsAsExtremeItems,
      this.rateColorMode,
      this.rateStep,
      this.rateValues,
      this.rateMin,
      this.displayMode,
      this.scaleColorMode,
      this.autoGenerate,
      this.rateType,
      this.rateCount,
      this.minRateDescription,
      this.maxRateDescription,
      this.rateMax,
      this.useDisplayValuesInDynamicTexts,
      this.indent,
      this.valueName,
      this.defaultValue,
      this.validators,
      this.bindings,
      this.description,
      this.title,
      this.commentText,
      this.clearIfInvisible,
      this.startWithNewLine,
      this.descriptionLocation,
      this.state,
      this.hideNumber,
      this.correctAnswer,
      this.maxWidth,
      this.showCommentArea,
      this.enableIf,
      this.isRequired,
      this.visible,
      this.commentPlaceholder,
      this.defaultValueExpression,
      this.requiredIf,
      this.renderAs,
      this.minWidth,
      this.readOnly,
      this.titleLocation,
      this.requiredErrorText,
      this.visibleIf,
      this.width,
      this.page,
      this.type,
      this.name})
      : super._();

  @override
  $Rating rebuild(void Function($RatingBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  $RatingBuilder toBuilder() => new $RatingBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is $Rating &&
        displayRateDescriptionsAsExtremeItems ==
            other.displayRateDescriptionsAsExtremeItems &&
        rateColorMode == other.rateColorMode &&
        rateStep == other.rateStep &&
        rateValues == other.rateValues &&
        rateMin == other.rateMin &&
        displayMode == other.displayMode &&
        scaleColorMode == other.scaleColorMode &&
        autoGenerate == other.autoGenerate &&
        rateType == other.rateType &&
        rateCount == other.rateCount &&
        minRateDescription == other.minRateDescription &&
        maxRateDescription == other.maxRateDescription &&
        rateMax == other.rateMax &&
        useDisplayValuesInDynamicTexts ==
            other.useDisplayValuesInDynamicTexts &&
        indent == other.indent &&
        valueName == other.valueName &&
        defaultValue == other.defaultValue &&
        validators == other.validators &&
        bindings == other.bindings &&
        description == other.description &&
        title == other.title &&
        commentText == other.commentText &&
        clearIfInvisible == other.clearIfInvisible &&
        startWithNewLine == other.startWithNewLine &&
        descriptionLocation == other.descriptionLocation &&
        state == other.state &&
        hideNumber == other.hideNumber &&
        correctAnswer == other.correctAnswer &&
        maxWidth == other.maxWidth &&
        showCommentArea == other.showCommentArea &&
        enableIf == other.enableIf &&
        isRequired == other.isRequired &&
        visible == other.visible &&
        commentPlaceholder == other.commentPlaceholder &&
        defaultValueExpression == other.defaultValueExpression &&
        requiredIf == other.requiredIf &&
        renderAs == other.renderAs &&
        minWidth == other.minWidth &&
        readOnly == other.readOnly &&
        titleLocation == other.titleLocation &&
        requiredErrorText == other.requiredErrorText &&
        visibleIf == other.visibleIf &&
        width == other.width &&
        page == other.page &&
        type == other.type &&
        name == other.name;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, displayRateDescriptionsAsExtremeItems.hashCode);
    _$hash = $jc(_$hash, rateColorMode.hashCode);
    _$hash = $jc(_$hash, rateStep.hashCode);
    _$hash = $jc(_$hash, rateValues.hashCode);
    _$hash = $jc(_$hash, rateMin.hashCode);
    _$hash = $jc(_$hash, displayMode.hashCode);
    _$hash = $jc(_$hash, scaleColorMode.hashCode);
    _$hash = $jc(_$hash, autoGenerate.hashCode);
    _$hash = $jc(_$hash, rateType.hashCode);
    _$hash = $jc(_$hash, rateCount.hashCode);
    _$hash = $jc(_$hash, minRateDescription.hashCode);
    _$hash = $jc(_$hash, maxRateDescription.hashCode);
    _$hash = $jc(_$hash, rateMax.hashCode);
    _$hash = $jc(_$hash, useDisplayValuesInDynamicTexts.hashCode);
    _$hash = $jc(_$hash, indent.hashCode);
    _$hash = $jc(_$hash, valueName.hashCode);
    _$hash = $jc(_$hash, defaultValue.hashCode);
    _$hash = $jc(_$hash, validators.hashCode);
    _$hash = $jc(_$hash, bindings.hashCode);
    _$hash = $jc(_$hash, description.hashCode);
    _$hash = $jc(_$hash, title.hashCode);
    _$hash = $jc(_$hash, commentText.hashCode);
    _$hash = $jc(_$hash, clearIfInvisible.hashCode);
    _$hash = $jc(_$hash, startWithNewLine.hashCode);
    _$hash = $jc(_$hash, descriptionLocation.hashCode);
    _$hash = $jc(_$hash, state.hashCode);
    _$hash = $jc(_$hash, hideNumber.hashCode);
    _$hash = $jc(_$hash, correctAnswer.hashCode);
    _$hash = $jc(_$hash, maxWidth.hashCode);
    _$hash = $jc(_$hash, showCommentArea.hashCode);
    _$hash = $jc(_$hash, enableIf.hashCode);
    _$hash = $jc(_$hash, isRequired.hashCode);
    _$hash = $jc(_$hash, visible.hashCode);
    _$hash = $jc(_$hash, commentPlaceholder.hashCode);
    _$hash = $jc(_$hash, defaultValueExpression.hashCode);
    _$hash = $jc(_$hash, requiredIf.hashCode);
    _$hash = $jc(_$hash, renderAs.hashCode);
    _$hash = $jc(_$hash, minWidth.hashCode);
    _$hash = $jc(_$hash, readOnly.hashCode);
    _$hash = $jc(_$hash, titleLocation.hashCode);
    _$hash = $jc(_$hash, requiredErrorText.hashCode);
    _$hash = $jc(_$hash, visibleIf.hashCode);
    _$hash = $jc(_$hash, width.hashCode);
    _$hash = $jc(_$hash, page.hashCode);
    _$hash = $jc(_$hash, type.hashCode);
    _$hash = $jc(_$hash, name.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'$Rating')
          ..add('displayRateDescriptionsAsExtremeItems',
              displayRateDescriptionsAsExtremeItems)
          ..add('rateColorMode', rateColorMode)
          ..add('rateStep', rateStep)
          ..add('rateValues', rateValues)
          ..add('rateMin', rateMin)
          ..add('displayMode', displayMode)
          ..add('scaleColorMode', scaleColorMode)
          ..add('autoGenerate', autoGenerate)
          ..add('rateType', rateType)
          ..add('rateCount', rateCount)
          ..add('minRateDescription', minRateDescription)
          ..add('maxRateDescription', maxRateDescription)
          ..add('rateMax', rateMax)
          ..add(
              'useDisplayValuesInDynamicTexts', useDisplayValuesInDynamicTexts)
          ..add('indent', indent)
          ..add('valueName', valueName)
          ..add('defaultValue', defaultValue)
          ..add('validators', validators)
          ..add('bindings', bindings)
          ..add('description', description)
          ..add('title', title)
          ..add('commentText', commentText)
          ..add('clearIfInvisible', clearIfInvisible)
          ..add('startWithNewLine', startWithNewLine)
          ..add('descriptionLocation', descriptionLocation)
          ..add('state', state)
          ..add('hideNumber', hideNumber)
          ..add('correctAnswer', correctAnswer)
          ..add('maxWidth', maxWidth)
          ..add('showCommentArea', showCommentArea)
          ..add('enableIf', enableIf)
          ..add('isRequired', isRequired)
          ..add('visible', visible)
          ..add('commentPlaceholder', commentPlaceholder)
          ..add('defaultValueExpression', defaultValueExpression)
          ..add('requiredIf', requiredIf)
          ..add('renderAs', renderAs)
          ..add('minWidth', minWidth)
          ..add('readOnly', readOnly)
          ..add('titleLocation', titleLocation)
          ..add('requiredErrorText', requiredErrorText)
          ..add('visibleIf', visibleIf)
          ..add('width', width)
          ..add('page', page)
          ..add('type', type)
          ..add('name', name))
        .toString();
  }
}

class $RatingBuilder
    implements Builder<$Rating, $RatingBuilder>, RatingBuilder {
  _$$Rating? _$v;

  bool? _displayRateDescriptionsAsExtremeItems;
  bool? get displayRateDescriptionsAsExtremeItems =>
      _$this._displayRateDescriptionsAsExtremeItems;
  set displayRateDescriptionsAsExtremeItems(
          covariant bool? displayRateDescriptionsAsExtremeItems) =>
      _$this._displayRateDescriptionsAsExtremeItems =
          displayRateDescriptionsAsExtremeItems;

  RatingRateColorMode? _rateColorMode;
  RatingRateColorMode? get rateColorMode => _$this._rateColorMode;
  set rateColorMode(covariant RatingRateColorMode? rateColorMode) =>
      _$this._rateColorMode = rateColorMode;

  num? _rateStep;
  num? get rateStep => _$this._rateStep;
  set rateStep(covariant num? rateStep) => _$this._rateStep = rateStep;

  ListBuilder<MatrixdropdownAllOfRowsInner>? _rateValues;
  ListBuilder<MatrixdropdownAllOfRowsInner> get rateValues =>
      _$this._rateValues ??= new ListBuilder<MatrixdropdownAllOfRowsInner>();
  set rateValues(
          covariant ListBuilder<MatrixdropdownAllOfRowsInner>? rateValues) =>
      _$this._rateValues = rateValues;

  num? _rateMin;
  num? get rateMin => _$this._rateMin;
  set rateMin(covariant num? rateMin) => _$this._rateMin = rateMin;

  RatingDisplayMode? _displayMode;
  RatingDisplayMode? get displayMode => _$this._displayMode;
  set displayMode(covariant RatingDisplayMode? displayMode) =>
      _$this._displayMode = displayMode;

  RatingScaleColorMode? _scaleColorMode;
  RatingScaleColorMode? get scaleColorMode => _$this._scaleColorMode;
  set scaleColorMode(covariant RatingScaleColorMode? scaleColorMode) =>
      _$this._scaleColorMode = scaleColorMode;

  RatingAutoGenerate? _autoGenerate;
  RatingAutoGenerate? get autoGenerate => _$this._autoGenerate;
  set autoGenerate(covariant RatingAutoGenerate? autoGenerate) =>
      _$this._autoGenerate = autoGenerate;

  RatingRateType? _rateType;
  RatingRateType? get rateType => _$this._rateType;
  set rateType(covariant RatingRateType? rateType) =>
      _$this._rateType = rateType;

  num? _rateCount;
  num? get rateCount => _$this._rateCount;
  set rateCount(covariant num? rateCount) => _$this._rateCount = rateCount;

  SurveyTitleBuilder? _minRateDescription;
  SurveyTitleBuilder get minRateDescription =>
      _$this._minRateDescription ??= new SurveyTitleBuilder();
  set minRateDescription(covariant SurveyTitleBuilder? minRateDescription) =>
      _$this._minRateDescription = minRateDescription;

  SurveyTitleBuilder? _maxRateDescription;
  SurveyTitleBuilder get maxRateDescription =>
      _$this._maxRateDescription ??= new SurveyTitleBuilder();
  set maxRateDescription(covariant SurveyTitleBuilder? maxRateDescription) =>
      _$this._maxRateDescription = maxRateDescription;

  num? _rateMax;
  num? get rateMax => _$this._rateMax;
  set rateMax(covariant num? rateMax) => _$this._rateMax = rateMax;

  bool? _useDisplayValuesInDynamicTexts;
  bool? get useDisplayValuesInDynamicTexts =>
      _$this._useDisplayValuesInDynamicTexts;
  set useDisplayValuesInDynamicTexts(
          covariant bool? useDisplayValuesInDynamicTexts) =>
      _$this._useDisplayValuesInDynamicTexts = useDisplayValuesInDynamicTexts;

  QuestionIndent? _indent;
  QuestionIndent? get indent => _$this._indent;
  set indent(covariant QuestionIndent? indent) => _$this._indent = indent;

  String? _valueName;
  String? get valueName => _$this._valueName;
  set valueName(covariant String? valueName) => _$this._valueName = valueName;

  JsonObject? _defaultValue;
  JsonObject? get defaultValue => _$this._defaultValue;
  set defaultValue(covariant JsonObject? defaultValue) =>
      _$this._defaultValue = defaultValue;

  ListBuilder<QuestionAllOfValidatorsInner>? _validators;
  ListBuilder<QuestionAllOfValidatorsInner> get validators =>
      _$this._validators ??= new ListBuilder<QuestionAllOfValidatorsInner>();
  set validators(
          covariant ListBuilder<QuestionAllOfValidatorsInner>? validators) =>
      _$this._validators = validators;

  String? _bindings;
  String? get bindings => _$this._bindings;
  set bindings(covariant String? bindings) => _$this._bindings = bindings;

  SurveyTitleBuilder? _description;
  SurveyTitleBuilder get description =>
      _$this._description ??= new SurveyTitleBuilder();
  set description(covariant SurveyTitleBuilder? description) =>
      _$this._description = description;

  SurveyTitleBuilder? _title;
  SurveyTitleBuilder get title => _$this._title ??= new SurveyTitleBuilder();
  set title(covariant SurveyTitleBuilder? title) => _$this._title = title;

  SurveyTitleBuilder? _commentText;
  SurveyTitleBuilder get commentText =>
      _$this._commentText ??= new SurveyTitleBuilder();
  set commentText(covariant SurveyTitleBuilder? commentText) =>
      _$this._commentText = commentText;

  QuestionClearIfInvisible? _clearIfInvisible;
  QuestionClearIfInvisible? get clearIfInvisible => _$this._clearIfInvisible;
  set clearIfInvisible(covariant QuestionClearIfInvisible? clearIfInvisible) =>
      _$this._clearIfInvisible = clearIfInvisible;

  bool? _startWithNewLine;
  bool? get startWithNewLine => _$this._startWithNewLine;
  set startWithNewLine(covariant bool? startWithNewLine) =>
      _$this._startWithNewLine = startWithNewLine;

  QuestionDescriptionLocation? _descriptionLocation;
  QuestionDescriptionLocation? get descriptionLocation =>
      _$this._descriptionLocation;
  set descriptionLocation(
          covariant QuestionDescriptionLocation? descriptionLocation) =>
      _$this._descriptionLocation = descriptionLocation;

  QuestionState? _state;
  QuestionState? get state => _$this._state;
  set state(covariant QuestionState? state) => _$this._state = state;

  bool? _hideNumber;
  bool? get hideNumber => _$this._hideNumber;
  set hideNumber(covariant bool? hideNumber) => _$this._hideNumber = hideNumber;

  JsonObject? _correctAnswer;
  JsonObject? get correctAnswer => _$this._correctAnswer;
  set correctAnswer(covariant JsonObject? correctAnswer) =>
      _$this._correctAnswer = correctAnswer;

  SurveyLogoWidthBuilder? _maxWidth;
  SurveyLogoWidthBuilder get maxWidth =>
      _$this._maxWidth ??= new SurveyLogoWidthBuilder();
  set maxWidth(covariant SurveyLogoWidthBuilder? maxWidth) =>
      _$this._maxWidth = maxWidth;

  bool? _showCommentArea;
  bool? get showCommentArea => _$this._showCommentArea;
  set showCommentArea(covariant bool? showCommentArea) =>
      _$this._showCommentArea = showCommentArea;

  String? _enableIf;
  String? get enableIf => _$this._enableIf;
  set enableIf(covariant String? enableIf) => _$this._enableIf = enableIf;

  bool? _isRequired;
  bool? get isRequired => _$this._isRequired;
  set isRequired(covariant bool? isRequired) => _$this._isRequired = isRequired;

  bool? _visible;
  bool? get visible => _$this._visible;
  set visible(covariant bool? visible) => _$this._visible = visible;

  SurveyTitleBuilder? _commentPlaceholder;
  SurveyTitleBuilder get commentPlaceholder =>
      _$this._commentPlaceholder ??= new SurveyTitleBuilder();
  set commentPlaceholder(covariant SurveyTitleBuilder? commentPlaceholder) =>
      _$this._commentPlaceholder = commentPlaceholder;

  String? _defaultValueExpression;
  String? get defaultValueExpression => _$this._defaultValueExpression;
  set defaultValueExpression(covariant String? defaultValueExpression) =>
      _$this._defaultValueExpression = defaultValueExpression;

  String? _requiredIf;
  String? get requiredIf => _$this._requiredIf;
  set requiredIf(covariant String? requiredIf) =>
      _$this._requiredIf = requiredIf;

  String? _renderAs;
  String? get renderAs => _$this._renderAs;
  set renderAs(covariant String? renderAs) => _$this._renderAs = renderAs;

  SurveyLogoWidthBuilder? _minWidth;
  SurveyLogoWidthBuilder get minWidth =>
      _$this._minWidth ??= new SurveyLogoWidthBuilder();
  set minWidth(covariant SurveyLogoWidthBuilder? minWidth) =>
      _$this._minWidth = minWidth;

  bool? _readOnly;
  bool? get readOnly => _$this._readOnly;
  set readOnly(covariant bool? readOnly) => _$this._readOnly = readOnly;

  QuestionTitleLocation? _titleLocation;
  QuestionTitleLocation? get titleLocation => _$this._titleLocation;
  set titleLocation(covariant QuestionTitleLocation? titleLocation) =>
      _$this._titleLocation = titleLocation;

  SurveyTitleBuilder? _requiredErrorText;
  SurveyTitleBuilder get requiredErrorText =>
      _$this._requiredErrorText ??= new SurveyTitleBuilder();
  set requiredErrorText(covariant SurveyTitleBuilder? requiredErrorText) =>
      _$this._requiredErrorText = requiredErrorText;

  String? _visibleIf;
  String? get visibleIf => _$this._visibleIf;
  set visibleIf(covariant String? visibleIf) => _$this._visibleIf = visibleIf;

  SurveyLogoWidthBuilder? _width;
  SurveyLogoWidthBuilder get width =>
      _$this._width ??= new SurveyLogoWidthBuilder();
  set width(covariant SurveyLogoWidthBuilder? width) => _$this._width = width;

  String? _page;
  String? get page => _$this._page;
  set page(covariant String? page) => _$this._page = page;

  String? _type;
  String? get type => _$this._type;
  set type(covariant String? type) => _$this._type = type;

  String? _name;
  String? get name => _$this._name;
  set name(covariant String? name) => _$this._name = name;

  $RatingBuilder() {
    $Rating._defaults(this);
  }

  $RatingBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _displayRateDescriptionsAsExtremeItems =
          $v.displayRateDescriptionsAsExtremeItems;
      _rateColorMode = $v.rateColorMode;
      _rateStep = $v.rateStep;
      _rateValues = $v.rateValues?.toBuilder();
      _rateMin = $v.rateMin;
      _displayMode = $v.displayMode;
      _scaleColorMode = $v.scaleColorMode;
      _autoGenerate = $v.autoGenerate;
      _rateType = $v.rateType;
      _rateCount = $v.rateCount;
      _minRateDescription = $v.minRateDescription?.toBuilder();
      _maxRateDescription = $v.maxRateDescription?.toBuilder();
      _rateMax = $v.rateMax;
      _useDisplayValuesInDynamicTexts = $v.useDisplayValuesInDynamicTexts;
      _indent = $v.indent;
      _valueName = $v.valueName;
      _defaultValue = $v.defaultValue;
      _validators = $v.validators?.toBuilder();
      _bindings = $v.bindings;
      _description = $v.description?.toBuilder();
      _title = $v.title?.toBuilder();
      _commentText = $v.commentText?.toBuilder();
      _clearIfInvisible = $v.clearIfInvisible;
      _startWithNewLine = $v.startWithNewLine;
      _descriptionLocation = $v.descriptionLocation;
      _state = $v.state;
      _hideNumber = $v.hideNumber;
      _correctAnswer = $v.correctAnswer;
      _maxWidth = $v.maxWidth?.toBuilder();
      _showCommentArea = $v.showCommentArea;
      _enableIf = $v.enableIf;
      _isRequired = $v.isRequired;
      _visible = $v.visible;
      _commentPlaceholder = $v.commentPlaceholder?.toBuilder();
      _defaultValueExpression = $v.defaultValueExpression;
      _requiredIf = $v.requiredIf;
      _renderAs = $v.renderAs;
      _minWidth = $v.minWidth?.toBuilder();
      _readOnly = $v.readOnly;
      _titleLocation = $v.titleLocation;
      _requiredErrorText = $v.requiredErrorText?.toBuilder();
      _visibleIf = $v.visibleIf;
      _width = $v.width?.toBuilder();
      _page = $v.page;
      _type = $v.type;
      _name = $v.name;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(covariant $Rating other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$$Rating;
  }

  @override
  void update(void Function($RatingBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  $Rating build() => _build();

  _$$Rating _build() {
    _$$Rating _$result;
    try {
      _$result = _$v ??
          new _$$Rating._(
              displayRateDescriptionsAsExtremeItems:
                  displayRateDescriptionsAsExtremeItems,
              rateColorMode: rateColorMode,
              rateStep: rateStep,
              rateValues: _rateValues?.build(),
              rateMin: rateMin,
              displayMode: displayMode,
              scaleColorMode: scaleColorMode,
              autoGenerate: autoGenerate,
              rateType: rateType,
              rateCount: rateCount,
              minRateDescription: _minRateDescription?.build(),
              maxRateDescription: _maxRateDescription?.build(),
              rateMax: rateMax,
              useDisplayValuesInDynamicTexts: useDisplayValuesInDynamicTexts,
              indent: indent,
              valueName: valueName,
              defaultValue: defaultValue,
              validators: _validators?.build(),
              bindings: bindings,
              description: _description?.build(),
              title: _title?.build(),
              commentText: _commentText?.build(),
              clearIfInvisible: clearIfInvisible,
              startWithNewLine: startWithNewLine,
              descriptionLocation: descriptionLocation,
              state: state,
              hideNumber: hideNumber,
              correctAnswer: correctAnswer,
              maxWidth: _maxWidth?.build(),
              showCommentArea: showCommentArea,
              enableIf: enableIf,
              isRequired: isRequired,
              visible: visible,
              commentPlaceholder: _commentPlaceholder?.build(),
              defaultValueExpression: defaultValueExpression,
              requiredIf: requiredIf,
              renderAs: renderAs,
              minWidth: _minWidth?.build(),
              readOnly: readOnly,
              titleLocation: titleLocation,
              requiredErrorText: _requiredErrorText?.build(),
              visibleIf: visibleIf,
              width: _width?.build(),
              page: page,
              type: type,
              name: name);
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'rateValues';
        _rateValues?.build();

        _$failedField = 'minRateDescription';
        _minRateDescription?.build();
        _$failedField = 'maxRateDescription';
        _maxRateDescription?.build();

        _$failedField = 'validators';
        _validators?.build();

        _$failedField = 'description';
        _description?.build();
        _$failedField = 'title';
        _title?.build();
        _$failedField = 'commentText';
        _commentText?.build();

        _$failedField = 'maxWidth';
        _maxWidth?.build();

        _$failedField = 'commentPlaceholder';
        _commentPlaceholder?.build();

        _$failedField = 'minWidth';
        _minWidth?.build();

        _$failedField = 'requiredErrorText';
        _requiredErrorText?.build();

        _$failedField = 'width';
        _width?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'$Rating', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
