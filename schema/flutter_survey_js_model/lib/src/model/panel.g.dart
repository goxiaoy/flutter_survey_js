// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'panel.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$Panel extends Panel {
  @override
  final bool? isRequired;
  @override
  final PanelIndent? indent;
  @override
  final StringOrNum? minWidth;
  @override
  final PanelInnerIndent? innerIndent;
  @override
  final PanelShowQuestionNumbers? showQuestionNumbers;
  @override
  final SurveyTitle? requiredErrorText;
  @override
  final bool? startWithNewLine;
  @override
  final bool? showNumber;
  @override
  final String? questionStartIndex;
  @override
  final StringOrNum? width;
  @override
  final PanelState? state;
  @override
  final String? page;
  @override
  final bool? allowAdaptiveActions;
  @override
  final StringOrNum? maxWidth;
  @override
  final String? enableIf;
  @override
  final bool? visible;
  @override
  final BuiltList<SurveyQuestionsInner>? elements;
  @override
  final String? visibleIf;
  @override
  final String? requiredIf;
  @override
  final BuiltList<SurveyQuestionsInner>? questions;
  @override
  final SurveyTitle? description;
  @override
  final bool? readOnly;
  @override
  final SurveyTitle? title;
  @override
  final PanelbaseQuestionTitleLocation? questionTitleLocation;
  @override
  final PanelbaseQuestionsOrder? questionsOrder;
  @override
  final String? type;
  @override
  final String? name;

  factory _$Panel([void Function(PanelBuilder)? updates]) =>
      (new PanelBuilder()..update(updates))._build();

  _$Panel._(
      {this.isRequired,
      this.indent,
      this.minWidth,
      this.innerIndent,
      this.showQuestionNumbers,
      this.requiredErrorText,
      this.startWithNewLine,
      this.showNumber,
      this.questionStartIndex,
      this.width,
      this.state,
      this.page,
      this.allowAdaptiveActions,
      this.maxWidth,
      this.enableIf,
      this.visible,
      this.elements,
      this.visibleIf,
      this.requiredIf,
      this.questions,
      this.description,
      this.readOnly,
      this.title,
      this.questionTitleLocation,
      this.questionsOrder,
      this.type,
      this.name})
      : super._();

  @override
  Panel rebuild(void Function(PanelBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  PanelBuilder toBuilder() => new PanelBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Panel &&
        isRequired == other.isRequired &&
        indent == other.indent &&
        minWidth == other.minWidth &&
        innerIndent == other.innerIndent &&
        showQuestionNumbers == other.showQuestionNumbers &&
        requiredErrorText == other.requiredErrorText &&
        startWithNewLine == other.startWithNewLine &&
        showNumber == other.showNumber &&
        questionStartIndex == other.questionStartIndex &&
        width == other.width &&
        state == other.state &&
        page == other.page &&
        allowAdaptiveActions == other.allowAdaptiveActions &&
        maxWidth == other.maxWidth &&
        enableIf == other.enableIf &&
        visible == other.visible &&
        elements == other.elements &&
        visibleIf == other.visibleIf &&
        requiredIf == other.requiredIf &&
        questions == other.questions &&
        description == other.description &&
        readOnly == other.readOnly &&
        title == other.title &&
        questionTitleLocation == other.questionTitleLocation &&
        questionsOrder == other.questionsOrder &&
        type == other.type &&
        name == other.name;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, isRequired.hashCode);
    _$hash = $jc(_$hash, indent.hashCode);
    _$hash = $jc(_$hash, minWidth.hashCode);
    _$hash = $jc(_$hash, innerIndent.hashCode);
    _$hash = $jc(_$hash, showQuestionNumbers.hashCode);
    _$hash = $jc(_$hash, requiredErrorText.hashCode);
    _$hash = $jc(_$hash, startWithNewLine.hashCode);
    _$hash = $jc(_$hash, showNumber.hashCode);
    _$hash = $jc(_$hash, questionStartIndex.hashCode);
    _$hash = $jc(_$hash, width.hashCode);
    _$hash = $jc(_$hash, state.hashCode);
    _$hash = $jc(_$hash, page.hashCode);
    _$hash = $jc(_$hash, allowAdaptiveActions.hashCode);
    _$hash = $jc(_$hash, maxWidth.hashCode);
    _$hash = $jc(_$hash, enableIf.hashCode);
    _$hash = $jc(_$hash, visible.hashCode);
    _$hash = $jc(_$hash, elements.hashCode);
    _$hash = $jc(_$hash, visibleIf.hashCode);
    _$hash = $jc(_$hash, requiredIf.hashCode);
    _$hash = $jc(_$hash, questions.hashCode);
    _$hash = $jc(_$hash, description.hashCode);
    _$hash = $jc(_$hash, readOnly.hashCode);
    _$hash = $jc(_$hash, title.hashCode);
    _$hash = $jc(_$hash, questionTitleLocation.hashCode);
    _$hash = $jc(_$hash, questionsOrder.hashCode);
    _$hash = $jc(_$hash, type.hashCode);
    _$hash = $jc(_$hash, name.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'Panel')
          ..add('isRequired', isRequired)
          ..add('indent', indent)
          ..add('minWidth', minWidth)
          ..add('innerIndent', innerIndent)
          ..add('showQuestionNumbers', showQuestionNumbers)
          ..add('requiredErrorText', requiredErrorText)
          ..add('startWithNewLine', startWithNewLine)
          ..add('showNumber', showNumber)
          ..add('questionStartIndex', questionStartIndex)
          ..add('width', width)
          ..add('state', state)
          ..add('page', page)
          ..add('allowAdaptiveActions', allowAdaptiveActions)
          ..add('maxWidth', maxWidth)
          ..add('enableIf', enableIf)
          ..add('visible', visible)
          ..add('elements', elements)
          ..add('visibleIf', visibleIf)
          ..add('requiredIf', requiredIf)
          ..add('questions', questions)
          ..add('description', description)
          ..add('readOnly', readOnly)
          ..add('title', title)
          ..add('questionTitleLocation', questionTitleLocation)
          ..add('questionsOrder', questionsOrder)
          ..add('type', type)
          ..add('name', name))
        .toString();
  }
}

class PanelBuilder implements Builder<Panel, PanelBuilder>, PanelbaseBuilder {
  _$Panel? _$v;

  bool? _isRequired;
  bool? get isRequired => _$this._isRequired;
  set isRequired(covariant bool? isRequired) => _$this._isRequired = isRequired;

  PanelIndent? _indent;
  PanelIndent? get indent => _$this._indent;
  set indent(covariant PanelIndent? indent) => _$this._indent = indent;

  StringOrNumBuilder? _minWidth;
  StringOrNumBuilder get minWidth =>
      _$this._minWidth ??= new StringOrNumBuilder();
  set minWidth(covariant StringOrNumBuilder? minWidth) =>
      _$this._minWidth = minWidth;

  PanelInnerIndent? _innerIndent;
  PanelInnerIndent? get innerIndent => _$this._innerIndent;
  set innerIndent(covariant PanelInnerIndent? innerIndent) =>
      _$this._innerIndent = innerIndent;

  PanelShowQuestionNumbers? _showQuestionNumbers;
  PanelShowQuestionNumbers? get showQuestionNumbers =>
      _$this._showQuestionNumbers;
  set showQuestionNumbers(
          covariant PanelShowQuestionNumbers? showQuestionNumbers) =>
      _$this._showQuestionNumbers = showQuestionNumbers;

  SurveyTitleBuilder? _requiredErrorText;
  SurveyTitleBuilder get requiredErrorText =>
      _$this._requiredErrorText ??= new SurveyTitleBuilder();
  set requiredErrorText(covariant SurveyTitleBuilder? requiredErrorText) =>
      _$this._requiredErrorText = requiredErrorText;

  bool? _startWithNewLine;
  bool? get startWithNewLine => _$this._startWithNewLine;
  set startWithNewLine(covariant bool? startWithNewLine) =>
      _$this._startWithNewLine = startWithNewLine;

  bool? _showNumber;
  bool? get showNumber => _$this._showNumber;
  set showNumber(covariant bool? showNumber) => _$this._showNumber = showNumber;

  String? _questionStartIndex;
  String? get questionStartIndex => _$this._questionStartIndex;
  set questionStartIndex(covariant String? questionStartIndex) =>
      _$this._questionStartIndex = questionStartIndex;

  StringOrNumBuilder? _width;
  StringOrNumBuilder get width => _$this._width ??= new StringOrNumBuilder();
  set width(covariant StringOrNumBuilder? width) => _$this._width = width;

  PanelState? _state;
  PanelState? get state => _$this._state;
  set state(covariant PanelState? state) => _$this._state = state;

  String? _page;
  String? get page => _$this._page;
  set page(covariant String? page) => _$this._page = page;

  bool? _allowAdaptiveActions;
  bool? get allowAdaptiveActions => _$this._allowAdaptiveActions;
  set allowAdaptiveActions(covariant bool? allowAdaptiveActions) =>
      _$this._allowAdaptiveActions = allowAdaptiveActions;

  StringOrNumBuilder? _maxWidth;
  StringOrNumBuilder get maxWidth =>
      _$this._maxWidth ??= new StringOrNumBuilder();
  set maxWidth(covariant StringOrNumBuilder? maxWidth) =>
      _$this._maxWidth = maxWidth;

  String? _enableIf;
  String? get enableIf => _$this._enableIf;
  set enableIf(covariant String? enableIf) => _$this._enableIf = enableIf;

  bool? _visible;
  bool? get visible => _$this._visible;
  set visible(covariant bool? visible) => _$this._visible = visible;

  ListBuilder<SurveyQuestionsInner>? _elements;
  ListBuilder<SurveyQuestionsInner> get elements =>
      _$this._elements ??= new ListBuilder<SurveyQuestionsInner>();
  set elements(covariant ListBuilder<SurveyQuestionsInner>? elements) =>
      _$this._elements = elements;

  String? _visibleIf;
  String? get visibleIf => _$this._visibleIf;
  set visibleIf(covariant String? visibleIf) => _$this._visibleIf = visibleIf;

  String? _requiredIf;
  String? get requiredIf => _$this._requiredIf;
  set requiredIf(covariant String? requiredIf) =>
      _$this._requiredIf = requiredIf;

  ListBuilder<SurveyQuestionsInner>? _questions;
  ListBuilder<SurveyQuestionsInner> get questions =>
      _$this._questions ??= new ListBuilder<SurveyQuestionsInner>();
  set questions(covariant ListBuilder<SurveyQuestionsInner>? questions) =>
      _$this._questions = questions;

  SurveyTitleBuilder? _description;
  SurveyTitleBuilder get description =>
      _$this._description ??= new SurveyTitleBuilder();
  set description(covariant SurveyTitleBuilder? description) =>
      _$this._description = description;

  bool? _readOnly;
  bool? get readOnly => _$this._readOnly;
  set readOnly(covariant bool? readOnly) => _$this._readOnly = readOnly;

  SurveyTitleBuilder? _title;
  SurveyTitleBuilder get title => _$this._title ??= new SurveyTitleBuilder();
  set title(covariant SurveyTitleBuilder? title) => _$this._title = title;

  PanelbaseQuestionTitleLocation? _questionTitleLocation;
  PanelbaseQuestionTitleLocation? get questionTitleLocation =>
      _$this._questionTitleLocation;
  set questionTitleLocation(
          covariant PanelbaseQuestionTitleLocation? questionTitleLocation) =>
      _$this._questionTitleLocation = questionTitleLocation;

  PanelbaseQuestionsOrder? _questionsOrder;
  PanelbaseQuestionsOrder? get questionsOrder => _$this._questionsOrder;
  set questionsOrder(covariant PanelbaseQuestionsOrder? questionsOrder) =>
      _$this._questionsOrder = questionsOrder;

  String? _type;
  String? get type => _$this._type;
  set type(covariant String? type) => _$this._type = type;

  String? _name;
  String? get name => _$this._name;
  set name(covariant String? name) => _$this._name = name;

  PanelBuilder() {
    Panel._defaults(this);
  }

  PanelBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _isRequired = $v.isRequired;
      _indent = $v.indent;
      _minWidth = $v.minWidth?.toBuilder();
      _innerIndent = $v.innerIndent;
      _showQuestionNumbers = $v.showQuestionNumbers;
      _requiredErrorText = $v.requiredErrorText?.toBuilder();
      _startWithNewLine = $v.startWithNewLine;
      _showNumber = $v.showNumber;
      _questionStartIndex = $v.questionStartIndex;
      _width = $v.width?.toBuilder();
      _state = $v.state;
      _page = $v.page;
      _allowAdaptiveActions = $v.allowAdaptiveActions;
      _maxWidth = $v.maxWidth?.toBuilder();
      _enableIf = $v.enableIf;
      _visible = $v.visible;
      _elements = $v.elements?.toBuilder();
      _visibleIf = $v.visibleIf;
      _requiredIf = $v.requiredIf;
      _questions = $v.questions?.toBuilder();
      _description = $v.description?.toBuilder();
      _readOnly = $v.readOnly;
      _title = $v.title?.toBuilder();
      _questionTitleLocation = $v.questionTitleLocation;
      _questionsOrder = $v.questionsOrder;
      _type = $v.type;
      _name = $v.name;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(covariant Panel other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$Panel;
  }

  @override
  void update(void Function(PanelBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  Panel build() => _build();

  _$Panel _build() {
    _$Panel _$result;
    try {
      _$result = _$v ??
          new _$Panel._(
              isRequired: isRequired,
              indent: indent,
              minWidth: _minWidth?.build(),
              innerIndent: innerIndent,
              showQuestionNumbers: showQuestionNumbers,
              requiredErrorText: _requiredErrorText?.build(),
              startWithNewLine: startWithNewLine,
              showNumber: showNumber,
              questionStartIndex: questionStartIndex,
              width: _width?.build(),
              state: state,
              page: page,
              allowAdaptiveActions: allowAdaptiveActions,
              maxWidth: _maxWidth?.build(),
              enableIf: enableIf,
              visible: visible,
              elements: _elements?.build(),
              visibleIf: visibleIf,
              requiredIf: requiredIf,
              questions: _questions?.build(),
              description: _description?.build(),
              readOnly: readOnly,
              title: _title?.build(),
              questionTitleLocation: questionTitleLocation,
              questionsOrder: questionsOrder,
              type: type,
              name: name);
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'minWidth';
        _minWidth?.build();

        _$failedField = 'requiredErrorText';
        _requiredErrorText?.build();

        _$failedField = 'width';
        _width?.build();

        _$failedField = 'maxWidth';
        _maxWidth?.build();

        _$failedField = 'elements';
        _elements?.build();

        _$failedField = 'questions';
        _questions?.build();
        _$failedField = 'description';
        _description?.build();

        _$failedField = 'title';
        _title?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'Panel', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
