// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'rating_all_of.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

abstract class RatingAllOfBuilder {
  void replace(RatingAllOf other);
  void update(void Function(RatingAllOfBuilder) updates);
  String? get showCommentArea;
  set showCommentArea(String? showCommentArea);

  RatingRateDisplayMode? get rateDisplayMode;
  set rateDisplayMode(RatingRateDisplayMode? rateDisplayMode);

  RatingAutoGenerate? get autoGenerate;
  set autoGenerate(RatingAutoGenerate? autoGenerate);

  num? get rateCount;
  set rateCount(num? rateCount);

  ListBuilder<MatrixdropdownAllOfRowsInner> get rateValues;
  set rateValues(ListBuilder<MatrixdropdownAllOfRowsInner>? rateValues);

  num? get rateMin;
  set rateMin(num? rateMin);

  num? get rateMax;
  set rateMax(num? rateMax);

  num? get rateStep;
  set rateStep(num? rateStep);

  String? get minRateDescription;
  set minRateDescription(String? minRateDescription);

  String? get maxRateDescription;
  set maxRateDescription(String? maxRateDescription);

  bool? get displayRateDescriptionsAsExtremeItems;
  set displayRateDescriptionsAsExtremeItems(
      bool? displayRateDescriptionsAsExtremeItems);

  RatingDisplayMode? get displayMode;
  set displayMode(RatingDisplayMode? displayMode);
}

class _$$RatingAllOf extends $RatingAllOf {
  @override
  final String? showCommentArea;
  @override
  final RatingRateDisplayMode? rateDisplayMode;
  @override
  final RatingAutoGenerate? autoGenerate;
  @override
  final num? rateCount;
  @override
  final BuiltList<MatrixdropdownAllOfRowsInner>? rateValues;
  @override
  final num? rateMin;
  @override
  final num? rateMax;
  @override
  final num? rateStep;
  @override
  final String? minRateDescription;
  @override
  final String? maxRateDescription;
  @override
  final bool? displayRateDescriptionsAsExtremeItems;
  @override
  final RatingDisplayMode? displayMode;

  factory _$$RatingAllOf([void Function($RatingAllOfBuilder)? updates]) =>
      (new $RatingAllOfBuilder()..update(updates))._build();

  _$$RatingAllOf._(
      {this.showCommentArea,
      this.rateDisplayMode,
      this.autoGenerate,
      this.rateCount,
      this.rateValues,
      this.rateMin,
      this.rateMax,
      this.rateStep,
      this.minRateDescription,
      this.maxRateDescription,
      this.displayRateDescriptionsAsExtremeItems,
      this.displayMode})
      : super._();

  @override
  $RatingAllOf rebuild(void Function($RatingAllOfBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  $RatingAllOfBuilder toBuilder() => new $RatingAllOfBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is $RatingAllOf &&
        showCommentArea == other.showCommentArea &&
        rateDisplayMode == other.rateDisplayMode &&
        autoGenerate == other.autoGenerate &&
        rateCount == other.rateCount &&
        rateValues == other.rateValues &&
        rateMin == other.rateMin &&
        rateMax == other.rateMax &&
        rateStep == other.rateStep &&
        minRateDescription == other.minRateDescription &&
        maxRateDescription == other.maxRateDescription &&
        displayRateDescriptionsAsExtremeItems ==
            other.displayRateDescriptionsAsExtremeItems &&
        displayMode == other.displayMode;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, showCommentArea.hashCode);
    _$hash = $jc(_$hash, rateDisplayMode.hashCode);
    _$hash = $jc(_$hash, autoGenerate.hashCode);
    _$hash = $jc(_$hash, rateCount.hashCode);
    _$hash = $jc(_$hash, rateValues.hashCode);
    _$hash = $jc(_$hash, rateMin.hashCode);
    _$hash = $jc(_$hash, rateMax.hashCode);
    _$hash = $jc(_$hash, rateStep.hashCode);
    _$hash = $jc(_$hash, minRateDescription.hashCode);
    _$hash = $jc(_$hash, maxRateDescription.hashCode);
    _$hash = $jc(_$hash, displayRateDescriptionsAsExtremeItems.hashCode);
    _$hash = $jc(_$hash, displayMode.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'$RatingAllOf')
          ..add('showCommentArea', showCommentArea)
          ..add('rateDisplayMode', rateDisplayMode)
          ..add('autoGenerate', autoGenerate)
          ..add('rateCount', rateCount)
          ..add('rateValues', rateValues)
          ..add('rateMin', rateMin)
          ..add('rateMax', rateMax)
          ..add('rateStep', rateStep)
          ..add('minRateDescription', minRateDescription)
          ..add('maxRateDescription', maxRateDescription)
          ..add('displayRateDescriptionsAsExtremeItems',
              displayRateDescriptionsAsExtremeItems)
          ..add('displayMode', displayMode))
        .toString();
  }
}

class $RatingAllOfBuilder
    implements Builder<$RatingAllOf, $RatingAllOfBuilder>, RatingAllOfBuilder {
  _$$RatingAllOf? _$v;

  String? _showCommentArea;
  String? get showCommentArea => _$this._showCommentArea;
  set showCommentArea(covariant String? showCommentArea) =>
      _$this._showCommentArea = showCommentArea;

  RatingRateDisplayMode? _rateDisplayMode;
  RatingRateDisplayMode? get rateDisplayMode => _$this._rateDisplayMode;
  set rateDisplayMode(covariant RatingRateDisplayMode? rateDisplayMode) =>
      _$this._rateDisplayMode = rateDisplayMode;

  RatingAutoGenerate? _autoGenerate;
  RatingAutoGenerate? get autoGenerate => _$this._autoGenerate;
  set autoGenerate(covariant RatingAutoGenerate? autoGenerate) =>
      _$this._autoGenerate = autoGenerate;

  num? _rateCount;
  num? get rateCount => _$this._rateCount;
  set rateCount(covariant num? rateCount) => _$this._rateCount = rateCount;

  ListBuilder<MatrixdropdownAllOfRowsInner>? _rateValues;
  ListBuilder<MatrixdropdownAllOfRowsInner> get rateValues =>
      _$this._rateValues ??= new ListBuilder<MatrixdropdownAllOfRowsInner>();
  set rateValues(
          covariant ListBuilder<MatrixdropdownAllOfRowsInner>? rateValues) =>
      _$this._rateValues = rateValues;

  num? _rateMin;
  num? get rateMin => _$this._rateMin;
  set rateMin(covariant num? rateMin) => _$this._rateMin = rateMin;

  num? _rateMax;
  num? get rateMax => _$this._rateMax;
  set rateMax(covariant num? rateMax) => _$this._rateMax = rateMax;

  num? _rateStep;
  num? get rateStep => _$this._rateStep;
  set rateStep(covariant num? rateStep) => _$this._rateStep = rateStep;

  String? _minRateDescription;
  String? get minRateDescription => _$this._minRateDescription;
  set minRateDescription(covariant String? minRateDescription) =>
      _$this._minRateDescription = minRateDescription;

  String? _maxRateDescription;
  String? get maxRateDescription => _$this._maxRateDescription;
  set maxRateDescription(covariant String? maxRateDescription) =>
      _$this._maxRateDescription = maxRateDescription;

  bool? _displayRateDescriptionsAsExtremeItems;
  bool? get displayRateDescriptionsAsExtremeItems =>
      _$this._displayRateDescriptionsAsExtremeItems;
  set displayRateDescriptionsAsExtremeItems(
          covariant bool? displayRateDescriptionsAsExtremeItems) =>
      _$this._displayRateDescriptionsAsExtremeItems =
          displayRateDescriptionsAsExtremeItems;

  RatingDisplayMode? _displayMode;
  RatingDisplayMode? get displayMode => _$this._displayMode;
  set displayMode(covariant RatingDisplayMode? displayMode) =>
      _$this._displayMode = displayMode;

  $RatingAllOfBuilder() {
    $RatingAllOf._defaults(this);
  }

  $RatingAllOfBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _showCommentArea = $v.showCommentArea;
      _rateDisplayMode = $v.rateDisplayMode;
      _autoGenerate = $v.autoGenerate;
      _rateCount = $v.rateCount;
      _rateValues = $v.rateValues?.toBuilder();
      _rateMin = $v.rateMin;
      _rateMax = $v.rateMax;
      _rateStep = $v.rateStep;
      _minRateDescription = $v.minRateDescription;
      _maxRateDescription = $v.maxRateDescription;
      _displayRateDescriptionsAsExtremeItems =
          $v.displayRateDescriptionsAsExtremeItems;
      _displayMode = $v.displayMode;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(covariant $RatingAllOf other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$$RatingAllOf;
  }

  @override
  void update(void Function($RatingAllOfBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  $RatingAllOf build() => _build();

  _$$RatingAllOf _build() {
    _$$RatingAllOf _$result;
    try {
      _$result = _$v ??
          new _$$RatingAllOf._(
              showCommentArea: showCommentArea,
              rateDisplayMode: rateDisplayMode,
              autoGenerate: autoGenerate,
              rateCount: rateCount,
              rateValues: _rateValues?.build(),
              rateMin: rateMin,
              rateMax: rateMax,
              rateStep: rateStep,
              minRateDescription: minRateDescription,
              maxRateDescription: maxRateDescription,
              displayRateDescriptionsAsExtremeItems:
                  displayRateDescriptionsAsExtremeItems,
              displayMode: displayMode);
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'rateValues';
        _rateValues?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'$RatingAllOf', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
