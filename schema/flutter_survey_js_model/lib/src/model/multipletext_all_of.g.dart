// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'multipletext_all_of.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

abstract class MultipletextAllOfBuilder {
  void replace(MultipletextAllOf other);
  void update(void Function(MultipletextAllOfBuilder) updates);
  ListBuilder<Multipletextitem> get items;
  set items(ListBuilder<Multipletextitem>? items);

  num? get itemSize;
  set itemSize(num? itemSize);

  CheckboxbaseColCount? get colCount;
  set colCount(CheckboxbaseColCount? colCount);
}

class _$$MultipletextAllOf extends $MultipletextAllOf {
  @override
  final BuiltList<Multipletextitem>? items;
  @override
  final num? itemSize;
  @override
  final CheckboxbaseColCount? colCount;

  factory _$$MultipletextAllOf(
          [void Function($MultipletextAllOfBuilder)? updates]) =>
      (new $MultipletextAllOfBuilder()..update(updates))._build();

  _$$MultipletextAllOf._({this.items, this.itemSize, this.colCount})
      : super._();

  @override
  $MultipletextAllOf rebuild(
          void Function($MultipletextAllOfBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  $MultipletextAllOfBuilder toBuilder() =>
      new $MultipletextAllOfBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is $MultipletextAllOf &&
        items == other.items &&
        itemSize == other.itemSize &&
        colCount == other.colCount;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, items.hashCode);
    _$hash = $jc(_$hash, itemSize.hashCode);
    _$hash = $jc(_$hash, colCount.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'$MultipletextAllOf')
          ..add('items', items)
          ..add('itemSize', itemSize)
          ..add('colCount', colCount))
        .toString();
  }
}

class $MultipletextAllOfBuilder
    implements
        Builder<$MultipletextAllOf, $MultipletextAllOfBuilder>,
        MultipletextAllOfBuilder {
  _$$MultipletextAllOf? _$v;

  ListBuilder<Multipletextitem>? _items;
  ListBuilder<Multipletextitem> get items =>
      _$this._items ??= new ListBuilder<Multipletextitem>();
  set items(covariant ListBuilder<Multipletextitem>? items) =>
      _$this._items = items;

  num? _itemSize;
  num? get itemSize => _$this._itemSize;
  set itemSize(covariant num? itemSize) => _$this._itemSize = itemSize;

  CheckboxbaseColCount? _colCount;
  CheckboxbaseColCount? get colCount => _$this._colCount;
  set colCount(covariant CheckboxbaseColCount? colCount) =>
      _$this._colCount = colCount;

  $MultipletextAllOfBuilder() {
    $MultipletextAllOf._defaults(this);
  }

  $MultipletextAllOfBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _items = $v.items?.toBuilder();
      _itemSize = $v.itemSize;
      _colCount = $v.colCount;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(covariant $MultipletextAllOf other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$$MultipletextAllOf;
  }

  @override
  void update(void Function($MultipletextAllOfBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  $MultipletextAllOf build() => _build();

  _$$MultipletextAllOf _build() {
    _$$MultipletextAllOf _$result;
    try {
      _$result = _$v ??
          new _$$MultipletextAllOf._(
              items: _items?.build(), itemSize: itemSize, colCount: colCount);
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'items';
        _items?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'$MultipletextAllOf', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
