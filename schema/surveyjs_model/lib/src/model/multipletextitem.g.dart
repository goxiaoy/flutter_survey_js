// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'multipletextitem.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$Multipletextitem extends Multipletextitem {
  @override
  final String? name;
  @override
  final bool? isRequired;
  @override
  final String? placeholder;
  @override
  final MultipletextitemInputType? inputType;
  @override
  final String? title;
  @override
  final num? maxLength;
  @override
  final num? size;
  @override
  final String? requiredErrorText;
  @override
  final Surveyvalidator? validators;

  factory _$Multipletextitem(
          [void Function(MultipletextitemBuilder)? updates]) =>
      (new MultipletextitemBuilder()..update(updates))._build();

  _$Multipletextitem._(
      {this.name,
      this.isRequired,
      this.placeholder,
      this.inputType,
      this.title,
      this.maxLength,
      this.size,
      this.requiredErrorText,
      this.validators})
      : super._();

  @override
  Multipletextitem rebuild(void Function(MultipletextitemBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  MultipletextitemBuilder toBuilder() =>
      new MultipletextitemBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Multipletextitem &&
        name == other.name &&
        isRequired == other.isRequired &&
        placeholder == other.placeholder &&
        inputType == other.inputType &&
        title == other.title &&
        maxLength == other.maxLength &&
        size == other.size &&
        requiredErrorText == other.requiredErrorText &&
        validators == other.validators;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, name.hashCode);
    _$hash = $jc(_$hash, isRequired.hashCode);
    _$hash = $jc(_$hash, placeholder.hashCode);
    _$hash = $jc(_$hash, inputType.hashCode);
    _$hash = $jc(_$hash, title.hashCode);
    _$hash = $jc(_$hash, maxLength.hashCode);
    _$hash = $jc(_$hash, size.hashCode);
    _$hash = $jc(_$hash, requiredErrorText.hashCode);
    _$hash = $jc(_$hash, validators.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'Multipletextitem')
          ..add('name', name)
          ..add('isRequired', isRequired)
          ..add('placeholder', placeholder)
          ..add('inputType', inputType)
          ..add('title', title)
          ..add('maxLength', maxLength)
          ..add('size', size)
          ..add('requiredErrorText', requiredErrorText)
          ..add('validators', validators))
        .toString();
  }
}

class MultipletextitemBuilder
    implements Builder<Multipletextitem, MultipletextitemBuilder> {
  _$Multipletextitem? _$v;

  String? _name;
  String? get name => _$this._name;
  set name(String? name) => _$this._name = name;

  bool? _isRequired;
  bool? get isRequired => _$this._isRequired;
  set isRequired(bool? isRequired) => _$this._isRequired = isRequired;

  String? _placeholder;
  String? get placeholder => _$this._placeholder;
  set placeholder(String? placeholder) => _$this._placeholder = placeholder;

  MultipletextitemInputType? _inputType;
  MultipletextitemInputType? get inputType => _$this._inputType;
  set inputType(MultipletextitemInputType? inputType) =>
      _$this._inputType = inputType;

  String? _title;
  String? get title => _$this._title;
  set title(String? title) => _$this._title = title;

  num? _maxLength;
  num? get maxLength => _$this._maxLength;
  set maxLength(num? maxLength) => _$this._maxLength = maxLength;

  num? _size;
  num? get size => _$this._size;
  set size(num? size) => _$this._size = size;

  String? _requiredErrorText;
  String? get requiredErrorText => _$this._requiredErrorText;
  set requiredErrorText(String? requiredErrorText) =>
      _$this._requiredErrorText = requiredErrorText;

  Surveyvalidator? _validators;
  Surveyvalidator? get validators => _$this._validators;
  set validators(Surveyvalidator? validators) =>
      _$this._validators = validators;

  MultipletextitemBuilder() {
    Multipletextitem._defaults(this);
  }

  MultipletextitemBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _name = $v.name;
      _isRequired = $v.isRequired;
      _placeholder = $v.placeholder;
      _inputType = $v.inputType;
      _title = $v.title;
      _maxLength = $v.maxLength;
      _size = $v.size;
      _requiredErrorText = $v.requiredErrorText;
      _validators = $v.validators;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Multipletextitem other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$Multipletextitem;
  }

  @override
  void update(void Function(MultipletextitemBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  Multipletextitem build() => _build();

  _$Multipletextitem _build() {
    final _$result = _$v ??
        new _$Multipletextitem._(
            name: name,
            isRequired: isRequired,
            placeholder: placeholder,
            inputType: inputType,
            title: title,
            maxLength: maxLength,
            size: size,
            requiredErrorText: requiredErrorText,
            validators: validators);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
