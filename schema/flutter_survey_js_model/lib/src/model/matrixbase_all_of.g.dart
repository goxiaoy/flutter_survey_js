// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'matrixbase_all_of.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

abstract class MatrixbaseAllOfBuilder {
  void replace(MatrixbaseAllOf other);
  void update(void Function(MatrixbaseAllOfBuilder) updates);
  String? get showCommentArea;
  set showCommentArea(String? showCommentArea);

  String? get columnsVisibleIf;
  set columnsVisibleIf(String? columnsVisibleIf);

  String? get rowsVisibleIf;
  set rowsVisibleIf(String? rowsVisibleIf);

  String? get columnMinWidth;
  set columnMinWidth(String? columnMinWidth);

  bool? get showHeader;
  set showHeader(bool? showHeader);

  MatrixbaseVerticalAlign? get verticalAlign;
  set verticalAlign(MatrixbaseVerticalAlign? verticalAlign);

  bool? get alternateRows;
  set alternateRows(bool? alternateRows);
}

class _$$MatrixbaseAllOf extends $MatrixbaseAllOf {
  @override
  final String? showCommentArea;
  @override
  final String? columnsVisibleIf;
  @override
  final String? rowsVisibleIf;
  @override
  final String? columnMinWidth;
  @override
  final bool? showHeader;
  @override
  final MatrixbaseVerticalAlign? verticalAlign;
  @override
  final bool? alternateRows;

  factory _$$MatrixbaseAllOf(
          [void Function($MatrixbaseAllOfBuilder)? updates]) =>
      (new $MatrixbaseAllOfBuilder()..update(updates))._build();

  _$$MatrixbaseAllOf._(
      {this.showCommentArea,
      this.columnsVisibleIf,
      this.rowsVisibleIf,
      this.columnMinWidth,
      this.showHeader,
      this.verticalAlign,
      this.alternateRows})
      : super._();

  @override
  $MatrixbaseAllOf rebuild(void Function($MatrixbaseAllOfBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  $MatrixbaseAllOfBuilder toBuilder() =>
      new $MatrixbaseAllOfBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is $MatrixbaseAllOf &&
        showCommentArea == other.showCommentArea &&
        columnsVisibleIf == other.columnsVisibleIf &&
        rowsVisibleIf == other.rowsVisibleIf &&
        columnMinWidth == other.columnMinWidth &&
        showHeader == other.showHeader &&
        verticalAlign == other.verticalAlign &&
        alternateRows == other.alternateRows;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, showCommentArea.hashCode);
    _$hash = $jc(_$hash, columnsVisibleIf.hashCode);
    _$hash = $jc(_$hash, rowsVisibleIf.hashCode);
    _$hash = $jc(_$hash, columnMinWidth.hashCode);
    _$hash = $jc(_$hash, showHeader.hashCode);
    _$hash = $jc(_$hash, verticalAlign.hashCode);
    _$hash = $jc(_$hash, alternateRows.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'$MatrixbaseAllOf')
          ..add('showCommentArea', showCommentArea)
          ..add('columnsVisibleIf', columnsVisibleIf)
          ..add('rowsVisibleIf', rowsVisibleIf)
          ..add('columnMinWidth', columnMinWidth)
          ..add('showHeader', showHeader)
          ..add('verticalAlign', verticalAlign)
          ..add('alternateRows', alternateRows))
        .toString();
  }
}

class $MatrixbaseAllOfBuilder
    implements
        Builder<$MatrixbaseAllOf, $MatrixbaseAllOfBuilder>,
        MatrixbaseAllOfBuilder {
  _$$MatrixbaseAllOf? _$v;

  String? _showCommentArea;
  String? get showCommentArea => _$this._showCommentArea;
  set showCommentArea(covariant String? showCommentArea) =>
      _$this._showCommentArea = showCommentArea;

  String? _columnsVisibleIf;
  String? get columnsVisibleIf => _$this._columnsVisibleIf;
  set columnsVisibleIf(covariant String? columnsVisibleIf) =>
      _$this._columnsVisibleIf = columnsVisibleIf;

  String? _rowsVisibleIf;
  String? get rowsVisibleIf => _$this._rowsVisibleIf;
  set rowsVisibleIf(covariant String? rowsVisibleIf) =>
      _$this._rowsVisibleIf = rowsVisibleIf;

  String? _columnMinWidth;
  String? get columnMinWidth => _$this._columnMinWidth;
  set columnMinWidth(covariant String? columnMinWidth) =>
      _$this._columnMinWidth = columnMinWidth;

  bool? _showHeader;
  bool? get showHeader => _$this._showHeader;
  set showHeader(covariant bool? showHeader) => _$this._showHeader = showHeader;

  MatrixbaseVerticalAlign? _verticalAlign;
  MatrixbaseVerticalAlign? get verticalAlign => _$this._verticalAlign;
  set verticalAlign(covariant MatrixbaseVerticalAlign? verticalAlign) =>
      _$this._verticalAlign = verticalAlign;

  bool? _alternateRows;
  bool? get alternateRows => _$this._alternateRows;
  set alternateRows(covariant bool? alternateRows) =>
      _$this._alternateRows = alternateRows;

  $MatrixbaseAllOfBuilder() {
    $MatrixbaseAllOf._defaults(this);
  }

  $MatrixbaseAllOfBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _showCommentArea = $v.showCommentArea;
      _columnsVisibleIf = $v.columnsVisibleIf;
      _rowsVisibleIf = $v.rowsVisibleIf;
      _columnMinWidth = $v.columnMinWidth;
      _showHeader = $v.showHeader;
      _verticalAlign = $v.verticalAlign;
      _alternateRows = $v.alternateRows;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(covariant $MatrixbaseAllOf other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$$MatrixbaseAllOf;
  }

  @override
  void update(void Function($MatrixbaseAllOfBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  $MatrixbaseAllOf build() => _build();

  _$$MatrixbaseAllOf _build() {
    final _$result = _$v ??
        new _$$MatrixbaseAllOf._(
            showCommentArea: showCommentArea,
            columnsVisibleIf: columnsVisibleIf,
            rowsVisibleIf: rowsVisibleIf,
            columnMinWidth: columnMinWidth,
            showHeader: showHeader,
            verticalAlign: verticalAlign,
            alternateRows: alternateRows);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
