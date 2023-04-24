// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'panelbase.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

abstract class PanelbaseBuilder
    implements ElementbaseBuilder, PanelbaseAllOfBuilder {
  void replace(covariant Panelbase other);
  void update(void Function(PanelbaseBuilder) updates);
  String? get type;
  set type(covariant String? type);

  String? get name;
  set name(covariant String? name);

  ListBuilder<SurveyQuestionsInner> get elements;
  set elements(covariant ListBuilder<SurveyQuestionsInner>? elements);

  String? get visible;
  set visible(covariant String? visible);

  String? get visibleIf;
  set visibleIf(covariant String? visibleIf);

  String? get enableIf;
  set enableIf(covariant String? enableIf);

  String? get requiredIf;
  set requiredIf(covariant String? requiredIf);

  bool? get readOnly;
  set readOnly(covariant bool? readOnly);

  PanelbaseQuestionTitleLocation? get questionTitleLocation;
  set questionTitleLocation(
      covariant PanelbaseQuestionTitleLocation? questionTitleLocation);

  String? get title;
  set title(covariant String? title);

  String? get description;
  set description(covariant String? description);

  PanelbaseQuestionsOrder? get questionsOrder;
  set questionsOrder(covariant PanelbaseQuestionsOrder? questionsOrder);

  ListBuilder<SurveyQuestionsInner> get questions;
  set questions(covariant ListBuilder<SurveyQuestionsInner>? questions);
}

class _$$Panelbase extends $Panelbase {
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
  final String? title;
  @override
  final String? description;
  @override
  final PanelbaseQuestionsOrder? questionsOrder;
  @override
  final BuiltList<SurveyQuestionsInner>? questions;

  factory _$$Panelbase([void Function($PanelbaseBuilder)? updates]) =>
      (new $PanelbaseBuilder()..update(updates))._build();

  _$$Panelbase._(
      {this.type,
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
  $Panelbase rebuild(void Function($PanelbaseBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  $PanelbaseBuilder toBuilder() => new $PanelbaseBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is $Panelbase &&
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
    return (newBuiltValueToStringHelper(r'$Panelbase')
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

class $PanelbaseBuilder
    implements Builder<$Panelbase, $PanelbaseBuilder>, PanelbaseBuilder {
  _$$Panelbase? _$v;

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

  $PanelbaseBuilder() {
    $Panelbase._defaults(this);
  }

  $PanelbaseBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
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
  void replace(covariant $Panelbase other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$$Panelbase;
  }

  @override
  void update(void Function($PanelbaseBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  $Panelbase build() => _build();

  _$$Panelbase _build() {
    _$$Panelbase _$result;
    try {
      _$result = _$v ??
          new _$$Panelbase._(
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
            r'$Panelbase', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
