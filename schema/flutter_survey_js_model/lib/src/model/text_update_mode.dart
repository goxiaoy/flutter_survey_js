//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'text_update_mode.g.dart';

class TextUpdateMode extends EnumClass {

  @BuiltValueEnumConst(wireName: r'default')
  static const TextUpdateMode default_ = _$default_;
  @BuiltValueEnumConst(wireName: r'onBlur')
  static const TextUpdateMode onBlur = _$onBlur;
  @BuiltValueEnumConst(wireName: r'onTyping')
  static const TextUpdateMode onTyping = _$onTyping;
  @BuiltValueEnumConst(wireName: r'unknown_default_open_api', fallback: true)
  static const TextUpdateMode unknownDefaultOpenApi = _$unknownDefaultOpenApi;

  static Serializer<TextUpdateMode> get serializer => _$textUpdateModeSerializer;

  const TextUpdateMode._(String name): super(name);

  static BuiltSet<TextUpdateMode> get values => _$values;
  static TextUpdateMode valueOf(String name) => _$valueOf(name);
}

/// Optionally, enum_class can generate a mixin to go with your enum for use
/// with Angular. It exposes your enum constants as getters. So, if you mix it
/// in to your Dart component class, the values become available to the
/// corresponding Angular template.
///
/// Trigger mixin generation by writing a line like this one next to your enum.
abstract class TextUpdateModeMixin = Object with _$TextUpdateModeMixin;

