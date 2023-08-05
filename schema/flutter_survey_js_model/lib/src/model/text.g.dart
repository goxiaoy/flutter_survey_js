// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'text.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

abstract class TextBuilder implements TextbaseBuilder {
  void replace(covariant Text other);
  void update(void Function(TextBuilder) updates);
  String? get minValueExpression;
  set minValueExpression(covariant String? minValueExpression);

  Autocomplete? get autocomplete;
  set autocomplete(covariant Autocomplete? autocomplete);

  StringOrNumBuilder get max;
  set max(covariant StringOrNumBuilder? max);

  StringOrNumBuilder get min;
  set min(covariant StringOrNumBuilder? min);

  num? get size;
  set size(covariant num? size);

  SurveyTitleBuilder get minErrorText;
  set minErrorText(covariant SurveyTitleBuilder? minErrorText);

  SurveyTitleBuilder get dataList;
  set dataList(covariant SurveyTitleBuilder? dataList);

  TextInputType? get inputType;
  set inputType(covariant TextInputType? inputType);

  num? get step;
  set step(covariant num? step);

  TextUpdateMode? get textUpdateMode;
  set textUpdateMode(covariant TextUpdateMode? textUpdateMode);

  SurveyTitleBuilder get placeholder;
  set placeholder(covariant SurveyTitleBuilder? placeholder);

  String? get maxValueExpression;
  set maxValueExpression(covariant String? maxValueExpression);

  num? get maxLength;
  set maxLength(covariant num? maxLength);

  SurveyTitleBuilder get maxErrorText;
  set maxErrorText(covariant SurveyTitleBuilder? maxErrorText);

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

  StringOrNumBuilder get maxWidth;
  set maxWidth(covariant StringOrNumBuilder? maxWidth);

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

  StringOrNumBuilder get minWidth;
  set minWidth(covariant StringOrNumBuilder? minWidth);

  bool? get readOnly;
  set readOnly(covariant bool? readOnly);

  QuestionTitleLocation? get titleLocation;
  set titleLocation(covariant QuestionTitleLocation? titleLocation);

  SurveyTitleBuilder get requiredErrorText;
  set requiredErrorText(covariant SurveyTitleBuilder? requiredErrorText);

  String? get visibleIf;
  set visibleIf(covariant String? visibleIf);

  StringOrNumBuilder get width;
  set width(covariant StringOrNumBuilder? width);

  String? get page;
  set page(covariant String? page);

  String? get type;
  set type(covariant String? type);

  String? get name;
  set name(covariant String? name);
}

class _$$Text extends $Text {
  @override
  final String? minValueExpression;
  @override
  final Autocomplete? autocomplete;
  @override
  final StringOrNum? max;
  @override
  final StringOrNum? min;
  @override
  final num? size;
  @override
  final SurveyTitle? minErrorText;
  @override
  final SurveyTitle? dataList;
  @override
  final TextInputType? inputType;
  @override
  final num? step;
  @override
  final TextUpdateMode? textUpdateMode;
  @override
  final SurveyTitle? placeholder;
  @override
  final String? maxValueExpression;
  @override
  final num? maxLength;
  @override
  final SurveyTitle? maxErrorText;
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
  final StringOrNum? maxWidth;
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
  final StringOrNum? minWidth;
  @override
  final bool? readOnly;
  @override
  final QuestionTitleLocation? titleLocation;
  @override
  final SurveyTitle? requiredErrorText;
  @override
  final String? visibleIf;
  @override
  final StringOrNum? width;
  @override
  final String? page;
  @override
  final String? type;
  @override
  final String? name;

  factory _$$Text([void Function($TextBuilder)? updates]) =>
      (new $TextBuilder()..update(updates))._build();

  _$$Text._(
      {this.minValueExpression,
      this.autocomplete,
      this.max,
      this.min,
      this.size,
      this.minErrorText,
      this.dataList,
      this.inputType,
      this.step,
      this.textUpdateMode,
      this.placeholder,
      this.maxValueExpression,
      this.maxLength,
      this.maxErrorText,
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
  $Text rebuild(void Function($TextBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  $TextBuilder toBuilder() => new $TextBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is $Text &&
        minValueExpression == other.minValueExpression &&
        autocomplete == other.autocomplete &&
        max == other.max &&
        min == other.min &&
        size == other.size &&
        minErrorText == other.minErrorText &&
        dataList == other.dataList &&
        inputType == other.inputType &&
        step == other.step &&
        textUpdateMode == other.textUpdateMode &&
        placeholder == other.placeholder &&
        maxValueExpression == other.maxValueExpression &&
        maxLength == other.maxLength &&
        maxErrorText == other.maxErrorText &&
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
    _$hash = $jc(_$hash, minValueExpression.hashCode);
    _$hash = $jc(_$hash, autocomplete.hashCode);
    _$hash = $jc(_$hash, max.hashCode);
    _$hash = $jc(_$hash, min.hashCode);
    _$hash = $jc(_$hash, size.hashCode);
    _$hash = $jc(_$hash, minErrorText.hashCode);
    _$hash = $jc(_$hash, dataList.hashCode);
    _$hash = $jc(_$hash, inputType.hashCode);
    _$hash = $jc(_$hash, step.hashCode);
    _$hash = $jc(_$hash, textUpdateMode.hashCode);
    _$hash = $jc(_$hash, placeholder.hashCode);
    _$hash = $jc(_$hash, maxValueExpression.hashCode);
    _$hash = $jc(_$hash, maxLength.hashCode);
    _$hash = $jc(_$hash, maxErrorText.hashCode);
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
    return (newBuiltValueToStringHelper(r'$Text')
          ..add('minValueExpression', minValueExpression)
          ..add('autocomplete', autocomplete)
          ..add('max', max)
          ..add('min', min)
          ..add('size', size)
          ..add('minErrorText', minErrorText)
          ..add('dataList', dataList)
          ..add('inputType', inputType)
          ..add('step', step)
          ..add('textUpdateMode', textUpdateMode)
          ..add('placeholder', placeholder)
          ..add('maxValueExpression', maxValueExpression)
          ..add('maxLength', maxLength)
          ..add('maxErrorText', maxErrorText)
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

class $TextBuilder implements Builder<$Text, $TextBuilder>, TextBuilder {
  _$$Text? _$v;

  String? _minValueExpression;
  String? get minValueExpression => _$this._minValueExpression;
  set minValueExpression(covariant String? minValueExpression) =>
      _$this._minValueExpression = minValueExpression;

  Autocomplete? _autocomplete;
  Autocomplete? get autocomplete => _$this._autocomplete;
  set autocomplete(covariant Autocomplete? autocomplete) =>
      _$this._autocomplete = autocomplete;

  StringOrNumBuilder? _max;
  StringOrNumBuilder get max => _$this._max ??= new StringOrNumBuilder();
  set max(covariant StringOrNumBuilder? max) => _$this._max = max;

  StringOrNumBuilder? _min;
  StringOrNumBuilder get min => _$this._min ??= new StringOrNumBuilder();
  set min(covariant StringOrNumBuilder? min) => _$this._min = min;

  num? _size;
  num? get size => _$this._size;
  set size(covariant num? size) => _$this._size = size;

  SurveyTitleBuilder? _minErrorText;
  SurveyTitleBuilder get minErrorText =>
      _$this._minErrorText ??= new SurveyTitleBuilder();
  set minErrorText(covariant SurveyTitleBuilder? minErrorText) =>
      _$this._minErrorText = minErrorText;

  SurveyTitleBuilder? _dataList;
  SurveyTitleBuilder get dataList =>
      _$this._dataList ??= new SurveyTitleBuilder();
  set dataList(covariant SurveyTitleBuilder? dataList) =>
      _$this._dataList = dataList;

  TextInputType? _inputType;
  TextInputType? get inputType => _$this._inputType;
  set inputType(covariant TextInputType? inputType) =>
      _$this._inputType = inputType;

  num? _step;
  num? get step => _$this._step;
  set step(covariant num? step) => _$this._step = step;

  TextUpdateMode? _textUpdateMode;
  TextUpdateMode? get textUpdateMode => _$this._textUpdateMode;
  set textUpdateMode(covariant TextUpdateMode? textUpdateMode) =>
      _$this._textUpdateMode = textUpdateMode;

  SurveyTitleBuilder? _placeholder;
  SurveyTitleBuilder get placeholder =>
      _$this._placeholder ??= new SurveyTitleBuilder();
  set placeholder(covariant SurveyTitleBuilder? placeholder) =>
      _$this._placeholder = placeholder;

  String? _maxValueExpression;
  String? get maxValueExpression => _$this._maxValueExpression;
  set maxValueExpression(covariant String? maxValueExpression) =>
      _$this._maxValueExpression = maxValueExpression;

  num? _maxLength;
  num? get maxLength => _$this._maxLength;
  set maxLength(covariant num? maxLength) => _$this._maxLength = maxLength;

  SurveyTitleBuilder? _maxErrorText;
  SurveyTitleBuilder get maxErrorText =>
      _$this._maxErrorText ??= new SurveyTitleBuilder();
  set maxErrorText(covariant SurveyTitleBuilder? maxErrorText) =>
      _$this._maxErrorText = maxErrorText;

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

  StringOrNumBuilder? _maxWidth;
  StringOrNumBuilder get maxWidth =>
      _$this._maxWidth ??= new StringOrNumBuilder();
  set maxWidth(covariant StringOrNumBuilder? maxWidth) =>
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

  StringOrNumBuilder? _minWidth;
  StringOrNumBuilder get minWidth =>
      _$this._minWidth ??= new StringOrNumBuilder();
  set minWidth(covariant StringOrNumBuilder? minWidth) =>
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

  StringOrNumBuilder? _width;
  StringOrNumBuilder get width => _$this._width ??= new StringOrNumBuilder();
  set width(covariant StringOrNumBuilder? width) => _$this._width = width;

  String? _page;
  String? get page => _$this._page;
  set page(covariant String? page) => _$this._page = page;

  String? _type;
  String? get type => _$this._type;
  set type(covariant String? type) => _$this._type = type;

  String? _name;
  String? get name => _$this._name;
  set name(covariant String? name) => _$this._name = name;

  $TextBuilder() {
    $Text._defaults(this);
  }

  $TextBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _minValueExpression = $v.minValueExpression;
      _autocomplete = $v.autocomplete;
      _max = $v.max?.toBuilder();
      _min = $v.min?.toBuilder();
      _size = $v.size;
      _minErrorText = $v.minErrorText?.toBuilder();
      _dataList = $v.dataList?.toBuilder();
      _inputType = $v.inputType;
      _step = $v.step;
      _textUpdateMode = $v.textUpdateMode;
      _placeholder = $v.placeholder?.toBuilder();
      _maxValueExpression = $v.maxValueExpression;
      _maxLength = $v.maxLength;
      _maxErrorText = $v.maxErrorText?.toBuilder();
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
  void replace(covariant $Text other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$$Text;
  }

  @override
  void update(void Function($TextBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  $Text build() => _build();

  _$$Text _build() {
    _$$Text _$result;
    try {
      _$result = _$v ??
          new _$$Text._(
              minValueExpression: minValueExpression,
              autocomplete: autocomplete,
              max: _max?.build(),
              min: _min?.build(),
              size: size,
              minErrorText: _minErrorText?.build(),
              dataList: _dataList?.build(),
              inputType: inputType,
              step: step,
              textUpdateMode: textUpdateMode,
              placeholder: _placeholder?.build(),
              maxValueExpression: maxValueExpression,
              maxLength: maxLength,
              maxErrorText: _maxErrorText?.build(),
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
        _$failedField = 'max';
        _max?.build();
        _$failedField = 'min';
        _min?.build();

        _$failedField = 'minErrorText';
        _minErrorText?.build();
        _$failedField = 'dataList';
        _dataList?.build();

        _$failedField = 'placeholder';
        _placeholder?.build();

        _$failedField = 'maxErrorText';
        _maxErrorText?.build();

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
            r'$Text', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
