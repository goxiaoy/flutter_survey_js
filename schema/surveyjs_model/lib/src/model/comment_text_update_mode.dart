//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'comment_text_update_mode.g.dart';

class CommentTextUpdateMode extends EnumClass {

  @BuiltValueEnumConst(wireName: r'default')
  static const CommentTextUpdateMode default_ = _$default_;
  @BuiltValueEnumConst(wireName: r'onBlur')
  static const CommentTextUpdateMode onBlur = _$onBlur;
  @BuiltValueEnumConst(wireName: r'onTyping')
  static const CommentTextUpdateMode onTyping = _$onTyping;
  @BuiltValueEnumConst(wireName: r'unknown_default_open_api', fallback: true)
  static const CommentTextUpdateMode unknownDefaultOpenApi = _$unknownDefaultOpenApi;

  static Serializer<CommentTextUpdateMode> get serializer => _$commentTextUpdateModeSerializer;

  const CommentTextUpdateMode._(String name): super(name);

  static BuiltSet<CommentTextUpdateMode> get values => _$values;
  static CommentTextUpdateMode valueOf(String name) => _$valueOf(name);
}

/// Optionally, enum_class can generate a mixin to go with your enum for use
/// with Angular. It exposes your enum constants as getters. So, if you mix it
/// in to your Dart component class, the values become available to the
/// corresponding Angular template.
///
/// Trigger mixin generation by writing a line like this one next to your enum.
abstract class CommentTextUpdateModeMixin = Object with _$CommentTextUpdateModeMixin;

