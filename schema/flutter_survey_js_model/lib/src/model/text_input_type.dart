//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'text_input_type.g.dart';

class TextInputType extends EnumClass {

  @BuiltValueEnumConst(wireName: r'color')
  static const TextInputType color = _$color;
  @BuiltValueEnumConst(wireName: r'date')
  static const TextInputType date = _$date;
  @BuiltValueEnumConst(wireName: r'datetime-local')
  static const TextInputType datetimeLocal = _$datetimeLocal;
  @BuiltValueEnumConst(wireName: r'email')
  static const TextInputType email = _$email;
  @BuiltValueEnumConst(wireName: r'month')
  static const TextInputType month = _$month;
  @BuiltValueEnumConst(wireName: r'number')
  static const TextInputType number = _$number;
  @BuiltValueEnumConst(wireName: r'password')
  static const TextInputType password = _$password;
  @BuiltValueEnumConst(wireName: r'range')
  static const TextInputType range = _$range;
  @BuiltValueEnumConst(wireName: r'tel')
  static const TextInputType tel = _$tel;
  @BuiltValueEnumConst(wireName: r'text')
  static const TextInputType text = _$text;
  @BuiltValueEnumConst(wireName: r'time')
  static const TextInputType time = _$time;
  @BuiltValueEnumConst(wireName: r'url')
  static const TextInputType url = _$url;
  @BuiltValueEnumConst(wireName: r'week')
  static const TextInputType week = _$week;
  @BuiltValueEnumConst(wireName: r'unknown_default_open_api', fallback: true)
  static const TextInputType unknownDefaultOpenApi = _$unknownDefaultOpenApi;

  static Serializer<TextInputType> get serializer => _$textInputTypeSerializer;

  const TextInputType._(String name): super(name);

  static BuiltSet<TextInputType> get values => _$values;
  static TextInputType valueOf(String name) => _$valueOf(name);
}

/// Optionally, enum_class can generate a mixin to go with your enum for use
/// with Angular. It exposes your enum constants as getters. So, if you mix it
/// in to your Dart component class, the values become available to the
/// corresponding Angular template.
///
/// Trigger mixin generation by writing a line like this one next to your enum.
abstract class TextInputTypeMixin = Object with _$TextInputTypeMixin;

