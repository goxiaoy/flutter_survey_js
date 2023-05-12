// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'matrixdynamic_all_of.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

abstract class MatrixdynamicAllOfBuilder {
  void replace(MatrixdynamicAllOf other);
  void update(void Function(MatrixdynamicAllOfBuilder) updates);
  String? get rowsVisibleIf;
  set rowsVisibleIf(String? rowsVisibleIf);

  bool? get allowAddRows;
  set allowAddRows(bool? allowAddRows);

  bool? get allowRemoveRows;
  set allowRemoveRows(bool? allowRemoveRows);

  num? get rowCount;
  set rowCount(num? rowCount);

  num? get minRowCount;
  set minRowCount(num? minRowCount);

  num? get maxRowCount;
  set maxRowCount(num? maxRowCount);

  String? get keyName;
  set keyName(String? keyName);

  String? get defaultRowValue;
  set defaultRowValue(String? defaultRowValue);

  bool? get defaultValueFromLastRow;
  set defaultValueFromLastRow(bool? defaultValueFromLastRow);

  bool? get confirmDelete;
  set confirmDelete(bool? confirmDelete);

  String? get confirmDeleteText;
  set confirmDeleteText(String? confirmDeleteText);

  MatrixdynamicAddRowLocation? get addRowLocation;
  set addRowLocation(MatrixdynamicAddRowLocation? addRowLocation);

  String? get addRowText;
  set addRowText(String? addRowText);

  String? get removeRowText;
  set removeRowText(String? removeRowText);

  bool? get hideColumnsIfEmpty;
  set hideColumnsIfEmpty(bool? hideColumnsIfEmpty);

  String? get emptyRowsText;
  set emptyRowsText(String? emptyRowsText);

  bool? get detailPanelShowOnAdding;
  set detailPanelShowOnAdding(bool? detailPanelShowOnAdding);

  String? get allowRowsDragAndDrop;
  set allowRowsDragAndDrop(String? allowRowsDragAndDrop);
}

class _$$MatrixdynamicAllOf extends $MatrixdynamicAllOf {
  @override
  final String? rowsVisibleIf;
  @override
  final bool? allowAddRows;
  @override
  final bool? allowRemoveRows;
  @override
  final num? rowCount;
  @override
  final num? minRowCount;
  @override
  final num? maxRowCount;
  @override
  final String? keyName;
  @override
  final String? defaultRowValue;
  @override
  final bool? defaultValueFromLastRow;
  @override
  final bool? confirmDelete;
  @override
  final String? confirmDeleteText;
  @override
  final MatrixdynamicAddRowLocation? addRowLocation;
  @override
  final String? addRowText;
  @override
  final String? removeRowText;
  @override
  final bool? hideColumnsIfEmpty;
  @override
  final String? emptyRowsText;
  @override
  final bool? detailPanelShowOnAdding;
  @override
  final String? allowRowsDragAndDrop;

  factory _$$MatrixdynamicAllOf(
          [void Function($MatrixdynamicAllOfBuilder)? updates]) =>
      (new $MatrixdynamicAllOfBuilder()..update(updates))._build();

  _$$MatrixdynamicAllOf._(
      {this.rowsVisibleIf,
      this.allowAddRows,
      this.allowRemoveRows,
      this.rowCount,
      this.minRowCount,
      this.maxRowCount,
      this.keyName,
      this.defaultRowValue,
      this.defaultValueFromLastRow,
      this.confirmDelete,
      this.confirmDeleteText,
      this.addRowLocation,
      this.addRowText,
      this.removeRowText,
      this.hideColumnsIfEmpty,
      this.emptyRowsText,
      this.detailPanelShowOnAdding,
      this.allowRowsDragAndDrop})
      : super._();

  @override
  $MatrixdynamicAllOf rebuild(
          void Function($MatrixdynamicAllOfBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  $MatrixdynamicAllOfBuilder toBuilder() =>
      new $MatrixdynamicAllOfBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is $MatrixdynamicAllOf &&
        rowsVisibleIf == other.rowsVisibleIf &&
        allowAddRows == other.allowAddRows &&
        allowRemoveRows == other.allowRemoveRows &&
        rowCount == other.rowCount &&
        minRowCount == other.minRowCount &&
        maxRowCount == other.maxRowCount &&
        keyName == other.keyName &&
        defaultRowValue == other.defaultRowValue &&
        defaultValueFromLastRow == other.defaultValueFromLastRow &&
        confirmDelete == other.confirmDelete &&
        confirmDeleteText == other.confirmDeleteText &&
        addRowLocation == other.addRowLocation &&
        addRowText == other.addRowText &&
        removeRowText == other.removeRowText &&
        hideColumnsIfEmpty == other.hideColumnsIfEmpty &&
        emptyRowsText == other.emptyRowsText &&
        detailPanelShowOnAdding == other.detailPanelShowOnAdding &&
        allowRowsDragAndDrop == other.allowRowsDragAndDrop;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, rowsVisibleIf.hashCode);
    _$hash = $jc(_$hash, allowAddRows.hashCode);
    _$hash = $jc(_$hash, allowRemoveRows.hashCode);
    _$hash = $jc(_$hash, rowCount.hashCode);
    _$hash = $jc(_$hash, minRowCount.hashCode);
    _$hash = $jc(_$hash, maxRowCount.hashCode);
    _$hash = $jc(_$hash, keyName.hashCode);
    _$hash = $jc(_$hash, defaultRowValue.hashCode);
    _$hash = $jc(_$hash, defaultValueFromLastRow.hashCode);
    _$hash = $jc(_$hash, confirmDelete.hashCode);
    _$hash = $jc(_$hash, confirmDeleteText.hashCode);
    _$hash = $jc(_$hash, addRowLocation.hashCode);
    _$hash = $jc(_$hash, addRowText.hashCode);
    _$hash = $jc(_$hash, removeRowText.hashCode);
    _$hash = $jc(_$hash, hideColumnsIfEmpty.hashCode);
    _$hash = $jc(_$hash, emptyRowsText.hashCode);
    _$hash = $jc(_$hash, detailPanelShowOnAdding.hashCode);
    _$hash = $jc(_$hash, allowRowsDragAndDrop.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'$MatrixdynamicAllOf')
          ..add('rowsVisibleIf', rowsVisibleIf)
          ..add('allowAddRows', allowAddRows)
          ..add('allowRemoveRows', allowRemoveRows)
          ..add('rowCount', rowCount)
          ..add('minRowCount', minRowCount)
          ..add('maxRowCount', maxRowCount)
          ..add('keyName', keyName)
          ..add('defaultRowValue', defaultRowValue)
          ..add('defaultValueFromLastRow', defaultValueFromLastRow)
          ..add('confirmDelete', confirmDelete)
          ..add('confirmDeleteText', confirmDeleteText)
          ..add('addRowLocation', addRowLocation)
          ..add('addRowText', addRowText)
          ..add('removeRowText', removeRowText)
          ..add('hideColumnsIfEmpty', hideColumnsIfEmpty)
          ..add('emptyRowsText', emptyRowsText)
          ..add('detailPanelShowOnAdding', detailPanelShowOnAdding)
          ..add('allowRowsDragAndDrop', allowRowsDragAndDrop))
        .toString();
  }
}

class $MatrixdynamicAllOfBuilder
    implements
        Builder<$MatrixdynamicAllOf, $MatrixdynamicAllOfBuilder>,
        MatrixdynamicAllOfBuilder {
  _$$MatrixdynamicAllOf? _$v;

  String? _rowsVisibleIf;
  String? get rowsVisibleIf => _$this._rowsVisibleIf;
  set rowsVisibleIf(covariant String? rowsVisibleIf) =>
      _$this._rowsVisibleIf = rowsVisibleIf;

  bool? _allowAddRows;
  bool? get allowAddRows => _$this._allowAddRows;
  set allowAddRows(covariant bool? allowAddRows) =>
      _$this._allowAddRows = allowAddRows;

  bool? _allowRemoveRows;
  bool? get allowRemoveRows => _$this._allowRemoveRows;
  set allowRemoveRows(covariant bool? allowRemoveRows) =>
      _$this._allowRemoveRows = allowRemoveRows;

  num? _rowCount;
  num? get rowCount => _$this._rowCount;
  set rowCount(covariant num? rowCount) => _$this._rowCount = rowCount;

  num? _minRowCount;
  num? get minRowCount => _$this._minRowCount;
  set minRowCount(covariant num? minRowCount) =>
      _$this._minRowCount = minRowCount;

  num? _maxRowCount;
  num? get maxRowCount => _$this._maxRowCount;
  set maxRowCount(covariant num? maxRowCount) =>
      _$this._maxRowCount = maxRowCount;

  String? _keyName;
  String? get keyName => _$this._keyName;
  set keyName(covariant String? keyName) => _$this._keyName = keyName;

  String? _defaultRowValue;
  String? get defaultRowValue => _$this._defaultRowValue;
  set defaultRowValue(covariant String? defaultRowValue) =>
      _$this._defaultRowValue = defaultRowValue;

  bool? _defaultValueFromLastRow;
  bool? get defaultValueFromLastRow => _$this._defaultValueFromLastRow;
  set defaultValueFromLastRow(covariant bool? defaultValueFromLastRow) =>
      _$this._defaultValueFromLastRow = defaultValueFromLastRow;

  bool? _confirmDelete;
  bool? get confirmDelete => _$this._confirmDelete;
  set confirmDelete(covariant bool? confirmDelete) =>
      _$this._confirmDelete = confirmDelete;

  String? _confirmDeleteText;
  String? get confirmDeleteText => _$this._confirmDeleteText;
  set confirmDeleteText(covariant String? confirmDeleteText) =>
      _$this._confirmDeleteText = confirmDeleteText;

  MatrixdynamicAddRowLocation? _addRowLocation;
  MatrixdynamicAddRowLocation? get addRowLocation => _$this._addRowLocation;
  set addRowLocation(covariant MatrixdynamicAddRowLocation? addRowLocation) =>
      _$this._addRowLocation = addRowLocation;

  String? _addRowText;
  String? get addRowText => _$this._addRowText;
  set addRowText(covariant String? addRowText) =>
      _$this._addRowText = addRowText;

  String? _removeRowText;
  String? get removeRowText => _$this._removeRowText;
  set removeRowText(covariant String? removeRowText) =>
      _$this._removeRowText = removeRowText;

  bool? _hideColumnsIfEmpty;
  bool? get hideColumnsIfEmpty => _$this._hideColumnsIfEmpty;
  set hideColumnsIfEmpty(covariant bool? hideColumnsIfEmpty) =>
      _$this._hideColumnsIfEmpty = hideColumnsIfEmpty;

  String? _emptyRowsText;
  String? get emptyRowsText => _$this._emptyRowsText;
  set emptyRowsText(covariant String? emptyRowsText) =>
      _$this._emptyRowsText = emptyRowsText;

  bool? _detailPanelShowOnAdding;
  bool? get detailPanelShowOnAdding => _$this._detailPanelShowOnAdding;
  set detailPanelShowOnAdding(covariant bool? detailPanelShowOnAdding) =>
      _$this._detailPanelShowOnAdding = detailPanelShowOnAdding;

  String? _allowRowsDragAndDrop;
  String? get allowRowsDragAndDrop => _$this._allowRowsDragAndDrop;
  set allowRowsDragAndDrop(covariant String? allowRowsDragAndDrop) =>
      _$this._allowRowsDragAndDrop = allowRowsDragAndDrop;

  $MatrixdynamicAllOfBuilder() {
    $MatrixdynamicAllOf._defaults(this);
  }

  $MatrixdynamicAllOfBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _rowsVisibleIf = $v.rowsVisibleIf;
      _allowAddRows = $v.allowAddRows;
      _allowRemoveRows = $v.allowRemoveRows;
      _rowCount = $v.rowCount;
      _minRowCount = $v.minRowCount;
      _maxRowCount = $v.maxRowCount;
      _keyName = $v.keyName;
      _defaultRowValue = $v.defaultRowValue;
      _defaultValueFromLastRow = $v.defaultValueFromLastRow;
      _confirmDelete = $v.confirmDelete;
      _confirmDeleteText = $v.confirmDeleteText;
      _addRowLocation = $v.addRowLocation;
      _addRowText = $v.addRowText;
      _removeRowText = $v.removeRowText;
      _hideColumnsIfEmpty = $v.hideColumnsIfEmpty;
      _emptyRowsText = $v.emptyRowsText;
      _detailPanelShowOnAdding = $v.detailPanelShowOnAdding;
      _allowRowsDragAndDrop = $v.allowRowsDragAndDrop;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(covariant $MatrixdynamicAllOf other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$$MatrixdynamicAllOf;
  }

  @override
  void update(void Function($MatrixdynamicAllOfBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  $MatrixdynamicAllOf build() => _build();

  _$$MatrixdynamicAllOf _build() {
    final _$result = _$v ??
        new _$$MatrixdynamicAllOf._(
            rowsVisibleIf: rowsVisibleIf,
            allowAddRows: allowAddRows,
            allowRemoveRows: allowRemoveRows,
            rowCount: rowCount,
            minRowCount: minRowCount,
            maxRowCount: maxRowCount,
            keyName: keyName,
            defaultRowValue: defaultRowValue,
            defaultValueFromLastRow: defaultValueFromLastRow,
            confirmDelete: confirmDelete,
            confirmDeleteText: confirmDeleteText,
            addRowLocation: addRowLocation,
            addRowText: addRowText,
            removeRowText: removeRowText,
            hideColumnsIfEmpty: hideColumnsIfEmpty,
            emptyRowsText: emptyRowsText,
            detailPanelShowOnAdding: detailPanelShowOnAdding,
            allowRowsDragAndDrop: allowRowsDragAndDrop);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
