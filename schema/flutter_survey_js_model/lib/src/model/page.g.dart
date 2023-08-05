// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'page.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$Page extends Page {
  @override
  final PageNavigationButtonsVisibility? navigationButtonsVisibility;
  @override
  final SurveyTitle? navigationTitle;
  @override
  final SurveyTitle? navigationDescription;
  @override
  final num? maxTimeToFinish;
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

  factory _$Page([void Function(PageBuilder)? updates]) =>
      (new PageBuilder()..update(updates))._build();

  _$Page._(
      {this.navigationButtonsVisibility,
      this.navigationTitle,
      this.navigationDescription,
      this.maxTimeToFinish,
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
  Page rebuild(void Function(PageBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  PageBuilder toBuilder() => new PageBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Page &&
        navigationButtonsVisibility == other.navigationButtonsVisibility &&
        navigationTitle == other.navigationTitle &&
        navigationDescription == other.navigationDescription &&
        maxTimeToFinish == other.maxTimeToFinish &&
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
    _$hash = $jc(_$hash, navigationButtonsVisibility.hashCode);
    _$hash = $jc(_$hash, navigationTitle.hashCode);
    _$hash = $jc(_$hash, navigationDescription.hashCode);
    _$hash = $jc(_$hash, maxTimeToFinish.hashCode);
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
    return (newBuiltValueToStringHelper(r'Page')
          ..add('navigationButtonsVisibility', navigationButtonsVisibility)
          ..add('navigationTitle', navigationTitle)
          ..add('navigationDescription', navigationDescription)
          ..add('maxTimeToFinish', maxTimeToFinish)
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

class PageBuilder implements Builder<Page, PageBuilder>, PanelbaseBuilder {
  _$Page? _$v;

  PageNavigationButtonsVisibility? _navigationButtonsVisibility;
  PageNavigationButtonsVisibility? get navigationButtonsVisibility =>
      _$this._navigationButtonsVisibility;
  set navigationButtonsVisibility(
          covariant PageNavigationButtonsVisibility?
              navigationButtonsVisibility) =>
      _$this._navigationButtonsVisibility = navigationButtonsVisibility;

  SurveyTitleBuilder? _navigationTitle;
  SurveyTitleBuilder get navigationTitle =>
      _$this._navigationTitle ??= new SurveyTitleBuilder();
  set navigationTitle(covariant SurveyTitleBuilder? navigationTitle) =>
      _$this._navigationTitle = navigationTitle;

  SurveyTitleBuilder? _navigationDescription;
  SurveyTitleBuilder get navigationDescription =>
      _$this._navigationDescription ??= new SurveyTitleBuilder();
  set navigationDescription(
          covariant SurveyTitleBuilder? navigationDescription) =>
      _$this._navigationDescription = navigationDescription;

  num? _maxTimeToFinish;
  num? get maxTimeToFinish => _$this._maxTimeToFinish;
  set maxTimeToFinish(covariant num? maxTimeToFinish) =>
      _$this._maxTimeToFinish = maxTimeToFinish;

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

  PageBuilder() {
    Page._defaults(this);
  }

  PageBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _navigationButtonsVisibility = $v.navigationButtonsVisibility;
      _navigationTitle = $v.navigationTitle?.toBuilder();
      _navigationDescription = $v.navigationDescription?.toBuilder();
      _maxTimeToFinish = $v.maxTimeToFinish;
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
  void replace(covariant Page other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$Page;
  }

  @override
  void update(void Function(PageBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  Page build() => _build();

  _$Page _build() {
    _$Page _$result;
    try {
      _$result = _$v ??
          new _$Page._(
              navigationButtonsVisibility: navigationButtonsVisibility,
              navigationTitle: _navigationTitle?.build(),
              navigationDescription: _navigationDescription?.build(),
              maxTimeToFinish: maxTimeToFinish,
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
        _$failedField = 'navigationTitle';
        _navigationTitle?.build();
        _$failedField = 'navigationDescription';
        _navigationDescription?.build();

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
            r'Page', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
