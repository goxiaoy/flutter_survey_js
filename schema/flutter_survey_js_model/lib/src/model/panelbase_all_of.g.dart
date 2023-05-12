// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'panelbase_all_of.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

abstract class PanelbaseAllOfBuilder {
  void replace(PanelbaseAllOf other);
  void update(void Function(PanelbaseAllOfBuilder) updates);
  String? get name;
  set name(String? name);

  ListBuilder<SurveyQuestionsInner> get elements;
  set elements(ListBuilder<SurveyQuestionsInner>? elements);

  bool? get visible;
  set visible(bool? visible);

  String? get visibleIf;
  set visibleIf(String? visibleIf);

  String? get enableIf;
  set enableIf(String? enableIf);

  String? get requiredIf;
  set requiredIf(String? requiredIf);

  bool? get readOnly;
  set readOnly(bool? readOnly);

  PanelbaseQuestionTitleLocation? get questionTitleLocation;
  set questionTitleLocation(
      PanelbaseQuestionTitleLocation? questionTitleLocation);

  String? get title;
  set title(String? title);

  String? get description;
  set description(String? description);

  PanelbaseQuestionsOrder? get questionsOrder;
  set questionsOrder(PanelbaseQuestionsOrder? questionsOrder);

  ListBuilder<SurveyQuestionsInner> get questions;
  set questions(ListBuilder<SurveyQuestionsInner>? questions);
}

class _$$PanelbaseAllOf extends $PanelbaseAllOf {
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

  factory _$$PanelbaseAllOf([void Function($PanelbaseAllOfBuilder)? updates]) =>
      (new $PanelbaseAllOfBuilder()..update(updates))._build();

  _$$PanelbaseAllOf._(
      {this.name,
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
  $PanelbaseAllOf rebuild(void Function($PanelbaseAllOfBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  $PanelbaseAllOfBuilder toBuilder() =>
      new $PanelbaseAllOfBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is $PanelbaseAllOf &&
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
    return (newBuiltValueToStringHelper(r'$PanelbaseAllOf')
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

class $PanelbaseAllOfBuilder
    implements
        Builder<$PanelbaseAllOf, $PanelbaseAllOfBuilder>,
        PanelbaseAllOfBuilder {
  _$$PanelbaseAllOf? _$v;

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

  $PanelbaseAllOfBuilder() {
    $PanelbaseAllOf._defaults(this);
  }

  $PanelbaseAllOfBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
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
  void replace(covariant $PanelbaseAllOf other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$$PanelbaseAllOf;
  }

  @override
  void update(void Function($PanelbaseAllOfBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  $PanelbaseAllOf build() => _build();

  _$$PanelbaseAllOf _build() {
    _$$PanelbaseAllOf _$result;
    try {
      _$result = _$v ??
          new _$$PanelbaseAllOf._(
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
            r'$PanelbaseAllOf', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
