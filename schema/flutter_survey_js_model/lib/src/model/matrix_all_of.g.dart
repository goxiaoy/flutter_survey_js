// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'matrix_all_of.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

abstract class MatrixAllOfBuilder {
  void replace(MatrixAllOf other);
  void update(void Function(MatrixAllOfBuilder) updates);
  String? get rowTitleWidth;
  set rowTitleWidth(String? rowTitleWidth);

  ListBuilder<Itemvalue> get columns;
  set columns(ListBuilder<Itemvalue>? columns);

  ListBuilder<Itemvalue> get rows;
  set rows(ListBuilder<Itemvalue>? rows);

  String? get cells;
  set cells(String? cells);

  MatrixRowsOrder? get rowsOrder;
  set rowsOrder(MatrixRowsOrder? rowsOrder);

  bool? get isAllRowRequired;
  set isAllRowRequired(bool? isAllRowRequired);

  bool? get hideIfRowsEmpty;
  set hideIfRowsEmpty(bool? hideIfRowsEmpty);
}

class _$$MatrixAllOf extends $MatrixAllOf {
  @override
  final String? rowTitleWidth;
  @override
  final BuiltList<Itemvalue>? columns;
  @override
  final BuiltList<Itemvalue>? rows;
  @override
  final String? cells;
  @override
  final MatrixRowsOrder? rowsOrder;
  @override
  final bool? isAllRowRequired;
  @override
  final bool? hideIfRowsEmpty;

  factory _$$MatrixAllOf([void Function($MatrixAllOfBuilder)? updates]) =>
      (new $MatrixAllOfBuilder()..update(updates))._build();

  _$$MatrixAllOf._(
      {this.rowTitleWidth,
      this.columns,
      this.rows,
      this.cells,
      this.rowsOrder,
      this.isAllRowRequired,
      this.hideIfRowsEmpty})
      : super._();

  @override
  $MatrixAllOf rebuild(void Function($MatrixAllOfBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  $MatrixAllOfBuilder toBuilder() => new $MatrixAllOfBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is $MatrixAllOf &&
        rowTitleWidth == other.rowTitleWidth &&
        columns == other.columns &&
        rows == other.rows &&
        cells == other.cells &&
        rowsOrder == other.rowsOrder &&
        isAllRowRequired == other.isAllRowRequired &&
        hideIfRowsEmpty == other.hideIfRowsEmpty;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, rowTitleWidth.hashCode);
    _$hash = $jc(_$hash, columns.hashCode);
    _$hash = $jc(_$hash, rows.hashCode);
    _$hash = $jc(_$hash, cells.hashCode);
    _$hash = $jc(_$hash, rowsOrder.hashCode);
    _$hash = $jc(_$hash, isAllRowRequired.hashCode);
    _$hash = $jc(_$hash, hideIfRowsEmpty.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'$MatrixAllOf')
          ..add('rowTitleWidth', rowTitleWidth)
          ..add('columns', columns)
          ..add('rows', rows)
          ..add('cells', cells)
          ..add('rowsOrder', rowsOrder)
          ..add('isAllRowRequired', isAllRowRequired)
          ..add('hideIfRowsEmpty', hideIfRowsEmpty))
        .toString();
  }
}

class $MatrixAllOfBuilder
    implements Builder<$MatrixAllOf, $MatrixAllOfBuilder>, MatrixAllOfBuilder {
  _$$MatrixAllOf? _$v;

  String? _rowTitleWidth;
  String? get rowTitleWidth => _$this._rowTitleWidth;
  set rowTitleWidth(covariant String? rowTitleWidth) =>
      _$this._rowTitleWidth = rowTitleWidth;

  ListBuilder<Itemvalue>? _columns;
  ListBuilder<Itemvalue> get columns =>
      _$this._columns ??= new ListBuilder<Itemvalue>();
  set columns(covariant ListBuilder<Itemvalue>? columns) =>
      _$this._columns = columns;

  ListBuilder<Itemvalue>? _rows;
  ListBuilder<Itemvalue> get rows =>
      _$this._rows ??= new ListBuilder<Itemvalue>();
  set rows(covariant ListBuilder<Itemvalue>? rows) => _$this._rows = rows;

  String? _cells;
  String? get cells => _$this._cells;
  set cells(covariant String? cells) => _$this._cells = cells;

  MatrixRowsOrder? _rowsOrder;
  MatrixRowsOrder? get rowsOrder => _$this._rowsOrder;
  set rowsOrder(covariant MatrixRowsOrder? rowsOrder) =>
      _$this._rowsOrder = rowsOrder;

  bool? _isAllRowRequired;
  bool? get isAllRowRequired => _$this._isAllRowRequired;
  set isAllRowRequired(covariant bool? isAllRowRequired) =>
      _$this._isAllRowRequired = isAllRowRequired;

  bool? _hideIfRowsEmpty;
  bool? get hideIfRowsEmpty => _$this._hideIfRowsEmpty;
  set hideIfRowsEmpty(covariant bool? hideIfRowsEmpty) =>
      _$this._hideIfRowsEmpty = hideIfRowsEmpty;

  $MatrixAllOfBuilder() {
    $MatrixAllOf._defaults(this);
  }

  $MatrixAllOfBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _rowTitleWidth = $v.rowTitleWidth;
      _columns = $v.columns?.toBuilder();
      _rows = $v.rows?.toBuilder();
      _cells = $v.cells;
      _rowsOrder = $v.rowsOrder;
      _isAllRowRequired = $v.isAllRowRequired;
      _hideIfRowsEmpty = $v.hideIfRowsEmpty;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(covariant $MatrixAllOf other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$$MatrixAllOf;
  }

  @override
  void update(void Function($MatrixAllOfBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  $MatrixAllOf build() => _build();

  _$$MatrixAllOf _build() {
    _$$MatrixAllOf _$result;
    try {
      _$result = _$v ??
          new _$$MatrixAllOf._(
              rowTitleWidth: rowTitleWidth,
              columns: _columns?.build(),
              rows: _rows?.build(),
              cells: cells,
              rowsOrder: rowsOrder,
              isAllRowRequired: isAllRowRequired,
              hideIfRowsEmpty: hideIfRowsEmpty);
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'columns';
        _columns?.build();
        _$failedField = 'rows';
        _rows?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'$MatrixAllOf', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
