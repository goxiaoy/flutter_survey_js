// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'boolean_all_of.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

abstract class BooleanAllOfBuilder {
  void replace(BooleanAllOf other);
  void update(void Function(BooleanAllOfBuilder) updates);
  bool? get showCommentArea;
  set showCommentArea(bool? showCommentArea);

  String? get label;
  set label(String? label);

  String? get labelTrue;
  set labelTrue(String? labelTrue);

  String? get labelFalse;
  set labelFalse(String? labelFalse);

  String? get valueTrue;
  set valueTrue(String? valueTrue);

  String? get valueFalse;
  set valueFalse(String? valueFalse);

  String? get renderAs;
  set renderAs(String? renderAs);
}

class _$$BooleanAllOf extends $BooleanAllOf {
  @override
  final bool? showCommentArea;
  @override
  final String? label;
  @override
  final String? labelTrue;
  @override
  final String? labelFalse;
  @override
  final String? valueTrue;
  @override
  final String? valueFalse;
  @override
  final String? renderAs;

  factory _$$BooleanAllOf([void Function($BooleanAllOfBuilder)? updates]) =>
      (new $BooleanAllOfBuilder()..update(updates))._build();

  _$$BooleanAllOf._(
      {this.showCommentArea,
      this.label,
      this.labelTrue,
      this.labelFalse,
      this.valueTrue,
      this.valueFalse,
      this.renderAs})
      : super._();

  @override
  $BooleanAllOf rebuild(void Function($BooleanAllOfBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  $BooleanAllOfBuilder toBuilder() => new $BooleanAllOfBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is $BooleanAllOf &&
        showCommentArea == other.showCommentArea &&
        label == other.label &&
        labelTrue == other.labelTrue &&
        labelFalse == other.labelFalse &&
        valueTrue == other.valueTrue &&
        valueFalse == other.valueFalse &&
        renderAs == other.renderAs;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, showCommentArea.hashCode);
    _$hash = $jc(_$hash, label.hashCode);
    _$hash = $jc(_$hash, labelTrue.hashCode);
    _$hash = $jc(_$hash, labelFalse.hashCode);
    _$hash = $jc(_$hash, valueTrue.hashCode);
    _$hash = $jc(_$hash, valueFalse.hashCode);
    _$hash = $jc(_$hash, renderAs.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'$BooleanAllOf')
          ..add('showCommentArea', showCommentArea)
          ..add('label', label)
          ..add('labelTrue', labelTrue)
          ..add('labelFalse', labelFalse)
          ..add('valueTrue', valueTrue)
          ..add('valueFalse', valueFalse)
          ..add('renderAs', renderAs))
        .toString();
  }
}

class $BooleanAllOfBuilder
    implements
        Builder<$BooleanAllOf, $BooleanAllOfBuilder>,
        BooleanAllOfBuilder {
  _$$BooleanAllOf? _$v;

  bool? _showCommentArea;
  bool? get showCommentArea => _$this._showCommentArea;
  set showCommentArea(covariant bool? showCommentArea) =>
      _$this._showCommentArea = showCommentArea;

  String? _label;
  String? get label => _$this._label;
  set label(covariant String? label) => _$this._label = label;

  String? _labelTrue;
  String? get labelTrue => _$this._labelTrue;
  set labelTrue(covariant String? labelTrue) => _$this._labelTrue = labelTrue;

  String? _labelFalse;
  String? get labelFalse => _$this._labelFalse;
  set labelFalse(covariant String? labelFalse) =>
      _$this._labelFalse = labelFalse;

  String? _valueTrue;
  String? get valueTrue => _$this._valueTrue;
  set valueTrue(covariant String? valueTrue) => _$this._valueTrue = valueTrue;

  String? _valueFalse;
  String? get valueFalse => _$this._valueFalse;
  set valueFalse(covariant String? valueFalse) =>
      _$this._valueFalse = valueFalse;

  String? _renderAs;
  String? get renderAs => _$this._renderAs;
  set renderAs(covariant String? renderAs) => _$this._renderAs = renderAs;

  $BooleanAllOfBuilder() {
    $BooleanAllOf._defaults(this);
  }

  $BooleanAllOfBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _showCommentArea = $v.showCommentArea;
      _label = $v.label;
      _labelTrue = $v.labelTrue;
      _labelFalse = $v.labelFalse;
      _valueTrue = $v.valueTrue;
      _valueFalse = $v.valueFalse;
      _renderAs = $v.renderAs;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(covariant $BooleanAllOf other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$$BooleanAllOf;
  }

  @override
  void update(void Function($BooleanAllOfBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  $BooleanAllOf build() => _build();

  _$$BooleanAllOf _build() {
    final _$result = _$v ??
        new _$$BooleanAllOf._(
            showCommentArea: showCommentArea,
            label: label,
            labelTrue: labelTrue,
            labelFalse: labelFalse,
            valueTrue: valueTrue,
            valueFalse: valueFalse,
            renderAs: renderAs);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
