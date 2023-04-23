// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'itemvalue.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

abstract class ItemvalueBuilder {
  void replace(Itemvalue other);
  void update(void Function(ItemvalueBuilder) updates);
  String? get value;
  set value(String? value);

  String? get text;
  set text(String? text);

  String? get visibleIf;
  set visibleIf(String? visibleIf);

  String? get enableIf;
  set enableIf(String? enableIf);
}

class _$$Itemvalue extends $Itemvalue {
  @override
  final String? value;
  @override
  final String? text;
  @override
  final String? visibleIf;
  @override
  final String? enableIf;

  factory _$$Itemvalue([void Function($ItemvalueBuilder)? updates]) =>
      (new $ItemvalueBuilder()..update(updates))._build();

  _$$Itemvalue._({this.value, this.text, this.visibleIf, this.enableIf})
      : super._();

  @override
  $Itemvalue rebuild(void Function($ItemvalueBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  $ItemvalueBuilder toBuilder() => new $ItemvalueBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is $Itemvalue &&
        value == other.value &&
        text == other.text &&
        visibleIf == other.visibleIf &&
        enableIf == other.enableIf;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, value.hashCode);
    _$hash = $jc(_$hash, text.hashCode);
    _$hash = $jc(_$hash, visibleIf.hashCode);
    _$hash = $jc(_$hash, enableIf.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'$Itemvalue')
          ..add('value', value)
          ..add('text', text)
          ..add('visibleIf', visibleIf)
          ..add('enableIf', enableIf))
        .toString();
  }
}

class $ItemvalueBuilder
    implements Builder<$Itemvalue, $ItemvalueBuilder>, ItemvalueBuilder {
  _$$Itemvalue? _$v;

  String? _value;
  String? get value => _$this._value;
  set value(covariant String? value) => _$this._value = value;

  String? _text;
  String? get text => _$this._text;
  set text(covariant String? text) => _$this._text = text;

  String? _visibleIf;
  String? get visibleIf => _$this._visibleIf;
  set visibleIf(covariant String? visibleIf) => _$this._visibleIf = visibleIf;

  String? _enableIf;
  String? get enableIf => _$this._enableIf;
  set enableIf(covariant String? enableIf) => _$this._enableIf = enableIf;

  $ItemvalueBuilder() {
    $Itemvalue._defaults(this);
  }

  $ItemvalueBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _value = $v.value;
      _text = $v.text;
      _visibleIf = $v.visibleIf;
      _enableIf = $v.enableIf;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(covariant $Itemvalue other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$$Itemvalue;
  }

  @override
  void update(void Function($ItemvalueBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  $Itemvalue build() => _build();

  _$$Itemvalue _build() {
    final _$result = _$v ??
        new _$$Itemvalue._(
            value: value, text: text, visibleIf: visibleIf, enableIf: enableIf);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
