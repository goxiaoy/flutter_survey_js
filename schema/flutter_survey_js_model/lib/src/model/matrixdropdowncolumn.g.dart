// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'matrixdropdowncolumn.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$Matrixdropdowncolumn extends Matrixdropdowncolumn {
  @override
  final String? name;
  @override
  final String? title;
  @override
  final String? cellHint;
  @override
  final MatrixdropdowncolumnCellType? cellType;
  @override
  final bool? isRequired;
  @override
  final bool? isUnique;
  @override
  final String? requiredErrorText;
  @override
  final bool? readOnly;
  @override
  final String? minWidth;
  @override
  final String? width;
  @override
  final String? visibleIf;
  @override
  final String? enableIf;
  @override
  final String? requiredIf;
  @override
  final bool? showInMultipleColumns;
  @override
  final Surveyvalidator? validators;
  @override
  final MatrixdropdowncolumnTotalType? totalType;
  @override
  final String? totalExpression;
  @override
  final String? totalFormat;
  @override
  final MatrixdropdowncolumnTotalDisplayStyle? totalDisplayStyle;
  @override
  final MatrixdropdowncolumnTotalCurrency? totalCurrency;
  @override
  final num? totalMaximumFractionDigits;
  @override
  final num? totalMinimumFractionDigits;
  @override
  final String? renderAs;

  factory _$Matrixdropdowncolumn(
          [void Function(MatrixdropdowncolumnBuilder)? updates]) =>
      (new MatrixdropdowncolumnBuilder()..update(updates))._build();

  _$Matrixdropdowncolumn._(
      {this.name,
      this.title,
      this.cellHint,
      this.cellType,
      this.isRequired,
      this.isUnique,
      this.requiredErrorText,
      this.readOnly,
      this.minWidth,
      this.width,
      this.visibleIf,
      this.enableIf,
      this.requiredIf,
      this.showInMultipleColumns,
      this.validators,
      this.totalType,
      this.totalExpression,
      this.totalFormat,
      this.totalDisplayStyle,
      this.totalCurrency,
      this.totalMaximumFractionDigits,
      this.totalMinimumFractionDigits,
      this.renderAs})
      : super._();

  @override
  Matrixdropdowncolumn rebuild(
          void Function(MatrixdropdowncolumnBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  MatrixdropdowncolumnBuilder toBuilder() =>
      new MatrixdropdowncolumnBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Matrixdropdowncolumn &&
        name == other.name &&
        title == other.title &&
        cellHint == other.cellHint &&
        cellType == other.cellType &&
        isRequired == other.isRequired &&
        isUnique == other.isUnique &&
        requiredErrorText == other.requiredErrorText &&
        readOnly == other.readOnly &&
        minWidth == other.minWidth &&
        width == other.width &&
        visibleIf == other.visibleIf &&
        enableIf == other.enableIf &&
        requiredIf == other.requiredIf &&
        showInMultipleColumns == other.showInMultipleColumns &&
        validators == other.validators &&
        totalType == other.totalType &&
        totalExpression == other.totalExpression &&
        totalFormat == other.totalFormat &&
        totalDisplayStyle == other.totalDisplayStyle &&
        totalCurrency == other.totalCurrency &&
        totalMaximumFractionDigits == other.totalMaximumFractionDigits &&
        totalMinimumFractionDigits == other.totalMinimumFractionDigits &&
        renderAs == other.renderAs;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, name.hashCode);
    _$hash = $jc(_$hash, title.hashCode);
    _$hash = $jc(_$hash, cellHint.hashCode);
    _$hash = $jc(_$hash, cellType.hashCode);
    _$hash = $jc(_$hash, isRequired.hashCode);
    _$hash = $jc(_$hash, isUnique.hashCode);
    _$hash = $jc(_$hash, requiredErrorText.hashCode);
    _$hash = $jc(_$hash, readOnly.hashCode);
    _$hash = $jc(_$hash, minWidth.hashCode);
    _$hash = $jc(_$hash, width.hashCode);
    _$hash = $jc(_$hash, visibleIf.hashCode);
    _$hash = $jc(_$hash, enableIf.hashCode);
    _$hash = $jc(_$hash, requiredIf.hashCode);
    _$hash = $jc(_$hash, showInMultipleColumns.hashCode);
    _$hash = $jc(_$hash, validators.hashCode);
    _$hash = $jc(_$hash, totalType.hashCode);
    _$hash = $jc(_$hash, totalExpression.hashCode);
    _$hash = $jc(_$hash, totalFormat.hashCode);
    _$hash = $jc(_$hash, totalDisplayStyle.hashCode);
    _$hash = $jc(_$hash, totalCurrency.hashCode);
    _$hash = $jc(_$hash, totalMaximumFractionDigits.hashCode);
    _$hash = $jc(_$hash, totalMinimumFractionDigits.hashCode);
    _$hash = $jc(_$hash, renderAs.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'Matrixdropdowncolumn')
          ..add('name', name)
          ..add('title', title)
          ..add('cellHint', cellHint)
          ..add('cellType', cellType)
          ..add('isRequired', isRequired)
          ..add('isUnique', isUnique)
          ..add('requiredErrorText', requiredErrorText)
          ..add('readOnly', readOnly)
          ..add('minWidth', minWidth)
          ..add('width', width)
          ..add('visibleIf', visibleIf)
          ..add('enableIf', enableIf)
          ..add('requiredIf', requiredIf)
          ..add('showInMultipleColumns', showInMultipleColumns)
          ..add('validators', validators)
          ..add('totalType', totalType)
          ..add('totalExpression', totalExpression)
          ..add('totalFormat', totalFormat)
          ..add('totalDisplayStyle', totalDisplayStyle)
          ..add('totalCurrency', totalCurrency)
          ..add('totalMaximumFractionDigits', totalMaximumFractionDigits)
          ..add('totalMinimumFractionDigits', totalMinimumFractionDigits)
          ..add('renderAs', renderAs))
        .toString();
  }
}

class MatrixdropdowncolumnBuilder
    implements Builder<Matrixdropdowncolumn, MatrixdropdowncolumnBuilder> {
  _$Matrixdropdowncolumn? _$v;

  String? _name;
  String? get name => _$this._name;
  set name(String? name) => _$this._name = name;

  String? _title;
  String? get title => _$this._title;
  set title(String? title) => _$this._title = title;

  String? _cellHint;
  String? get cellHint => _$this._cellHint;
  set cellHint(String? cellHint) => _$this._cellHint = cellHint;

  MatrixdropdowncolumnCellType? _cellType;
  MatrixdropdowncolumnCellType? get cellType => _$this._cellType;
  set cellType(MatrixdropdowncolumnCellType? cellType) =>
      _$this._cellType = cellType;

  bool? _isRequired;
  bool? get isRequired => _$this._isRequired;
  set isRequired(bool? isRequired) => _$this._isRequired = isRequired;

  bool? _isUnique;
  bool? get isUnique => _$this._isUnique;
  set isUnique(bool? isUnique) => _$this._isUnique = isUnique;

  String? _requiredErrorText;
  String? get requiredErrorText => _$this._requiredErrorText;
  set requiredErrorText(String? requiredErrorText) =>
      _$this._requiredErrorText = requiredErrorText;

  bool? _readOnly;
  bool? get readOnly => _$this._readOnly;
  set readOnly(bool? readOnly) => _$this._readOnly = readOnly;

  String? _minWidth;
  String? get minWidth => _$this._minWidth;
  set minWidth(String? minWidth) => _$this._minWidth = minWidth;

  String? _width;
  String? get width => _$this._width;
  set width(String? width) => _$this._width = width;

  String? _visibleIf;
  String? get visibleIf => _$this._visibleIf;
  set visibleIf(String? visibleIf) => _$this._visibleIf = visibleIf;

  String? _enableIf;
  String? get enableIf => _$this._enableIf;
  set enableIf(String? enableIf) => _$this._enableIf = enableIf;

  String? _requiredIf;
  String? get requiredIf => _$this._requiredIf;
  set requiredIf(String? requiredIf) => _$this._requiredIf = requiredIf;

  bool? _showInMultipleColumns;
  bool? get showInMultipleColumns => _$this._showInMultipleColumns;
  set showInMultipleColumns(bool? showInMultipleColumns) =>
      _$this._showInMultipleColumns = showInMultipleColumns;

  Surveyvalidator? _validators;
  Surveyvalidator? get validators => _$this._validators;
  set validators(Surveyvalidator? validators) =>
      _$this._validators = validators;

  MatrixdropdowncolumnTotalType? _totalType;
  MatrixdropdowncolumnTotalType? get totalType => _$this._totalType;
  set totalType(MatrixdropdowncolumnTotalType? totalType) =>
      _$this._totalType = totalType;

  String? _totalExpression;
  String? get totalExpression => _$this._totalExpression;
  set totalExpression(String? totalExpression) =>
      _$this._totalExpression = totalExpression;

  String? _totalFormat;
  String? get totalFormat => _$this._totalFormat;
  set totalFormat(String? totalFormat) => _$this._totalFormat = totalFormat;

  MatrixdropdowncolumnTotalDisplayStyle? _totalDisplayStyle;
  MatrixdropdowncolumnTotalDisplayStyle? get totalDisplayStyle =>
      _$this._totalDisplayStyle;
  set totalDisplayStyle(
          MatrixdropdowncolumnTotalDisplayStyle? totalDisplayStyle) =>
      _$this._totalDisplayStyle = totalDisplayStyle;

  MatrixdropdowncolumnTotalCurrency? _totalCurrency;
  MatrixdropdowncolumnTotalCurrency? get totalCurrency => _$this._totalCurrency;
  set totalCurrency(MatrixdropdowncolumnTotalCurrency? totalCurrency) =>
      _$this._totalCurrency = totalCurrency;

  num? _totalMaximumFractionDigits;
  num? get totalMaximumFractionDigits => _$this._totalMaximumFractionDigits;
  set totalMaximumFractionDigits(num? totalMaximumFractionDigits) =>
      _$this._totalMaximumFractionDigits = totalMaximumFractionDigits;

  num? _totalMinimumFractionDigits;
  num? get totalMinimumFractionDigits => _$this._totalMinimumFractionDigits;
  set totalMinimumFractionDigits(num? totalMinimumFractionDigits) =>
      _$this._totalMinimumFractionDigits = totalMinimumFractionDigits;

  String? _renderAs;
  String? get renderAs => _$this._renderAs;
  set renderAs(String? renderAs) => _$this._renderAs = renderAs;

  MatrixdropdowncolumnBuilder() {
    Matrixdropdowncolumn._defaults(this);
  }

  MatrixdropdowncolumnBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _name = $v.name;
      _title = $v.title;
      _cellHint = $v.cellHint;
      _cellType = $v.cellType;
      _isRequired = $v.isRequired;
      _isUnique = $v.isUnique;
      _requiredErrorText = $v.requiredErrorText;
      _readOnly = $v.readOnly;
      _minWidth = $v.minWidth;
      _width = $v.width;
      _visibleIf = $v.visibleIf;
      _enableIf = $v.enableIf;
      _requiredIf = $v.requiredIf;
      _showInMultipleColumns = $v.showInMultipleColumns;
      _validators = $v.validators;
      _totalType = $v.totalType;
      _totalExpression = $v.totalExpression;
      _totalFormat = $v.totalFormat;
      _totalDisplayStyle = $v.totalDisplayStyle;
      _totalCurrency = $v.totalCurrency;
      _totalMaximumFractionDigits = $v.totalMaximumFractionDigits;
      _totalMinimumFractionDigits = $v.totalMinimumFractionDigits;
      _renderAs = $v.renderAs;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Matrixdropdowncolumn other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$Matrixdropdowncolumn;
  }

  @override
  void update(void Function(MatrixdropdowncolumnBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  Matrixdropdowncolumn build() => _build();

  _$Matrixdropdowncolumn _build() {
    final _$result = _$v ??
        new _$Matrixdropdowncolumn._(
            name: name,
            title: title,
            cellHint: cellHint,
            cellType: cellType,
            isRequired: isRequired,
            isUnique: isUnique,
            requiredErrorText: requiredErrorText,
            readOnly: readOnly,
            minWidth: minWidth,
            width: width,
            visibleIf: visibleIf,
            enableIf: enableIf,
            requiredIf: requiredIf,
            showInMultipleColumns: showInMultipleColumns,
            validators: validators,
            totalType: totalType,
            totalExpression: totalExpression,
            totalFormat: totalFormat,
            totalDisplayStyle: totalDisplayStyle,
            totalCurrency: totalCurrency,
            totalMaximumFractionDigits: totalMaximumFractionDigits,
            totalMinimumFractionDigits: totalMinimumFractionDigits,
            renderAs: renderAs);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
