// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'matrixdropdown_all_of.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

abstract class MatrixdropdownAllOfBuilder {
  void replace(MatrixdropdownAllOf other);
  void update(void Function(MatrixdropdownAllOfBuilder) updates);
  ListBuilder<MatrixdropdownAllOfRowsInner> get rows;
  set rows(ListBuilder<MatrixdropdownAllOfRowsInner>? rows);

  String? get rowsVisibleIf;
  set rowsVisibleIf(String? rowsVisibleIf);

  SurveyLogoWidthBuilder get rowTitleWidth;
  set rowTitleWidth(SurveyLogoWidthBuilder? rowTitleWidth);

  String? get totalText;
  set totalText(String? totalText);

  bool? get hideIfRowsEmpty;
  set hideIfRowsEmpty(bool? hideIfRowsEmpty);
}

class _$$MatrixdropdownAllOf extends $MatrixdropdownAllOf {
  @override
  final BuiltList<MatrixdropdownAllOfRowsInner>? rows;
  @override
  final String? rowsVisibleIf;
  @override
  final SurveyLogoWidth? rowTitleWidth;
  @override
  final String? totalText;
  @override
  final bool? hideIfRowsEmpty;

  factory _$$MatrixdropdownAllOf(
          [void Function($MatrixdropdownAllOfBuilder)? updates]) =>
      (new $MatrixdropdownAllOfBuilder()..update(updates))._build();

  _$$MatrixdropdownAllOf._(
      {this.rows,
      this.rowsVisibleIf,
      this.rowTitleWidth,
      this.totalText,
      this.hideIfRowsEmpty})
      : super._();

  @override
  $MatrixdropdownAllOf rebuild(
          void Function($MatrixdropdownAllOfBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  $MatrixdropdownAllOfBuilder toBuilder() =>
      new $MatrixdropdownAllOfBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is $MatrixdropdownAllOf &&
        rows == other.rows &&
        rowsVisibleIf == other.rowsVisibleIf &&
        rowTitleWidth == other.rowTitleWidth &&
        totalText == other.totalText &&
        hideIfRowsEmpty == other.hideIfRowsEmpty;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, rows.hashCode);
    _$hash = $jc(_$hash, rowsVisibleIf.hashCode);
    _$hash = $jc(_$hash, rowTitleWidth.hashCode);
    _$hash = $jc(_$hash, totalText.hashCode);
    _$hash = $jc(_$hash, hideIfRowsEmpty.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'$MatrixdropdownAllOf')
          ..add('rows', rows)
          ..add('rowsVisibleIf', rowsVisibleIf)
          ..add('rowTitleWidth', rowTitleWidth)
          ..add('totalText', totalText)
          ..add('hideIfRowsEmpty', hideIfRowsEmpty))
        .toString();
  }
}

class $MatrixdropdownAllOfBuilder
    implements
        Builder<$MatrixdropdownAllOf, $MatrixdropdownAllOfBuilder>,
        MatrixdropdownAllOfBuilder {
  _$$MatrixdropdownAllOf? _$v;

  ListBuilder<MatrixdropdownAllOfRowsInner>? _rows;
  ListBuilder<MatrixdropdownAllOfRowsInner> get rows =>
      _$this._rows ??= new ListBuilder<MatrixdropdownAllOfRowsInner>();
  set rows(covariant ListBuilder<MatrixdropdownAllOfRowsInner>? rows) =>
      _$this._rows = rows;

  String? _rowsVisibleIf;
  String? get rowsVisibleIf => _$this._rowsVisibleIf;
  set rowsVisibleIf(covariant String? rowsVisibleIf) =>
      _$this._rowsVisibleIf = rowsVisibleIf;

  SurveyLogoWidthBuilder? _rowTitleWidth;
  SurveyLogoWidthBuilder get rowTitleWidth =>
      _$this._rowTitleWidth ??= new SurveyLogoWidthBuilder();
  set rowTitleWidth(covariant SurveyLogoWidthBuilder? rowTitleWidth) =>
      _$this._rowTitleWidth = rowTitleWidth;

  String? _totalText;
  String? get totalText => _$this._totalText;
  set totalText(covariant String? totalText) => _$this._totalText = totalText;

  bool? _hideIfRowsEmpty;
  bool? get hideIfRowsEmpty => _$this._hideIfRowsEmpty;
  set hideIfRowsEmpty(covariant bool? hideIfRowsEmpty) =>
      _$this._hideIfRowsEmpty = hideIfRowsEmpty;

  $MatrixdropdownAllOfBuilder() {
    $MatrixdropdownAllOf._defaults(this);
  }

  $MatrixdropdownAllOfBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _rows = $v.rows?.toBuilder();
      _rowsVisibleIf = $v.rowsVisibleIf;
      _rowTitleWidth = $v.rowTitleWidth?.toBuilder();
      _totalText = $v.totalText;
      _hideIfRowsEmpty = $v.hideIfRowsEmpty;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(covariant $MatrixdropdownAllOf other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$$MatrixdropdownAllOf;
  }

  @override
  void update(void Function($MatrixdropdownAllOfBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  $MatrixdropdownAllOf build() => _build();

  _$$MatrixdropdownAllOf _build() {
    _$$MatrixdropdownAllOf _$result;
    try {
      _$result = _$v ??
          new _$$MatrixdropdownAllOf._(
              rows: _rows?.build(),
              rowsVisibleIf: rowsVisibleIf,
              rowTitleWidth: _rowTitleWidth?.build(),
              totalText: totalText,
              hideIfRowsEmpty: hideIfRowsEmpty);
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'rows';
        _rows?.build();

        _$failedField = 'rowTitleWidth';
        _rowTitleWidth?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'$MatrixdropdownAllOf', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
