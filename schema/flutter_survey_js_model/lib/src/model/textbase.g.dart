// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'textbase.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

abstract class TextbaseBuilder implements QuestionBuilder {
  void replace(covariant Textbase other);
  void update(void Function(TextbaseBuilder) updates);
  String? get type;
  set type(covariant String? type);

  String? get name;
  set name(covariant String? name);

  QuestionState? get state;
  set state(covariant QuestionState? state);

  bool? get visible;
  set visible(covariant bool? visible);

  bool? get useDisplayValuesInDynamicTexts;
  set useDisplayValuesInDynamicTexts(
      covariant bool? useDisplayValuesInDynamicTexts);

  String? get visibleIf;
  set visibleIf(covariant String? visibleIf);

  SurveyLogoWidthBuilder get width;
  set width(covariant SurveyLogoWidthBuilder? width);

  SurveyLogoWidthBuilder get minWidth;
  set minWidth(covariant SurveyLogoWidthBuilder? minWidth);

  SurveyLogoWidthBuilder get maxWidth;
  set maxWidth(covariant SurveyLogoWidthBuilder? maxWidth);

  bool? get startWithNewLine;
  set startWithNewLine(covariant bool? startWithNewLine);

  QuestionIndent? get indent;
  set indent(covariant QuestionIndent? indent);

  String? get page;
  set page(covariant String? page);

  String? get title;
  set title(covariant String? title);

  QuestionTitleLocation? get titleLocation;
  set titleLocation(covariant QuestionTitleLocation? titleLocation);

  String? get description;
  set description(covariant String? description);

  QuestionDescriptionLocation? get descriptionLocation;
  set descriptionLocation(
      covariant QuestionDescriptionLocation? descriptionLocation);

  bool? get hideNumber;
  set hideNumber(covariant bool? hideNumber);

  String? get valueName;
  set valueName(covariant String? valueName);

  String? get enableIf;
  set enableIf(covariant String? enableIf);

  JsonObject? get defaultValue;
  set defaultValue(covariant JsonObject? defaultValue);

  String? get defaultValueExpression;
  set defaultValueExpression(covariant String? defaultValueExpression);

  JsonObject? get correctAnswer;
  set correctAnswer(covariant JsonObject? correctAnswer);

  QuestionClearIfInvisible? get clearIfInvisible;
  set clearIfInvisible(covariant QuestionClearIfInvisible? clearIfInvisible);

  bool? get isRequired;
  set isRequired(covariant bool? isRequired);

  String? get requiredIf;
  set requiredIf(covariant String? requiredIf);

  String? get requiredErrorText;
  set requiredErrorText(covariant String? requiredErrorText);

  String? get readOnly;
  set readOnly(covariant String? readOnly);

  ListBuilder<QuestionAllOfValidatorsInner> get validators;
  set validators(
      covariant ListBuilder<QuestionAllOfValidatorsInner>? validators);

  String? get bindings;
  set bindings(covariant String? bindings);

  String? get renderAs;
  set renderAs(covariant String? renderAs);

  String? get showCommentArea;
  set showCommentArea(covariant String? showCommentArea);

  String? get commentText;
  set commentText(covariant String? commentText);

  String? get commentPlaceholder;
  set commentPlaceholder(covariant String? commentPlaceholder);
}

class _$$Textbase extends $Textbase {
  @override
  final String? type;
  @override
  final String? name;
  @override
  final QuestionState? state;
  @override
  final bool? visible;
  @override
  final bool? useDisplayValuesInDynamicTexts;
  @override
  final String? visibleIf;
  @override
  final SurveyLogoWidth? width;
  @override
  final SurveyLogoWidth? minWidth;
  @override
  final SurveyLogoWidth? maxWidth;
  @override
  final bool? startWithNewLine;
  @override
  final QuestionIndent? indent;
  @override
  final String? page;
  @override
  final String? title;
  @override
  final QuestionTitleLocation? titleLocation;
  @override
  final String? description;
  @override
  final QuestionDescriptionLocation? descriptionLocation;
  @override
  final bool? hideNumber;
  @override
  final String? valueName;
  @override
  final String? enableIf;
  @override
  final JsonObject? defaultValue;
  @override
  final String? defaultValueExpression;
  @override
  final JsonObject? correctAnswer;
  @override
  final QuestionClearIfInvisible? clearIfInvisible;
  @override
  final bool? isRequired;
  @override
  final String? requiredIf;
  @override
  final String? requiredErrorText;
  @override
  final String? readOnly;
  @override
  final BuiltList<QuestionAllOfValidatorsInner>? validators;
  @override
  final String? bindings;
  @override
  final String? renderAs;
  @override
  final String? showCommentArea;
  @override
  final String? commentText;
  @override
  final String? commentPlaceholder;

  factory _$$Textbase([void Function($TextbaseBuilder)? updates]) =>
      (new $TextbaseBuilder()..update(updates))._build();

  _$$Textbase._(
      {this.type,
      this.name,
      this.state,
      this.visible,
      this.useDisplayValuesInDynamicTexts,
      this.visibleIf,
      this.width,
      this.minWidth,
      this.maxWidth,
      this.startWithNewLine,
      this.indent,
      this.page,
      this.title,
      this.titleLocation,
      this.description,
      this.descriptionLocation,
      this.hideNumber,
      this.valueName,
      this.enableIf,
      this.defaultValue,
      this.defaultValueExpression,
      this.correctAnswer,
      this.clearIfInvisible,
      this.isRequired,
      this.requiredIf,
      this.requiredErrorText,
      this.readOnly,
      this.validators,
      this.bindings,
      this.renderAs,
      this.showCommentArea,
      this.commentText,
      this.commentPlaceholder})
      : super._();

  @override
  $Textbase rebuild(void Function($TextbaseBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  $TextbaseBuilder toBuilder() => new $TextbaseBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is $Textbase &&
        type == other.type &&
        name == other.name &&
        state == other.state &&
        visible == other.visible &&
        useDisplayValuesInDynamicTexts ==
            other.useDisplayValuesInDynamicTexts &&
        visibleIf == other.visibleIf &&
        width == other.width &&
        minWidth == other.minWidth &&
        maxWidth == other.maxWidth &&
        startWithNewLine == other.startWithNewLine &&
        indent == other.indent &&
        page == other.page &&
        title == other.title &&
        titleLocation == other.titleLocation &&
        description == other.description &&
        descriptionLocation == other.descriptionLocation &&
        hideNumber == other.hideNumber &&
        valueName == other.valueName &&
        enableIf == other.enableIf &&
        defaultValue == other.defaultValue &&
        defaultValueExpression == other.defaultValueExpression &&
        correctAnswer == other.correctAnswer &&
        clearIfInvisible == other.clearIfInvisible &&
        isRequired == other.isRequired &&
        requiredIf == other.requiredIf &&
        requiredErrorText == other.requiredErrorText &&
        readOnly == other.readOnly &&
        validators == other.validators &&
        bindings == other.bindings &&
        renderAs == other.renderAs &&
        showCommentArea == other.showCommentArea &&
        commentText == other.commentText &&
        commentPlaceholder == other.commentPlaceholder;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, type.hashCode);
    _$hash = $jc(_$hash, name.hashCode);
    _$hash = $jc(_$hash, state.hashCode);
    _$hash = $jc(_$hash, visible.hashCode);
    _$hash = $jc(_$hash, useDisplayValuesInDynamicTexts.hashCode);
    _$hash = $jc(_$hash, visibleIf.hashCode);
    _$hash = $jc(_$hash, width.hashCode);
    _$hash = $jc(_$hash, minWidth.hashCode);
    _$hash = $jc(_$hash, maxWidth.hashCode);
    _$hash = $jc(_$hash, startWithNewLine.hashCode);
    _$hash = $jc(_$hash, indent.hashCode);
    _$hash = $jc(_$hash, page.hashCode);
    _$hash = $jc(_$hash, title.hashCode);
    _$hash = $jc(_$hash, titleLocation.hashCode);
    _$hash = $jc(_$hash, description.hashCode);
    _$hash = $jc(_$hash, descriptionLocation.hashCode);
    _$hash = $jc(_$hash, hideNumber.hashCode);
    _$hash = $jc(_$hash, valueName.hashCode);
    _$hash = $jc(_$hash, enableIf.hashCode);
    _$hash = $jc(_$hash, defaultValue.hashCode);
    _$hash = $jc(_$hash, defaultValueExpression.hashCode);
    _$hash = $jc(_$hash, correctAnswer.hashCode);
    _$hash = $jc(_$hash, clearIfInvisible.hashCode);
    _$hash = $jc(_$hash, isRequired.hashCode);
    _$hash = $jc(_$hash, requiredIf.hashCode);
    _$hash = $jc(_$hash, requiredErrorText.hashCode);
    _$hash = $jc(_$hash, readOnly.hashCode);
    _$hash = $jc(_$hash, validators.hashCode);
    _$hash = $jc(_$hash, bindings.hashCode);
    _$hash = $jc(_$hash, renderAs.hashCode);
    _$hash = $jc(_$hash, showCommentArea.hashCode);
    _$hash = $jc(_$hash, commentText.hashCode);
    _$hash = $jc(_$hash, commentPlaceholder.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'$Textbase')
          ..add('type', type)
          ..add('name', name)
          ..add('state', state)
          ..add('visible', visible)
          ..add(
              'useDisplayValuesInDynamicTexts', useDisplayValuesInDynamicTexts)
          ..add('visibleIf', visibleIf)
          ..add('width', width)
          ..add('minWidth', minWidth)
          ..add('maxWidth', maxWidth)
          ..add('startWithNewLine', startWithNewLine)
          ..add('indent', indent)
          ..add('page', page)
          ..add('title', title)
          ..add('titleLocation', titleLocation)
          ..add('description', description)
          ..add('descriptionLocation', descriptionLocation)
          ..add('hideNumber', hideNumber)
          ..add('valueName', valueName)
          ..add('enableIf', enableIf)
          ..add('defaultValue', defaultValue)
          ..add('defaultValueExpression', defaultValueExpression)
          ..add('correctAnswer', correctAnswer)
          ..add('clearIfInvisible', clearIfInvisible)
          ..add('isRequired', isRequired)
          ..add('requiredIf', requiredIf)
          ..add('requiredErrorText', requiredErrorText)
          ..add('readOnly', readOnly)
          ..add('validators', validators)
          ..add('bindings', bindings)
          ..add('renderAs', renderAs)
          ..add('showCommentArea', showCommentArea)
          ..add('commentText', commentText)
          ..add('commentPlaceholder', commentPlaceholder))
        .toString();
  }
}

class $TextbaseBuilder
    implements Builder<$Textbase, $TextbaseBuilder>, TextbaseBuilder {
  _$$Textbase? _$v;

  String? _type;
  String? get type => _$this._type;
  set type(covariant String? type) => _$this._type = type;

  String? _name;
  String? get name => _$this._name;
  set name(covariant String? name) => _$this._name = name;

  QuestionState? _state;
  QuestionState? get state => _$this._state;
  set state(covariant QuestionState? state) => _$this._state = state;

  bool? _visible;
  bool? get visible => _$this._visible;
  set visible(covariant bool? visible) => _$this._visible = visible;

  bool? _useDisplayValuesInDynamicTexts;
  bool? get useDisplayValuesInDynamicTexts =>
      _$this._useDisplayValuesInDynamicTexts;
  set useDisplayValuesInDynamicTexts(
          covariant bool? useDisplayValuesInDynamicTexts) =>
      _$this._useDisplayValuesInDynamicTexts = useDisplayValuesInDynamicTexts;

  String? _visibleIf;
  String? get visibleIf => _$this._visibleIf;
  set visibleIf(covariant String? visibleIf) => _$this._visibleIf = visibleIf;

  SurveyLogoWidthBuilder? _width;
  SurveyLogoWidthBuilder get width =>
      _$this._width ??= new SurveyLogoWidthBuilder();
  set width(covariant SurveyLogoWidthBuilder? width) => _$this._width = width;

  SurveyLogoWidthBuilder? _minWidth;
  SurveyLogoWidthBuilder get minWidth =>
      _$this._minWidth ??= new SurveyLogoWidthBuilder();
  set minWidth(covariant SurveyLogoWidthBuilder? minWidth) =>
      _$this._minWidth = minWidth;

  SurveyLogoWidthBuilder? _maxWidth;
  SurveyLogoWidthBuilder get maxWidth =>
      _$this._maxWidth ??= new SurveyLogoWidthBuilder();
  set maxWidth(covariant SurveyLogoWidthBuilder? maxWidth) =>
      _$this._maxWidth = maxWidth;

  bool? _startWithNewLine;
  bool? get startWithNewLine => _$this._startWithNewLine;
  set startWithNewLine(covariant bool? startWithNewLine) =>
      _$this._startWithNewLine = startWithNewLine;

  QuestionIndent? _indent;
  QuestionIndent? get indent => _$this._indent;
  set indent(covariant QuestionIndent? indent) => _$this._indent = indent;

  String? _page;
  String? get page => _$this._page;
  set page(covariant String? page) => _$this._page = page;

  String? _title;
  String? get title => _$this._title;
  set title(covariant String? title) => _$this._title = title;

  QuestionTitleLocation? _titleLocation;
  QuestionTitleLocation? get titleLocation => _$this._titleLocation;
  set titleLocation(covariant QuestionTitleLocation? titleLocation) =>
      _$this._titleLocation = titleLocation;

  String? _description;
  String? get description => _$this._description;
  set description(covariant String? description) =>
      _$this._description = description;

  QuestionDescriptionLocation? _descriptionLocation;
  QuestionDescriptionLocation? get descriptionLocation =>
      _$this._descriptionLocation;
  set descriptionLocation(
          covariant QuestionDescriptionLocation? descriptionLocation) =>
      _$this._descriptionLocation = descriptionLocation;

  bool? _hideNumber;
  bool? get hideNumber => _$this._hideNumber;
  set hideNumber(covariant bool? hideNumber) => _$this._hideNumber = hideNumber;

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

  String? _defaultValueExpression;
  String? get defaultValueExpression => _$this._defaultValueExpression;
  set defaultValueExpression(covariant String? defaultValueExpression) =>
      _$this._defaultValueExpression = defaultValueExpression;

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

  String? _requiredIf;
  String? get requiredIf => _$this._requiredIf;
  set requiredIf(covariant String? requiredIf) =>
      _$this._requiredIf = requiredIf;

  String? _requiredErrorText;
  String? get requiredErrorText => _$this._requiredErrorText;
  set requiredErrorText(covariant String? requiredErrorText) =>
      _$this._requiredErrorText = requiredErrorText;

  String? _readOnly;
  String? get readOnly => _$this._readOnly;
  set readOnly(covariant String? readOnly) => _$this._readOnly = readOnly;

  ListBuilder<QuestionAllOfValidatorsInner>? _validators;
  ListBuilder<QuestionAllOfValidatorsInner> get validators =>
      _$this._validators ??= new ListBuilder<QuestionAllOfValidatorsInner>();
  set validators(
          covariant ListBuilder<QuestionAllOfValidatorsInner>? validators) =>
      _$this._validators = validators;

  String? _bindings;
  String? get bindings => _$this._bindings;
  set bindings(covariant String? bindings) => _$this._bindings = bindings;

  String? _renderAs;
  String? get renderAs => _$this._renderAs;
  set renderAs(covariant String? renderAs) => _$this._renderAs = renderAs;

  String? _showCommentArea;
  String? get showCommentArea => _$this._showCommentArea;
  set showCommentArea(covariant String? showCommentArea) =>
      _$this._showCommentArea = showCommentArea;

  String? _commentText;
  String? get commentText => _$this._commentText;
  set commentText(covariant String? commentText) =>
      _$this._commentText = commentText;

  String? _commentPlaceholder;
  String? get commentPlaceholder => _$this._commentPlaceholder;
  set commentPlaceholder(covariant String? commentPlaceholder) =>
      _$this._commentPlaceholder = commentPlaceholder;

  $TextbaseBuilder() {
    $Textbase._defaults(this);
  }

  $TextbaseBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _type = $v.type;
      _name = $v.name;
      _state = $v.state;
      _visible = $v.visible;
      _useDisplayValuesInDynamicTexts = $v.useDisplayValuesInDynamicTexts;
      _visibleIf = $v.visibleIf;
      _width = $v.width?.toBuilder();
      _minWidth = $v.minWidth?.toBuilder();
      _maxWidth = $v.maxWidth?.toBuilder();
      _startWithNewLine = $v.startWithNewLine;
      _indent = $v.indent;
      _page = $v.page;
      _title = $v.title;
      _titleLocation = $v.titleLocation;
      _description = $v.description;
      _descriptionLocation = $v.descriptionLocation;
      _hideNumber = $v.hideNumber;
      _valueName = $v.valueName;
      _enableIf = $v.enableIf;
      _defaultValue = $v.defaultValue;
      _defaultValueExpression = $v.defaultValueExpression;
      _correctAnswer = $v.correctAnswer;
      _clearIfInvisible = $v.clearIfInvisible;
      _isRequired = $v.isRequired;
      _requiredIf = $v.requiredIf;
      _requiredErrorText = $v.requiredErrorText;
      _readOnly = $v.readOnly;
      _validators = $v.validators?.toBuilder();
      _bindings = $v.bindings;
      _renderAs = $v.renderAs;
      _showCommentArea = $v.showCommentArea;
      _commentText = $v.commentText;
      _commentPlaceholder = $v.commentPlaceholder;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(covariant $Textbase other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$$Textbase;
  }

  @override
  void update(void Function($TextbaseBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  $Textbase build() => _build();

  _$$Textbase _build() {
    _$$Textbase _$result;
    try {
      _$result = _$v ??
          new _$$Textbase._(
              type: type,
              name: name,
              state: state,
              visible: visible,
              useDisplayValuesInDynamicTexts: useDisplayValuesInDynamicTexts,
              visibleIf: visibleIf,
              width: _width?.build(),
              minWidth: _minWidth?.build(),
              maxWidth: _maxWidth?.build(),
              startWithNewLine: startWithNewLine,
              indent: indent,
              page: page,
              title: title,
              titleLocation: titleLocation,
              description: description,
              descriptionLocation: descriptionLocation,
              hideNumber: hideNumber,
              valueName: valueName,
              enableIf: enableIf,
              defaultValue: defaultValue,
              defaultValueExpression: defaultValueExpression,
              correctAnswer: correctAnswer,
              clearIfInvisible: clearIfInvisible,
              isRequired: isRequired,
              requiredIf: requiredIf,
              requiredErrorText: requiredErrorText,
              readOnly: readOnly,
              validators: _validators?.build(),
              bindings: bindings,
              renderAs: renderAs,
              showCommentArea: showCommentArea,
              commentText: commentText,
              commentPlaceholder: commentPlaceholder);
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'width';
        _width?.build();
        _$failedField = 'minWidth';
        _minWidth?.build();
        _$failedField = 'maxWidth';
        _maxWidth?.build();

        _$failedField = 'validators';
        _validators?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'$Textbase', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
