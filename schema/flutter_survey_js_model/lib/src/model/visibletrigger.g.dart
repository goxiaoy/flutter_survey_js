// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'visibletrigger.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$Visibletrigger extends Visibletrigger {
  @override
  final String? name;
  @override
  final String? operator_;
  @override
  final String? value;
  @override
  final String? expression;
  @override
  final String? type;
  @override
  final String? pages;
  @override
  final String? questions;

  factory _$Visibletrigger([void Function(VisibletriggerBuilder)? updates]) =>
      (new VisibletriggerBuilder()..update(updates))._build();

  _$Visibletrigger._(
      {this.name,
      this.operator_,
      this.value,
      this.expression,
      this.type,
      this.pages,
      this.questions})
      : super._();

  @override
  Visibletrigger rebuild(void Function(VisibletriggerBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  VisibletriggerBuilder toBuilder() =>
      new VisibletriggerBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Visibletrigger &&
        name == other.name &&
        operator_ == other.operator_ &&
        value == other.value &&
        expression == other.expression &&
        type == other.type &&
        pages == other.pages &&
        questions == other.questions;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, name.hashCode);
    _$hash = $jc(_$hash, operator_.hashCode);
    _$hash = $jc(_$hash, value.hashCode);
    _$hash = $jc(_$hash, expression.hashCode);
    _$hash = $jc(_$hash, type.hashCode);
    _$hash = $jc(_$hash, pages.hashCode);
    _$hash = $jc(_$hash, questions.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'Visibletrigger')
          ..add('name', name)
          ..add('operator_', operator_)
          ..add('value', value)
          ..add('expression', expression)
          ..add('type', type)
          ..add('pages', pages)
          ..add('questions', questions))
        .toString();
  }
}

class VisibletriggerBuilder
    implements
        Builder<Visibletrigger, VisibletriggerBuilder>,
        SurveytriggerBuilder,
        VisibletriggerAllOfBuilder {
  _$Visibletrigger? _$v;

  String? _name;
  String? get name => _$this._name;
  set name(covariant String? name) => _$this._name = name;

  String? _operator_;
  String? get operator_ => _$this._operator_;
  set operator_(covariant String? operator_) => _$this._operator_ = operator_;

  String? _value;
  String? get value => _$this._value;
  set value(covariant String? value) => _$this._value = value;

  String? _expression;
  String? get expression => _$this._expression;
  set expression(covariant String? expression) =>
      _$this._expression = expression;

  String? _type;
  String? get type => _$this._type;
  set type(covariant String? type) => _$this._type = type;

  String? _pages;
  String? get pages => _$this._pages;
  set pages(covariant String? pages) => _$this._pages = pages;

  String? _questions;
  String? get questions => _$this._questions;
  set questions(covariant String? questions) => _$this._questions = questions;

  VisibletriggerBuilder() {
    Visibletrigger._defaults(this);
  }

  VisibletriggerBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _name = $v.name;
      _operator_ = $v.operator_;
      _value = $v.value;
      _expression = $v.expression;
      _type = $v.type;
      _pages = $v.pages;
      _questions = $v.questions;
      _$v = null;
    }
    return this;
  }

  @override
// ignore: override_on_non_overriding_method
  void replace(covariant Visibletrigger other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$Visibletrigger;
  }

  @override
  void update(void Function(VisibletriggerBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  Visibletrigger build() => _build();

  _$Visibletrigger _build() {
    final _$result = _$v ??
        new _$Visibletrigger._(
            name: name,
            operator_: operator_,
            value: value,
            expression: expression,
            type: type,
            pages: pages,
            questions: questions);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
