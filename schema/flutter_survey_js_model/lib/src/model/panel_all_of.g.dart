// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'panel_all_of.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

abstract class PanelAllOfBuilder {
  void replace(PanelAllOf other);
  void update(void Function(PanelAllOfBuilder) updates);
  PanelState? get state;
  set state(PanelState? state);

  bool? get isRequired;
  set isRequired(bool? isRequired);

  String? get requiredErrorText;
  set requiredErrorText(String? requiredErrorText);

  bool? get startWithNewLine;
  set startWithNewLine(bool? startWithNewLine);

  String? get width;
  set width(String? width);

  String? get minWidth;
  set minWidth(String? minWidth);

  String? get maxWidth;
  set maxWidth(String? maxWidth);

  PanelInnerIndent? get innerIndent;
  set innerIndent(PanelInnerIndent? innerIndent);

  PanelIndent? get indent;
  set indent(PanelIndent? indent);

  String? get page;
  set page(String? page);

  bool? get showNumber;
  set showNumber(bool? showNumber);

  PanelShowQuestionNumbers? get showQuestionNumbers;
  set showQuestionNumbers(PanelShowQuestionNumbers? showQuestionNumbers);

  String? get questionStartIndex;
  set questionStartIndex(String? questionStartIndex);

  bool? get allowAdaptiveActions;
  set allowAdaptiveActions(bool? allowAdaptiveActions);
}

class _$$PanelAllOf extends $PanelAllOf {
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

  factory _$$PanelAllOf([void Function($PanelAllOfBuilder)? updates]) =>
      (new $PanelAllOfBuilder()..update(updates))._build();

  _$$PanelAllOf._(
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
      this.allowAdaptiveActions})
      : super._();

  @override
  $PanelAllOf rebuild(void Function($PanelAllOfBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  $PanelAllOfBuilder toBuilder() => new $PanelAllOfBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is $PanelAllOf &&
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
        allowAdaptiveActions == other.allowAdaptiveActions;
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
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'$PanelAllOf')
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
          ..add('allowAdaptiveActions', allowAdaptiveActions))
        .toString();
  }
}

class $PanelAllOfBuilder
    implements Builder<$PanelAllOf, $PanelAllOfBuilder>, PanelAllOfBuilder {
  _$$PanelAllOf? _$v;

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

  $PanelAllOfBuilder() {
    $PanelAllOf._defaults(this);
  }

  $PanelAllOfBuilder get _$this {
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
      _$v = null;
    }
    return this;
  }

  @override
  void replace(covariant $PanelAllOf other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$$PanelAllOf;
  }

  @override
  void update(void Function($PanelAllOfBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  $PanelAllOf build() => _build();

  _$$PanelAllOf _build() {
    final _$result = _$v ??
        new _$$PanelAllOf._(
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
            allowAdaptiveActions: allowAdaptiveActions);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
