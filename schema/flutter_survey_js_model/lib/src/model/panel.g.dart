// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'panel.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$Panel extends Panel {
  @override
  final PanelState? state;
  @override
  final bool? isRequired;
  @override
  final String? requiredErrorText;
  @override
  final bool? startWithNewLine;
  @override
  final String? width;
  @override
  final String? minWidth;
  @override
  final String? maxWidth;
  @override
  final PanelInnerIndent? innerIndent;
  @override
  final PanelIndent? indent;
  @override
  final String? page;
  @override
  final bool? showNumber;
  @override
  final PanelShowQuestionNumbers? showQuestionNumbers;
  @override
  final String? questionStartIndex;
  @override
  final bool? allowAdaptiveActions;
  @override
  final String? type;
  @override
  final String? name;
  @override
  final BuiltList<SurveyQuestionsInner>? elements;
  @override
  final bool? visible;
  @override
  final String? visibleIf;
  @override
  final String? enableIf;
  @override
  final String? requiredIf;
  @override
  final bool? readOnly;
  @override
  final PanelbaseQuestionTitleLocation? questionTitleLocation;
  @override
  final String? title;
  @override
  final String? description;
  @override
  final PanelbaseQuestionsOrder? questionsOrder;
  @override
  final BuiltList<SurveyQuestionsInner>? questions;

  factory _$Panel([void Function(PanelBuilder)? updates]) =>
      (new PanelBuilder()..update(updates))._build();

  _$Panel._(
      {this.state,
      this.isRequired,
      this.requiredErrorText,
      this.startWithNewLine,
      this.width,
      this.minWidth,
      this.maxWidth,
      this.innerIndent,
      this.indent,
      this.page,
      this.showNumber,
      this.showQuestionNumbers,
      this.questionStartIndex,
      this.allowAdaptiveActions,
      this.type,
      this.name,
      this.elements,
      this.visible,
      this.visibleIf,
      this.enableIf,
      this.requiredIf,
      this.readOnly,
      this.questionTitleLocation,
      this.title,
      this.description,
      this.questionsOrder,
      this.questions})
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
        state == other.state &&
        isRequired == other.isRequired &&
        requiredErrorText == other.requiredErrorText &&
        startWithNewLine == other.startWithNewLine &&
        width == other.width &&
        minWidth == other.minWidth &&
        maxWidth == other.maxWidth &&
        innerIndent == other.innerIndent &&
        indent == other.indent &&
        page == other.page &&
        showNumber == other.showNumber &&
        showQuestionNumbers == other.showQuestionNumbers &&
        questionStartIndex == other.questionStartIndex &&
        allowAdaptiveActions == other.allowAdaptiveActions &&
        type == other.type &&
        name == other.name &&
        elements == other.elements &&
        visible == other.visible &&
        visibleIf == other.visibleIf &&
        enableIf == other.enableIf &&
        requiredIf == other.requiredIf &&
        readOnly == other.readOnly &&
        questionTitleLocation == other.questionTitleLocation &&
        title == other.title &&
        description == other.description &&
        questionsOrder == other.questionsOrder &&
        questions == other.questions;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, state.hashCode);
    _$hash = $jc(_$hash, isRequired.hashCode);
    _$hash = $jc(_$hash, requiredErrorText.hashCode);
    _$hash = $jc(_$hash, startWithNewLine.hashCode);
    _$hash = $jc(_$hash, width.hashCode);
    _$hash = $jc(_$hash, minWidth.hashCode);
    _$hash = $jc(_$hash, maxWidth.hashCode);
    _$hash = $jc(_$hash, innerIndent.hashCode);
    _$hash = $jc(_$hash, indent.hashCode);
    _$hash = $jc(_$hash, page.hashCode);
    _$hash = $jc(_$hash, showNumber.hashCode);
    _$hash = $jc(_$hash, showQuestionNumbers.hashCode);
    _$hash = $jc(_$hash, questionStartIndex.hashCode);
    _$hash = $jc(_$hash, allowAdaptiveActions.hashCode);
    _$hash = $jc(_$hash, type.hashCode);
    _$hash = $jc(_$hash, name.hashCode);
    _$hash = $jc(_$hash, elements.hashCode);
    _$hash = $jc(_$hash, visible.hashCode);
    _$hash = $jc(_$hash, visibleIf.hashCode);
    _$hash = $jc(_$hash, enableIf.hashCode);
    _$hash = $jc(_$hash, requiredIf.hashCode);
    _$hash = $jc(_$hash, readOnly.hashCode);
    _$hash = $jc(_$hash, questionTitleLocation.hashCode);
    _$hash = $jc(_$hash, title.hashCode);
    _$hash = $jc(_$hash, description.hashCode);
    _$hash = $jc(_$hash, questionsOrder.hashCode);
    _$hash = $jc(_$hash, questions.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'Panel')
          ..add('state', state)
          ..add('isRequired', isRequired)
          ..add('requiredErrorText', requiredErrorText)
          ..add('startWithNewLine', startWithNewLine)
          ..add('width', width)
          ..add('minWidth', minWidth)
          ..add('maxWidth', maxWidth)
          ..add('innerIndent', innerIndent)
          ..add('indent', indent)
          ..add('page', page)
          ..add('showNumber', showNumber)
          ..add('showQuestionNumbers', showQuestionNumbers)
          ..add('questionStartIndex', questionStartIndex)
          ..add('allowAdaptiveActions', allowAdaptiveActions)
          ..add('type', type)
          ..add('name', name)
          ..add('elements', elements)
          ..add('visible', visible)
          ..add('visibleIf', visibleIf)
          ..add('enableIf', enableIf)
          ..add('requiredIf', requiredIf)
          ..add('readOnly', readOnly)
          ..add('questionTitleLocation', questionTitleLocation)
          ..add('title', title)
          ..add('description', description)
          ..add('questionsOrder', questionsOrder)
          ..add('questions', questions))
        .toString();
  }
}

class PanelBuilder
    implements
        Builder<Panel, PanelBuilder>,
        PanelAllOfBuilder,
        PanelbaseBuilder {
  _$Panel? _$v;

  PanelState? _state;
  PanelState? get state => _$this._state;
  set state(covariant PanelState? state) => _$this._state = state;

  bool? _isRequired;
  bool? get isRequired => _$this._isRequired;
  set isRequired(covariant bool? isRequired) => _$this._isRequired = isRequired;

  String? _requiredErrorText;
  String? get requiredErrorText => _$this._requiredErrorText;
  set requiredErrorText(covariant String? requiredErrorText) =>
      _$this._requiredErrorText = requiredErrorText;

  bool? _startWithNewLine;
  bool? get startWithNewLine => _$this._startWithNewLine;
  set startWithNewLine(covariant bool? startWithNewLine) =>
      _$this._startWithNewLine = startWithNewLine;

  String? _width;
  String? get width => _$this._width;
  set width(covariant String? width) => _$this._width = width;

  String? _minWidth;
  String? get minWidth => _$this._minWidth;
  set minWidth(covariant String? minWidth) => _$this._minWidth = minWidth;

  String? _maxWidth;
  String? get maxWidth => _$this._maxWidth;
  set maxWidth(covariant String? maxWidth) => _$this._maxWidth = maxWidth;

  PanelInnerIndent? _innerIndent;
  PanelInnerIndent? get innerIndent => _$this._innerIndent;
  set innerIndent(covariant PanelInnerIndent? innerIndent) =>
      _$this._innerIndent = innerIndent;

  PanelIndent? _indent;
  PanelIndent? get indent => _$this._indent;
  set indent(covariant PanelIndent? indent) => _$this._indent = indent;

  String? _page;
  String? get page => _$this._page;
  set page(covariant String? page) => _$this._page = page;

  bool? _showNumber;
  bool? get showNumber => _$this._showNumber;
  set showNumber(covariant bool? showNumber) => _$this._showNumber = showNumber;

  PanelShowQuestionNumbers? _showQuestionNumbers;
  PanelShowQuestionNumbers? get showQuestionNumbers =>
      _$this._showQuestionNumbers;
  set showQuestionNumbers(
          covariant PanelShowQuestionNumbers? showQuestionNumbers) =>
      _$this._showQuestionNumbers = showQuestionNumbers;

  String? _questionStartIndex;
  String? get questionStartIndex => _$this._questionStartIndex;
  set questionStartIndex(covariant String? questionStartIndex) =>
      _$this._questionStartIndex = questionStartIndex;

  bool? _allowAdaptiveActions;
  bool? get allowAdaptiveActions => _$this._allowAdaptiveActions;
  set allowAdaptiveActions(covariant bool? allowAdaptiveActions) =>
      _$this._allowAdaptiveActions = allowAdaptiveActions;

  String? _type;
  String? get type => _$this._type;
  set type(covariant String? type) => _$this._type = type;

  String? _name;
  String? get name => _$this._name;
  set name(covariant String? name) => _$this._name = name;

  ListBuilder<SurveyQuestionsInner>? _elements;
  ListBuilder<SurveyQuestionsInner> get elements =>
      _$this._elements ??= new ListBuilder<SurveyQuestionsInner>();
  set elements(covariant ListBuilder<SurveyQuestionsInner>? elements) =>
      _$this._elements = elements;

  bool? _visible;
  bool? get visible => _$this._visible;
  set visible(covariant bool? visible) => _$this._visible = visible;

  String? _visibleIf;
  String? get visibleIf => _$this._visibleIf;
  set visibleIf(covariant String? visibleIf) => _$this._visibleIf = visibleIf;

  String? _enableIf;
  String? get enableIf => _$this._enableIf;
  set enableIf(covariant String? enableIf) => _$this._enableIf = enableIf;

  String? _requiredIf;
  String? get requiredIf => _$this._requiredIf;
  set requiredIf(covariant String? requiredIf) =>
      _$this._requiredIf = requiredIf;

  bool? _readOnly;
  bool? get readOnly => _$this._readOnly;
  set readOnly(covariant bool? readOnly) => _$this._readOnly = readOnly;

  PanelbaseQuestionTitleLocation? _questionTitleLocation;
  PanelbaseQuestionTitleLocation? get questionTitleLocation =>
      _$this._questionTitleLocation;
  set questionTitleLocation(
          covariant PanelbaseQuestionTitleLocation? questionTitleLocation) =>
      _$this._questionTitleLocation = questionTitleLocation;

  String? _title;
  String? get title => _$this._title;
  set title(covariant String? title) => _$this._title = title;

  String? _description;
  String? get description => _$this._description;
  set description(covariant String? description) =>
      _$this._description = description;

  PanelbaseQuestionsOrder? _questionsOrder;
  PanelbaseQuestionsOrder? get questionsOrder => _$this._questionsOrder;
  set questionsOrder(covariant PanelbaseQuestionsOrder? questionsOrder) =>
      _$this._questionsOrder = questionsOrder;

  ListBuilder<SurveyQuestionsInner>? _questions;
  ListBuilder<SurveyQuestionsInner> get questions =>
      _$this._questions ??= new ListBuilder<SurveyQuestionsInner>();
  set questions(covariant ListBuilder<SurveyQuestionsInner>? questions) =>
      _$this._questions = questions;

  PanelBuilder() {
    Panel._defaults(this);
  }

  PanelBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _state = $v.state;
      _isRequired = $v.isRequired;
      _requiredErrorText = $v.requiredErrorText;
      _startWithNewLine = $v.startWithNewLine;
      _width = $v.width;
      _minWidth = $v.minWidth;
      _maxWidth = $v.maxWidth;
      _innerIndent = $v.innerIndent;
      _indent = $v.indent;
      _page = $v.page;
      _showNumber = $v.showNumber;
      _showQuestionNumbers = $v.showQuestionNumbers;
      _questionStartIndex = $v.questionStartIndex;
      _allowAdaptiveActions = $v.allowAdaptiveActions;
      _type = $v.type;
      _name = $v.name;
      _elements = $v.elements?.toBuilder();
      _visible = $v.visible;
      _visibleIf = $v.visibleIf;
      _enableIf = $v.enableIf;
      _requiredIf = $v.requiredIf;
      _readOnly = $v.readOnly;
      _questionTitleLocation = $v.questionTitleLocation;
      _title = $v.title;
      _description = $v.description;
      _questionsOrder = $v.questionsOrder;
      _questions = $v.questions?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
// ignore: override_on_non_overriding_method
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
              state: state,
              isRequired: isRequired,
              requiredErrorText: requiredErrorText,
              startWithNewLine: startWithNewLine,
              width: width,
              minWidth: minWidth,
              maxWidth: maxWidth,
              innerIndent: innerIndent,
              indent: indent,
              page: page,
              showNumber: showNumber,
              showQuestionNumbers: showQuestionNumbers,
              questionStartIndex: questionStartIndex,
              allowAdaptiveActions: allowAdaptiveActions,
              type: type,
              name: name,
              elements: _elements?.build(),
              visible: visible,
              visibleIf: visibleIf,
              enableIf: enableIf,
              requiredIf: requiredIf,
              readOnly: readOnly,
              questionTitleLocation: questionTitleLocation,
              title: title,
              description: description,
              questionsOrder: questionsOrder,
              questions: _questions?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'elements';
        _elements?.build();

        _$failedField = 'questions';
        _questions?.build();
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
