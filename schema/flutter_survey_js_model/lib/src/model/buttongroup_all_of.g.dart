// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'buttongroup_all_of.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

abstract class ButtongroupAllOfBuilder {
  void replace(ButtongroupAllOf other);
  void update(void Function(ButtongroupAllOfBuilder) updates);
  ListBuilder<SelectbaseAllOfChoicesInner> get choices;
  set choices(ListBuilder<SelectbaseAllOfChoicesInner>? choices);
}

class _$$ButtongroupAllOf extends $ButtongroupAllOf {
  @override
  final BuiltList<SelectbaseAllOfChoicesInner>? choices;

  factory _$$ButtongroupAllOf(
          [void Function($ButtongroupAllOfBuilder)? updates]) =>
      (new $ButtongroupAllOfBuilder()..update(updates))._build();

  _$$ButtongroupAllOf._({this.choices}) : super._();

  @override
  $ButtongroupAllOf rebuild(void Function($ButtongroupAllOfBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  $ButtongroupAllOfBuilder toBuilder() =>
      new $ButtongroupAllOfBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is $ButtongroupAllOf && choices == other.choices;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, choices.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'$ButtongroupAllOf')
          ..add('choices', choices))
        .toString();
  }
}

class $ButtongroupAllOfBuilder
    implements
        Builder<$ButtongroupAllOf, $ButtongroupAllOfBuilder>,
        ButtongroupAllOfBuilder {
  _$$ButtongroupAllOf? _$v;

  ListBuilder<SelectbaseAllOfChoicesInner>? _choices;
  ListBuilder<SelectbaseAllOfChoicesInner> get choices =>
      _$this._choices ??= new ListBuilder<SelectbaseAllOfChoicesInner>();
  set choices(covariant ListBuilder<SelectbaseAllOfChoicesInner>? choices) =>
      _$this._choices = choices;

  $ButtongroupAllOfBuilder() {
    $ButtongroupAllOf._defaults(this);
  }

  $ButtongroupAllOfBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _choices = $v.choices?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(covariant $ButtongroupAllOf other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$$ButtongroupAllOf;
  }

  @override
  void update(void Function($ButtongroupAllOfBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  $ButtongroupAllOf build() => _build();

  _$$ButtongroupAllOf _build() {
    _$$ButtongroupAllOf _$result;
    try {
      _$result = _$v ?? new _$$ButtongroupAllOf._(choices: _choices?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'choices';
        _choices?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'$ButtongroupAllOf', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
