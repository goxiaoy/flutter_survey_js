// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'ranking_all_of.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

abstract class RankingAllOfBuilder {
  void replace(RankingAllOf other);
  void update(void Function(RankingAllOfBuilder) updates);
  bool? get showOtherItem;
  set showOtherItem(bool? showOtherItem);

  String? get otherText;
  set otherText(String? otherText);

  String? get otherErrorText;
  set otherErrorText(String? otherErrorText);

  bool? get storeOthersAsComment;
  set storeOthersAsComment(bool? storeOthersAsComment);

  bool? get showNoneItem;
  set showNoneItem(bool? showNoneItem);

  String? get noneText;
  set noneText(String? noneText);

  bool? get showSelectAllItem;
  set showSelectAllItem(bool? showSelectAllItem);

  String? get selectAllText;
  set selectAllText(String? selectAllText);

  CheckboxbaseColCount? get colCount;
  set colCount(CheckboxbaseColCount? colCount);

  num? get maxSelectedChoices;
  set maxSelectedChoices(num? maxSelectedChoices);

  bool? get separateSpecialChoices;
  set separateSpecialChoices(bool? separateSpecialChoices);

  String? get longTap;
  set longTap(String? longTap);

  String? get itemComponent;
  set itemComponent(String? itemComponent);
}

class _$$RankingAllOf extends $RankingAllOf {
  @override
  final bool? showOtherItem;
  @override
  final String? otherText;
  @override
  final String? otherErrorText;
  @override
  final bool? storeOthersAsComment;
  @override
  final bool? showNoneItem;
  @override
  final String? noneText;
  @override
  final bool? showSelectAllItem;
  @override
  final String? selectAllText;
  @override
  final CheckboxbaseColCount? colCount;
  @override
  final num? maxSelectedChoices;
  @override
  final bool? separateSpecialChoices;
  @override
  final String? longTap;
  @override
  final String? itemComponent;

  factory _$$RankingAllOf([void Function($RankingAllOfBuilder)? updates]) =>
      (new $RankingAllOfBuilder()..update(updates))._build();

  _$$RankingAllOf._(
      {this.showOtherItem,
      this.otherText,
      this.otherErrorText,
      this.storeOthersAsComment,
      this.showNoneItem,
      this.noneText,
      this.showSelectAllItem,
      this.selectAllText,
      this.colCount,
      this.maxSelectedChoices,
      this.separateSpecialChoices,
      this.longTap,
      this.itemComponent})
      : super._();

  @override
  $RankingAllOf rebuild(void Function($RankingAllOfBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  $RankingAllOfBuilder toBuilder() => new $RankingAllOfBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is $RankingAllOf &&
        showOtherItem == other.showOtherItem &&
        otherText == other.otherText &&
        otherErrorText == other.otherErrorText &&
        storeOthersAsComment == other.storeOthersAsComment &&
        showNoneItem == other.showNoneItem &&
        noneText == other.noneText &&
        showSelectAllItem == other.showSelectAllItem &&
        selectAllText == other.selectAllText &&
        colCount == other.colCount &&
        maxSelectedChoices == other.maxSelectedChoices &&
        separateSpecialChoices == other.separateSpecialChoices &&
        longTap == other.longTap &&
        itemComponent == other.itemComponent;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, showOtherItem.hashCode);
    _$hash = $jc(_$hash, otherText.hashCode);
    _$hash = $jc(_$hash, otherErrorText.hashCode);
    _$hash = $jc(_$hash, storeOthersAsComment.hashCode);
    _$hash = $jc(_$hash, showNoneItem.hashCode);
    _$hash = $jc(_$hash, noneText.hashCode);
    _$hash = $jc(_$hash, showSelectAllItem.hashCode);
    _$hash = $jc(_$hash, selectAllText.hashCode);
    _$hash = $jc(_$hash, colCount.hashCode);
    _$hash = $jc(_$hash, maxSelectedChoices.hashCode);
    _$hash = $jc(_$hash, separateSpecialChoices.hashCode);
    _$hash = $jc(_$hash, longTap.hashCode);
    _$hash = $jc(_$hash, itemComponent.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'$RankingAllOf')
          ..add('showOtherItem', showOtherItem)
          ..add('otherText', otherText)
          ..add('otherErrorText', otherErrorText)
          ..add('storeOthersAsComment', storeOthersAsComment)
          ..add('showNoneItem', showNoneItem)
          ..add('noneText', noneText)
          ..add('showSelectAllItem', showSelectAllItem)
          ..add('selectAllText', selectAllText)
          ..add('colCount', colCount)
          ..add('maxSelectedChoices', maxSelectedChoices)
          ..add('separateSpecialChoices', separateSpecialChoices)
          ..add('longTap', longTap)
          ..add('itemComponent', itemComponent))
        .toString();
  }
}

class $RankingAllOfBuilder
    implements
        Builder<$RankingAllOf, $RankingAllOfBuilder>,
        RankingAllOfBuilder {
  _$$RankingAllOf? _$v;

  bool? _showOtherItem;
  bool? get showOtherItem => _$this._showOtherItem;
  set showOtherItem(covariant bool? showOtherItem) =>
      _$this._showOtherItem = showOtherItem;

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

  bool? _showNoneItem;
  bool? get showNoneItem => _$this._showNoneItem;
  set showNoneItem(covariant bool? showNoneItem) =>
      _$this._showNoneItem = showNoneItem;

  String? _noneText;
  String? get noneText => _$this._noneText;
  set noneText(covariant String? noneText) => _$this._noneText = noneText;

  bool? _showSelectAllItem;
  bool? get showSelectAllItem => _$this._showSelectAllItem;
  set showSelectAllItem(covariant bool? showSelectAllItem) =>
      _$this._showSelectAllItem = showSelectAllItem;

  String? _selectAllText;
  String? get selectAllText => _$this._selectAllText;
  set selectAllText(covariant String? selectAllText) =>
      _$this._selectAllText = selectAllText;

  CheckboxbaseColCount? _colCount;
  CheckboxbaseColCount? get colCount => _$this._colCount;
  set colCount(covariant CheckboxbaseColCount? colCount) =>
      _$this._colCount = colCount;

  num? _maxSelectedChoices;
  num? get maxSelectedChoices => _$this._maxSelectedChoices;
  set maxSelectedChoices(covariant num? maxSelectedChoices) =>
      _$this._maxSelectedChoices = maxSelectedChoices;

  bool? _separateSpecialChoices;
  bool? get separateSpecialChoices => _$this._separateSpecialChoices;
  set separateSpecialChoices(covariant bool? separateSpecialChoices) =>
      _$this._separateSpecialChoices = separateSpecialChoices;

  String? _longTap;
  String? get longTap => _$this._longTap;
  set longTap(covariant String? longTap) => _$this._longTap = longTap;

  String? _itemComponent;
  String? get itemComponent => _$this._itemComponent;
  set itemComponent(covariant String? itemComponent) =>
      _$this._itemComponent = itemComponent;

  $RankingAllOfBuilder() {
    $RankingAllOf._defaults(this);
  }

  $RankingAllOfBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _showOtherItem = $v.showOtherItem;
      _otherText = $v.otherText;
      _otherErrorText = $v.otherErrorText;
      _storeOthersAsComment = $v.storeOthersAsComment;
      _showNoneItem = $v.showNoneItem;
      _noneText = $v.noneText;
      _showSelectAllItem = $v.showSelectAllItem;
      _selectAllText = $v.selectAllText;
      _colCount = $v.colCount;
      _maxSelectedChoices = $v.maxSelectedChoices;
      _separateSpecialChoices = $v.separateSpecialChoices;
      _longTap = $v.longTap;
      _itemComponent = $v.itemComponent;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(covariant $RankingAllOf other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$$RankingAllOf;
  }

  @override
  void update(void Function($RankingAllOfBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  $RankingAllOf build() => _build();

  _$$RankingAllOf _build() {
    final _$result = _$v ??
        new _$$RankingAllOf._(
            showOtherItem: showOtherItem,
            otherText: otherText,
            otherErrorText: otherErrorText,
            storeOthersAsComment: storeOthersAsComment,
            showNoneItem: showNoneItem,
            noneText: noneText,
            showSelectAllItem: showSelectAllItem,
            selectAllText: selectAllText,
            colCount: colCount,
            maxSelectedChoices: maxSelectedChoices,
            separateSpecialChoices: separateSpecialChoices,
            longTap: longTap,
            itemComponent: itemComponent);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
