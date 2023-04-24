// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'page.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$Page extends Page {
  @override
  final PageNavigationButtonsVisibility? navigationButtonsVisibility;
  @override
  final num? maxTimeToFinish;
  @override
  final String? navigationTitle;
  @override
  final String? navigationDescription;
  @override
  final String? title;
  @override
  final String? description;
  @override
  final String? type;
  @override
  final String? name;
  @override
  final BuiltList<SurveyQuestionsInner>? elements;
  @override
  final String? visible;
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
  final PanelbaseQuestionsOrder? questionsOrder;
  @override
  final BuiltList<SurveyQuestionsInner>? questions;

  factory _$Page([void Function(PageBuilder)? updates]) =>
      (new PageBuilder()..update(updates))._build();

  _$Page._(
      {this.navigationButtonsVisibility,
      this.maxTimeToFinish,
      this.navigationTitle,
      this.navigationDescription,
      this.title,
      this.description,
      this.type,
      this.name,
      this.elements,
      this.visible,
      this.visibleIf,
      this.enableIf,
      this.requiredIf,
      this.readOnly,
      this.questionTitleLocation,
      this.questionsOrder,
      this.questions})
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
        maxTimeToFinish == other.maxTimeToFinish &&
        navigationTitle == other.navigationTitle &&
        navigationDescription == other.navigationDescription &&
        title == other.title &&
        description == other.description &&
        type == other.type &&
        name == other.name &&
        elements == other.elements &&
        visible == other.visible &&
        visibleIf == other.visibleIf &&
        enableIf == other.enableIf &&
        requiredIf == other.requiredIf &&
        readOnly == other.readOnly &&
        questionTitleLocation == other.questionTitleLocation &&
        questionsOrder == other.questionsOrder &&
        questions == other.questions;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, navigationButtonsVisibility.hashCode);
    _$hash = $jc(_$hash, maxTimeToFinish.hashCode);
    _$hash = $jc(_$hash, navigationTitle.hashCode);
    _$hash = $jc(_$hash, navigationDescription.hashCode);
    _$hash = $jc(_$hash, title.hashCode);
    _$hash = $jc(_$hash, description.hashCode);
    _$hash = $jc(_$hash, type.hashCode);
    _$hash = $jc(_$hash, name.hashCode);
    _$hash = $jc(_$hash, elements.hashCode);
    _$hash = $jc(_$hash, visible.hashCode);
    _$hash = $jc(_$hash, visibleIf.hashCode);
    _$hash = $jc(_$hash, enableIf.hashCode);
    _$hash = $jc(_$hash, requiredIf.hashCode);
    _$hash = $jc(_$hash, readOnly.hashCode);
    _$hash = $jc(_$hash, questionTitleLocation.hashCode);
    _$hash = $jc(_$hash, questionsOrder.hashCode);
    _$hash = $jc(_$hash, questions.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'Page')
          ..add('navigationButtonsVisibility', navigationButtonsVisibility)
          ..add('maxTimeToFinish', maxTimeToFinish)
          ..add('navigationTitle', navigationTitle)
          ..add('navigationDescription', navigationDescription)
          ..add('title', title)
          ..add('description', description)
          ..add('type', type)
          ..add('name', name)
          ..add('elements', elements)
          ..add('visible', visible)
          ..add('visibleIf', visibleIf)
          ..add('enableIf', enableIf)
          ..add('requiredIf', requiredIf)
          ..add('readOnly', readOnly)
          ..add('questionTitleLocation', questionTitleLocation)
          ..add('questionsOrder', questionsOrder)
          ..add('questions', questions))
        .toString();
  }
}

class PageBuilder
    implements Builder<Page, PageBuilder>, PageAllOfBuilder, PanelbaseBuilder {
  _$Page? _$v;

  PageNavigationButtonsVisibility? _navigationButtonsVisibility;
  PageNavigationButtonsVisibility? get navigationButtonsVisibility =>
      _$this._navigationButtonsVisibility;
  set navigationButtonsVisibility(
          covariant PageNavigationButtonsVisibility?
              navigationButtonsVisibility) =>
      _$this._navigationButtonsVisibility = navigationButtonsVisibility;

  num? _maxTimeToFinish;
  num? get maxTimeToFinish => _$this._maxTimeToFinish;
  set maxTimeToFinish(covariant num? maxTimeToFinish) =>
      _$this._maxTimeToFinish = maxTimeToFinish;

  String? _navigationTitle;
  String? get navigationTitle => _$this._navigationTitle;
  set navigationTitle(covariant String? navigationTitle) =>
      _$this._navigationTitle = navigationTitle;

  String? _navigationDescription;
  String? get navigationDescription => _$this._navigationDescription;
  set navigationDescription(covariant String? navigationDescription) =>
      _$this._navigationDescription = navigationDescription;

  String? _title;
  String? get title => _$this._title;
  set title(covariant String? title) => _$this._title = title;

  String? _description;
  String? get description => _$this._description;
  set description(covariant String? description) =>
      _$this._description = description;

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

  String? _visible;
  String? get visible => _$this._visible;
  set visible(covariant String? visible) => _$this._visible = visible;

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

  PanelbaseQuestionsOrder? _questionsOrder;
  PanelbaseQuestionsOrder? get questionsOrder => _$this._questionsOrder;
  set questionsOrder(covariant PanelbaseQuestionsOrder? questionsOrder) =>
      _$this._questionsOrder = questionsOrder;

  ListBuilder<SurveyQuestionsInner>? _questions;
  ListBuilder<SurveyQuestionsInner> get questions =>
      _$this._questions ??= new ListBuilder<SurveyQuestionsInner>();
  set questions(covariant ListBuilder<SurveyQuestionsInner>? questions) =>
      _$this._questions = questions;

  PageBuilder() {
    Page._defaults(this);
  }

  PageBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _navigationButtonsVisibility = $v.navigationButtonsVisibility;
      _maxTimeToFinish = $v.maxTimeToFinish;
      _navigationTitle = $v.navigationTitle;
      _navigationDescription = $v.navigationDescription;
      _title = $v.title;
      _description = $v.description;
      _type = $v.type;
      _name = $v.name;
      _elements = $v.elements?.toBuilder();
      _visible = $v.visible;
      _visibleIf = $v.visibleIf;
      _enableIf = $v.enableIf;
      _requiredIf = $v.requiredIf;
      _readOnly = $v.readOnly;
      _questionTitleLocation = $v.questionTitleLocation;
      _questionsOrder = $v.questionsOrder;
      _questions = $v.questions?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
// ignore: override_on_non_overriding_method
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
              maxTimeToFinish: maxTimeToFinish,
              navigationTitle: navigationTitle,
              navigationDescription: navigationDescription,
              title: title,
              description: description,
              type: type,
              name: name,
              elements: _elements?.build(),
              visible: visible,
              visibleIf: visibleIf,
              enableIf: enableIf,
              requiredIf: requiredIf,
              readOnly: readOnly,
              questionTitleLocation: questionTitleLocation,
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
            r'Page', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
