// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'matrixdropdownbase_all_of.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

abstract class MatrixdropdownbaseAllOfBuilder {
  void replace(MatrixdropdownbaseAllOf other);
  void update(void Function(MatrixdropdownbaseAllOfBuilder) updates);
  ListBuilder<Matrixdropdowncolumn> get columns;
  set columns(ListBuilder<Matrixdropdowncolumn>? columns);

  MatrixdropdownbaseColumnLayout? get columnLayout;
  set columnLayout(MatrixdropdownbaseColumnLayout? columnLayout);

  String? get detailElements;
  set detailElements(String? detailElements);

  MatrixdropdownbaseDetailPanelMode? get detailPanelMode;
  set detailPanelMode(MatrixdropdownbaseDetailPanelMode? detailPanelMode);

  bool? get horizontalScroll;
  set horizontalScroll(bool? horizontalScroll);

  ListBuilder<SelectbaseAllOfChoicesInner> get choices;
  set choices(ListBuilder<SelectbaseAllOfChoicesInner>? choices);

  String? get placeholder;
  set placeholder(String? placeholder);

  String? get keyDuplicationError;
  set keyDuplicationError(String? keyDuplicationError);

  MatrixdropdownbaseCellType? get cellType;
  set cellType(MatrixdropdownbaseCellType? cellType);

  MatrixdropdownbaseColumnColCount? get columnColCount;
  set columnColCount(MatrixdropdownbaseColumnColCount? columnColCount);

  String? get columnMinWidth;
  set columnMinWidth(String? columnMinWidth);

  bool? get allowAdaptiveActions;
  set allowAdaptiveActions(bool? allowAdaptiveActions);
}

class _$$MatrixdropdownbaseAllOf extends $MatrixdropdownbaseAllOf {
  @override
  final BuiltList<Matrixdropdowncolumn>? columns;
  @override
  final MatrixdropdownbaseColumnLayout? columnLayout;
  @override
  final String? detailElements;
  @override
  final MatrixdropdownbaseDetailPanelMode? detailPanelMode;
  @override
  final bool? horizontalScroll;
  @override
  final BuiltList<SelectbaseAllOfChoicesInner>? choices;
  @override
  final String? placeholder;
  @override
  final String? keyDuplicationError;
  @override
  final MatrixdropdownbaseCellType? cellType;
  @override
  final MatrixdropdownbaseColumnColCount? columnColCount;
  @override
  final String? columnMinWidth;
  @override
  final bool? allowAdaptiveActions;

  factory _$$MatrixdropdownbaseAllOf(
          [void Function($MatrixdropdownbaseAllOfBuilder)? updates]) =>
      (new $MatrixdropdownbaseAllOfBuilder()..update(updates))._build();

  _$$MatrixdropdownbaseAllOf._(
      {this.columns,
      this.columnLayout,
      this.detailElements,
      this.detailPanelMode,
      this.horizontalScroll,
      this.choices,
      this.placeholder,
      this.keyDuplicationError,
      this.cellType,
      this.columnColCount,
      this.columnMinWidth,
      this.allowAdaptiveActions})
      : super._();

  @override
  $MatrixdropdownbaseAllOf rebuild(
          void Function($MatrixdropdownbaseAllOfBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  $MatrixdropdownbaseAllOfBuilder toBuilder() =>
      new $MatrixdropdownbaseAllOfBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is $MatrixdropdownbaseAllOf &&
        columns == other.columns &&
        columnLayout == other.columnLayout &&
        detailElements == other.detailElements &&
        detailPanelMode == other.detailPanelMode &&
        horizontalScroll == other.horizontalScroll &&
        choices == other.choices &&
        placeholder == other.placeholder &&
        keyDuplicationError == other.keyDuplicationError &&
        cellType == other.cellType &&
        columnColCount == other.columnColCount &&
        columnMinWidth == other.columnMinWidth &&
        allowAdaptiveActions == other.allowAdaptiveActions;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, columns.hashCode);
    _$hash = $jc(_$hash, columnLayout.hashCode);
    _$hash = $jc(_$hash, detailElements.hashCode);
    _$hash = $jc(_$hash, detailPanelMode.hashCode);
    _$hash = $jc(_$hash, horizontalScroll.hashCode);
    _$hash = $jc(_$hash, choices.hashCode);
    _$hash = $jc(_$hash, placeholder.hashCode);
    _$hash = $jc(_$hash, keyDuplicationError.hashCode);
    _$hash = $jc(_$hash, cellType.hashCode);
    _$hash = $jc(_$hash, columnColCount.hashCode);
    _$hash = $jc(_$hash, columnMinWidth.hashCode);
    _$hash = $jc(_$hash, allowAdaptiveActions.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'$MatrixdropdownbaseAllOf')
          ..add('columns', columns)
          ..add('columnLayout', columnLayout)
          ..add('detailElements', detailElements)
          ..add('detailPanelMode', detailPanelMode)
          ..add('horizontalScroll', horizontalScroll)
          ..add('choices', choices)
          ..add('placeholder', placeholder)
          ..add('keyDuplicationError', keyDuplicationError)
          ..add('cellType', cellType)
          ..add('columnColCount', columnColCount)
          ..add('columnMinWidth', columnMinWidth)
          ..add('allowAdaptiveActions', allowAdaptiveActions))
        .toString();
  }
}

class $MatrixdropdownbaseAllOfBuilder
    implements
        Builder<$MatrixdropdownbaseAllOf, $MatrixdropdownbaseAllOfBuilder>,
        MatrixdropdownbaseAllOfBuilder {
  _$$MatrixdropdownbaseAllOf? _$v;

  ListBuilder<Matrixdropdowncolumn>? _columns;
  ListBuilder<Matrixdropdowncolumn> get columns =>
      _$this._columns ??= new ListBuilder<Matrixdropdowncolumn>();
  set columns(covariant ListBuilder<Matrixdropdowncolumn>? columns) =>
      _$this._columns = columns;

  MatrixdropdownbaseColumnLayout? _columnLayout;
  MatrixdropdownbaseColumnLayout? get columnLayout => _$this._columnLayout;
  set columnLayout(covariant MatrixdropdownbaseColumnLayout? columnLayout) =>
      _$this._columnLayout = columnLayout;

  String? _detailElements;
  String? get detailElements => _$this._detailElements;
  set detailElements(covariant String? detailElements) =>
      _$this._detailElements = detailElements;

  MatrixdropdownbaseDetailPanelMode? _detailPanelMode;
  MatrixdropdownbaseDetailPanelMode? get detailPanelMode =>
      _$this._detailPanelMode;
  set detailPanelMode(
          covariant MatrixdropdownbaseDetailPanelMode? detailPanelMode) =>
      _$this._detailPanelMode = detailPanelMode;

  bool? _horizontalScroll;
  bool? get horizontalScroll => _$this._horizontalScroll;
  set horizontalScroll(covariant bool? horizontalScroll) =>
      _$this._horizontalScroll = horizontalScroll;

  ListBuilder<SelectbaseAllOfChoicesInner>? _choices;
  ListBuilder<SelectbaseAllOfChoicesInner> get choices =>
      _$this._choices ??= new ListBuilder<SelectbaseAllOfChoicesInner>();
  set choices(covariant ListBuilder<SelectbaseAllOfChoicesInner>? choices) =>
      _$this._choices = choices;

  String? _placeholder;
  String? get placeholder => _$this._placeholder;
  set placeholder(covariant String? placeholder) =>
      _$this._placeholder = placeholder;

  String? _keyDuplicationError;
  String? get keyDuplicationError => _$this._keyDuplicationError;
  set keyDuplicationError(covariant String? keyDuplicationError) =>
      _$this._keyDuplicationError = keyDuplicationError;

  MatrixdropdownbaseCellType? _cellType;
  MatrixdropdownbaseCellType? get cellType => _$this._cellType;
  set cellType(covariant MatrixdropdownbaseCellType? cellType) =>
      _$this._cellType = cellType;

  MatrixdropdownbaseColumnColCount? _columnColCount;
  MatrixdropdownbaseColumnColCount? get columnColCount =>
      _$this._columnColCount;
  set columnColCount(
          covariant MatrixdropdownbaseColumnColCount? columnColCount) =>
      _$this._columnColCount = columnColCount;

  String? _columnMinWidth;
  String? get columnMinWidth => _$this._columnMinWidth;
  set columnMinWidth(covariant String? columnMinWidth) =>
      _$this._columnMinWidth = columnMinWidth;

  bool? _allowAdaptiveActions;
  bool? get allowAdaptiveActions => _$this._allowAdaptiveActions;
  set allowAdaptiveActions(covariant bool? allowAdaptiveActions) =>
      _$this._allowAdaptiveActions = allowAdaptiveActions;

  $MatrixdropdownbaseAllOfBuilder() {
    $MatrixdropdownbaseAllOf._defaults(this);
  }

  $MatrixdropdownbaseAllOfBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _columns = $v.columns?.toBuilder();
      _columnLayout = $v.columnLayout;
      _detailElements = $v.detailElements;
      _detailPanelMode = $v.detailPanelMode;
      _horizontalScroll = $v.horizontalScroll;
      _choices = $v.choices?.toBuilder();
      _placeholder = $v.placeholder;
      _keyDuplicationError = $v.keyDuplicationError;
      _cellType = $v.cellType;
      _columnColCount = $v.columnColCount;
      _columnMinWidth = $v.columnMinWidth;
      _allowAdaptiveActions = $v.allowAdaptiveActions;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(covariant $MatrixdropdownbaseAllOf other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$$MatrixdropdownbaseAllOf;
  }

  @override
  void update(void Function($MatrixdropdownbaseAllOfBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  $MatrixdropdownbaseAllOf build() => _build();

  _$$MatrixdropdownbaseAllOf _build() {
    _$$MatrixdropdownbaseAllOf _$result;
    try {
      _$result = _$v ??
          new _$$MatrixdropdownbaseAllOf._(
              columns: _columns?.build(),
              columnLayout: columnLayout,
              detailElements: detailElements,
              detailPanelMode: detailPanelMode,
              horizontalScroll: horizontalScroll,
              choices: _choices?.build(),
              placeholder: placeholder,
              keyDuplicationError: keyDuplicationError,
              cellType: cellType,
              columnColCount: columnColCount,
              columnMinWidth: columnMinWidth,
              allowAdaptiveActions: allowAdaptiveActions);
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'columns';
        _columns?.build();

        _$failedField = 'choices';
        _choices?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'$MatrixdropdownbaseAllOf', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
