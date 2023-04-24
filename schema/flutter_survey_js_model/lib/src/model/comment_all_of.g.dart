// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'comment_all_of.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

abstract class CommentAllOfBuilder {
  void replace(CommentAllOf other);
  void update(void Function(CommentAllOfBuilder) updates);
  num? get maxLength;
  set maxLength(num? maxLength);

  num? get cols;
  set cols(num? cols);

  num? get rows;
  set rows(num? rows);

  String? get placeholder;
  set placeholder(String? placeholder);

  CommentTextUpdateMode? get textUpdateMode;
  set textUpdateMode(CommentTextUpdateMode? textUpdateMode);

  bool? get autoGrow;
  set autoGrow(bool? autoGrow);

  bool? get acceptCarriageReturn;
  set acceptCarriageReturn(bool? acceptCarriageReturn);
}

class _$$CommentAllOf extends $CommentAllOf {
  @override
  final num? maxLength;
  @override
  final num? cols;
  @override
  final num? rows;
  @override
  final String? placeholder;
  @override
  final CommentTextUpdateMode? textUpdateMode;
  @override
  final bool? autoGrow;
  @override
  final bool? acceptCarriageReturn;

  factory _$$CommentAllOf([void Function($CommentAllOfBuilder)? updates]) =>
      (new $CommentAllOfBuilder()..update(updates))._build();

  _$$CommentAllOf._(
      {this.maxLength,
      this.cols,
      this.rows,
      this.placeholder,
      this.textUpdateMode,
      this.autoGrow,
      this.acceptCarriageReturn})
      : super._();

  @override
  $CommentAllOf rebuild(void Function($CommentAllOfBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  $CommentAllOfBuilder toBuilder() => new $CommentAllOfBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is $CommentAllOf &&
        maxLength == other.maxLength &&
        cols == other.cols &&
        rows == other.rows &&
        placeholder == other.placeholder &&
        textUpdateMode == other.textUpdateMode &&
        autoGrow == other.autoGrow &&
        acceptCarriageReturn == other.acceptCarriageReturn;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, maxLength.hashCode);
    _$hash = $jc(_$hash, cols.hashCode);
    _$hash = $jc(_$hash, rows.hashCode);
    _$hash = $jc(_$hash, placeholder.hashCode);
    _$hash = $jc(_$hash, textUpdateMode.hashCode);
    _$hash = $jc(_$hash, autoGrow.hashCode);
    _$hash = $jc(_$hash, acceptCarriageReturn.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'$CommentAllOf')
          ..add('maxLength', maxLength)
          ..add('cols', cols)
          ..add('rows', rows)
          ..add('placeholder', placeholder)
          ..add('textUpdateMode', textUpdateMode)
          ..add('autoGrow', autoGrow)
          ..add('acceptCarriageReturn', acceptCarriageReturn))
        .toString();
  }
}

class $CommentAllOfBuilder
    implements
        Builder<$CommentAllOf, $CommentAllOfBuilder>,
        CommentAllOfBuilder {
  _$$CommentAllOf? _$v;

  num? _maxLength;
  num? get maxLength => _$this._maxLength;
  set maxLength(covariant num? maxLength) => _$this._maxLength = maxLength;

  num? _cols;
  num? get cols => _$this._cols;
  set cols(covariant num? cols) => _$this._cols = cols;

  num? _rows;
  num? get rows => _$this._rows;
  set rows(covariant num? rows) => _$this._rows = rows;

  String? _placeholder;
  String? get placeholder => _$this._placeholder;
  set placeholder(covariant String? placeholder) =>
      _$this._placeholder = placeholder;

  CommentTextUpdateMode? _textUpdateMode;
  CommentTextUpdateMode? get textUpdateMode => _$this._textUpdateMode;
  set textUpdateMode(covariant CommentTextUpdateMode? textUpdateMode) =>
      _$this._textUpdateMode = textUpdateMode;

  bool? _autoGrow;
  bool? get autoGrow => _$this._autoGrow;
  set autoGrow(covariant bool? autoGrow) => _$this._autoGrow = autoGrow;

  bool? _acceptCarriageReturn;
  bool? get acceptCarriageReturn => _$this._acceptCarriageReturn;
  set acceptCarriageReturn(covariant bool? acceptCarriageReturn) =>
      _$this._acceptCarriageReturn = acceptCarriageReturn;

  $CommentAllOfBuilder() {
    $CommentAllOf._defaults(this);
  }

  $CommentAllOfBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _maxLength = $v.maxLength;
      _cols = $v.cols;
      _rows = $v.rows;
      _placeholder = $v.placeholder;
      _textUpdateMode = $v.textUpdateMode;
      _autoGrow = $v.autoGrow;
      _acceptCarriageReturn = $v.acceptCarriageReturn;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(covariant $CommentAllOf other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$$CommentAllOf;
  }

  @override
  void update(void Function($CommentAllOfBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  $CommentAllOf build() => _build();

  _$$CommentAllOf _build() {
    final _$result = _$v ??
        new _$$CommentAllOf._(
            maxLength: maxLength,
            cols: cols,
            rows: rows,
            placeholder: placeholder,
            textUpdateMode: textUpdateMode,
            autoGrow: autoGrow,
            acceptCarriageReturn: acceptCarriageReturn);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
