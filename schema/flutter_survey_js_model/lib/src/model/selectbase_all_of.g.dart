// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'selectbase_all_of.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

abstract class SelectbaseAllOfBuilder {
  void replace(SelectbaseAllOf other);
  void update(void Function(SelectbaseAllOfBuilder) updates);
  String? get showCommentArea;
  set showCommentArea(String? showCommentArea);

  String? get choicesFromQuestion;
  set choicesFromQuestion(String? choicesFromQuestion);

  ListBuilder<Itemvalue> get choices;
  set choices(ListBuilder<Itemvalue>? choices);

  SelectbaseChoicesFromQuestionMode? get choicesFromQuestionMode;
  set choicesFromQuestionMode(
      SelectbaseChoicesFromQuestionMode? choicesFromQuestionMode);

  SelectbaseChoicesOrder? get choicesOrder;
  set choicesOrder(SelectbaseChoicesOrder? choicesOrder);

  ListBuilder<ChoicesRestful> get choicesByUrl;
  set choicesByUrl(ListBuilder<ChoicesRestful>? choicesByUrl);

  bool? get hideIfChoicesEmpty;
  set hideIfChoicesEmpty(bool? hideIfChoicesEmpty);

  String? get choicesVisibleIf;
  set choicesVisibleIf(String? choicesVisibleIf);

  String? get choicesEnableIf;
  set choicesEnableIf(String? choicesEnableIf);

  bool? get separateSpecialChoices;
  set separateSpecialChoices(bool? separateSpecialChoices);

  bool? get showOtherItem;
  set showOtherItem(bool? showOtherItem);

  bool? get showNoneItem;
  set showNoneItem(bool? showNoneItem);

  String? get otherPlaceholder;
  set otherPlaceholder(String? otherPlaceholder);

  String? get noneText;
  set noneText(String? noneText);

  String? get otherText;
  set otherText(String? otherText);

  String? get otherErrorText;
  set otherErrorText(String? otherErrorText);

  bool? get storeOthersAsComment;
  set storeOthersAsComment(bool? storeOthersAsComment);
}

class _$$SelectbaseAllOf extends $SelectbaseAllOf {
  @override
  final String? showCommentArea;
  @override
  final String? choicesFromQuestion;
  @override
  final BuiltList<Itemvalue>? choices;
  @override
  final SelectbaseChoicesFromQuestionMode? choicesFromQuestionMode;
  @override
  final SelectbaseChoicesOrder? choicesOrder;
  @override
  final BuiltList<ChoicesRestful>? choicesByUrl;
  @override
  final bool? hideIfChoicesEmpty;
  @override
  final String? choicesVisibleIf;
  @override
  final String? choicesEnableIf;
  @override
  final bool? separateSpecialChoices;
  @override
  final bool? showOtherItem;
  @override
  final bool? showNoneItem;
  @override
  final String? otherPlaceholder;
  @override
  final String? noneText;
  @override
  final String? otherText;
  @override
  final String? otherErrorText;
  @override
  final bool? storeOthersAsComment;

  factory _$$SelectbaseAllOf(
          [void Function($SelectbaseAllOfBuilder)? updates]) =>
      (new $SelectbaseAllOfBuilder()..update(updates))._build();

  _$$SelectbaseAllOf._(
      {this.showCommentArea,
      this.choicesFromQuestion,
      this.choices,
      this.choicesFromQuestionMode,
      this.choicesOrder,
      this.choicesByUrl,
      this.hideIfChoicesEmpty,
      this.choicesVisibleIf,
      this.choicesEnableIf,
      this.separateSpecialChoices,
      this.showOtherItem,
      this.showNoneItem,
      this.otherPlaceholder,
      this.noneText,
      this.otherText,
      this.otherErrorText,
      this.storeOthersAsComment})
      : super._();

  @override
  $SelectbaseAllOf rebuild(void Function($SelectbaseAllOfBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  $SelectbaseAllOfBuilder toBuilder() =>
      new $SelectbaseAllOfBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is $SelectbaseAllOf &&
        showCommentArea == other.showCommentArea &&
        choicesFromQuestion == other.choicesFromQuestion &&
        choices == other.choices &&
        choicesFromQuestionMode == other.choicesFromQuestionMode &&
        choicesOrder == other.choicesOrder &&
        choicesByUrl == other.choicesByUrl &&
        hideIfChoicesEmpty == other.hideIfChoicesEmpty &&
        choicesVisibleIf == other.choicesVisibleIf &&
        choicesEnableIf == other.choicesEnableIf &&
        separateSpecialChoices == other.separateSpecialChoices &&
        showOtherItem == other.showOtherItem &&
        showNoneItem == other.showNoneItem &&
        otherPlaceholder == other.otherPlaceholder &&
        noneText == other.noneText &&
        otherText == other.otherText &&
        otherErrorText == other.otherErrorText &&
        storeOthersAsComment == other.storeOthersAsComment;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, showCommentArea.hashCode);
    _$hash = $jc(_$hash, choicesFromQuestion.hashCode);
    _$hash = $jc(_$hash, choices.hashCode);
    _$hash = $jc(_$hash, choicesFromQuestionMode.hashCode);
    _$hash = $jc(_$hash, choicesOrder.hashCode);
    _$hash = $jc(_$hash, choicesByUrl.hashCode);
    _$hash = $jc(_$hash, hideIfChoicesEmpty.hashCode);
    _$hash = $jc(_$hash, choicesVisibleIf.hashCode);
    _$hash = $jc(_$hash, choicesEnableIf.hashCode);
    _$hash = $jc(_$hash, separateSpecialChoices.hashCode);
    _$hash = $jc(_$hash, showOtherItem.hashCode);
    _$hash = $jc(_$hash, showNoneItem.hashCode);
    _$hash = $jc(_$hash, otherPlaceholder.hashCode);
    _$hash = $jc(_$hash, noneText.hashCode);
    _$hash = $jc(_$hash, otherText.hashCode);
    _$hash = $jc(_$hash, otherErrorText.hashCode);
    _$hash = $jc(_$hash, storeOthersAsComment.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'$SelectbaseAllOf')
          ..add('showCommentArea', showCommentArea)
          ..add('choicesFromQuestion', choicesFromQuestion)
          ..add('choices', choices)
          ..add('choicesFromQuestionMode', choicesFromQuestionMode)
          ..add('choicesOrder', choicesOrder)
          ..add('choicesByUrl', choicesByUrl)
          ..add('hideIfChoicesEmpty', hideIfChoicesEmpty)
          ..add('choicesVisibleIf', choicesVisibleIf)
          ..add('choicesEnableIf', choicesEnableIf)
          ..add('separateSpecialChoices', separateSpecialChoices)
          ..add('showOtherItem', showOtherItem)
          ..add('showNoneItem', showNoneItem)
          ..add('otherPlaceholder', otherPlaceholder)
          ..add('noneText', noneText)
          ..add('otherText', otherText)
          ..add('otherErrorText', otherErrorText)
          ..add('storeOthersAsComment', storeOthersAsComment))
        .toString();
  }
}

class $SelectbaseAllOfBuilder
    implements
        Builder<$SelectbaseAllOf, $SelectbaseAllOfBuilder>,
        SelectbaseAllOfBuilder {
  _$$SelectbaseAllOf? _$v;

  String? _showCommentArea;
  String? get showCommentArea => _$this._showCommentArea;
  set showCommentArea(covariant String? showCommentArea) =>
      _$this._showCommentArea = showCommentArea;

  String? _choicesFromQuestion;
  String? get choicesFromQuestion => _$this._choicesFromQuestion;
  set choicesFromQuestion(covariant String? choicesFromQuestion) =>
      _$this._choicesFromQuestion = choicesFromQuestion;

  ListBuilder<Itemvalue>? _choices;
  ListBuilder<Itemvalue> get choices =>
      _$this._choices ??= new ListBuilder<Itemvalue>();
  set choices(covariant ListBuilder<Itemvalue>? choices) =>
      _$this._choices = choices;

  SelectbaseChoicesFromQuestionMode? _choicesFromQuestionMode;
  SelectbaseChoicesFromQuestionMode? get choicesFromQuestionMode =>
      _$this._choicesFromQuestionMode;
  set choicesFromQuestionMode(
          covariant SelectbaseChoicesFromQuestionMode?
              choicesFromQuestionMode) =>
      _$this._choicesFromQuestionMode = choicesFromQuestionMode;

  SelectbaseChoicesOrder? _choicesOrder;
  SelectbaseChoicesOrder? get choicesOrder => _$this._choicesOrder;
  set choicesOrder(covariant SelectbaseChoicesOrder? choicesOrder) =>
      _$this._choicesOrder = choicesOrder;

  ListBuilder<ChoicesRestful>? _choicesByUrl;
  ListBuilder<ChoicesRestful> get choicesByUrl =>
      _$this._choicesByUrl ??= new ListBuilder<ChoicesRestful>();
  set choicesByUrl(covariant ListBuilder<ChoicesRestful>? choicesByUrl) =>
      _$this._choicesByUrl = choicesByUrl;

  bool? _hideIfChoicesEmpty;
  bool? get hideIfChoicesEmpty => _$this._hideIfChoicesEmpty;
  set hideIfChoicesEmpty(covariant bool? hideIfChoicesEmpty) =>
      _$this._hideIfChoicesEmpty = hideIfChoicesEmpty;

  String? _choicesVisibleIf;
  String? get choicesVisibleIf => _$this._choicesVisibleIf;
  set choicesVisibleIf(covariant String? choicesVisibleIf) =>
      _$this._choicesVisibleIf = choicesVisibleIf;

  String? _choicesEnableIf;
  String? get choicesEnableIf => _$this._choicesEnableIf;
  set choicesEnableIf(covariant String? choicesEnableIf) =>
      _$this._choicesEnableIf = choicesEnableIf;

  bool? _separateSpecialChoices;
  bool? get separateSpecialChoices => _$this._separateSpecialChoices;
  set separateSpecialChoices(covariant bool? separateSpecialChoices) =>
      _$this._separateSpecialChoices = separateSpecialChoices;

  bool? _showOtherItem;
  bool? get showOtherItem => _$this._showOtherItem;
  set showOtherItem(covariant bool? showOtherItem) =>
      _$this._showOtherItem = showOtherItem;

  bool? _showNoneItem;
  bool? get showNoneItem => _$this._showNoneItem;
  set showNoneItem(covariant bool? showNoneItem) =>
      _$this._showNoneItem = showNoneItem;

  String? _otherPlaceholder;
  String? get otherPlaceholder => _$this._otherPlaceholder;
  set otherPlaceholder(covariant String? otherPlaceholder) =>
      _$this._otherPlaceholder = otherPlaceholder;

  String? _noneText;
  String? get noneText => _$this._noneText;
  set noneText(covariant String? noneText) => _$this._noneText = noneText;

  String? _otherText;
  String? get otherText => _$this._otherText;
  set otherText(covariant String? otherText) => _$this._otherText = otherText;

  String? _otherErrorText;
  String? get otherErrorText => _$this._otherErrorText;
  set otherErrorText(covariant String? otherErrorText) =>
      _$this._otherErrorText = otherErrorText;

  bool? _storeOthersAsComment;
  bool? get storeOthersAsComment => _$this._storeOthersAsComment;
  set storeOthersAsComment(covariant bool? storeOthersAsComment) =>
      _$this._storeOthersAsComment = storeOthersAsComment;

  $SelectbaseAllOfBuilder() {
    $SelectbaseAllOf._defaults(this);
  }

  $SelectbaseAllOfBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _showCommentArea = $v.showCommentArea;
      _choicesFromQuestion = $v.choicesFromQuestion;
      _choices = $v.choices?.toBuilder();
      _choicesFromQuestionMode = $v.choicesFromQuestionMode;
      _choicesOrder = $v.choicesOrder;
      _choicesByUrl = $v.choicesByUrl?.toBuilder();
      _hideIfChoicesEmpty = $v.hideIfChoicesEmpty;
      _choicesVisibleIf = $v.choicesVisibleIf;
      _choicesEnableIf = $v.choicesEnableIf;
      _separateSpecialChoices = $v.separateSpecialChoices;
      _showOtherItem = $v.showOtherItem;
      _showNoneItem = $v.showNoneItem;
      _otherPlaceholder = $v.otherPlaceholder;
      _noneText = $v.noneText;
      _otherText = $v.otherText;
      _otherErrorText = $v.otherErrorText;
      _storeOthersAsComment = $v.storeOthersAsComment;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(covariant $SelectbaseAllOf other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$$SelectbaseAllOf;
  }

  @override
  void update(void Function($SelectbaseAllOfBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  $SelectbaseAllOf build() => _build();

  _$$SelectbaseAllOf _build() {
    _$$SelectbaseAllOf _$result;
    try {
      _$result = _$v ??
          new _$$SelectbaseAllOf._(
              showCommentArea: showCommentArea,
              choicesFromQuestion: choicesFromQuestion,
              choices: _choices?.build(),
              choicesFromQuestionMode: choicesFromQuestionMode,
              choicesOrder: choicesOrder,
              choicesByUrl: _choicesByUrl?.build(),
              hideIfChoicesEmpty: hideIfChoicesEmpty,
              choicesVisibleIf: choicesVisibleIf,
              choicesEnableIf: choicesEnableIf,
              separateSpecialChoices: separateSpecialChoices,
              showOtherItem: showOtherItem,
              showNoneItem: showNoneItem,
              otherPlaceholder: otherPlaceholder,
              noneText: noneText,
              otherText: otherText,
              otherErrorText: otherErrorText,
              storeOthersAsComment: storeOthersAsComment);
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'choices';
        _choices?.build();

        _$failedField = 'choicesByUrl';
        _choicesByUrl?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'$SelectbaseAllOf', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
