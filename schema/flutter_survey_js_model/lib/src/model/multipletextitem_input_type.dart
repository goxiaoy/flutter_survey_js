//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'multipletextitem_input_type.g.dart';

class MultipletextitemInputType extends EnumClass {

  @BuiltValueEnumConst(wireName: r'color')
  static const MultipletextitemInputType color = _$color;
  @BuiltValueEnumConst(wireName: r'date')
  static const MultipletextitemInputType date = _$date;
  @BuiltValueEnumConst(wireName: r'datetime-local')
  static const MultipletextitemInputType datetimeLocal = _$datetimeLocal;
  @BuiltValueEnumConst(wireName: r'email')
  static const MultipletextitemInputType email = _$email;
  @BuiltValueEnumConst(wireName: r'month')
  static const MultipletextitemInputType month = _$month;
  @BuiltValueEnumConst(wireName: r'number')
  static const MultipletextitemInputType number = _$number;
  @BuiltValueEnumConst(wireName: r'password')
  static const MultipletextitemInputType password = _$password;
  @BuiltValueEnumConst(wireName: r'range')
  static const MultipletextitemInputType range = _$range;
  @BuiltValueEnumConst(wireName: r'tel')
  static const MultipletextitemInputType tel = _$tel;
  @BuiltValueEnumConst(wireName: r'text')
  static const MultipletextitemInputType text = _$text;
  @BuiltValueEnumConst(wireName: r'time')
  static const MultipletextitemInputType time = _$time;
  @BuiltValueEnumConst(wireName: r'url')
  static const MultipletextitemInputType url = _$url;
  @BuiltValueEnumConst(wireName: r'week')
  static const MultipletextitemInputType week = _$week;
  @BuiltValueEnumConst(wireName: r'unknown_default_open_api', fallback: true)
  static const MultipletextitemInputType unknownDefaultOpenApi = _$unknownDefaultOpenApi;

  static Serializer<MultipletextitemInputType> get serializer => _$multipletextitemInputTypeSerializer;

  const MultipletextitemInputType._(String name): super(name);

  static BuiltSet<MultipletextitemInputType> get values => _$values;
  static MultipletextitemInputType valueOf(String name) => _$valueOf(name);
}

/// Optionally, enum_class can generate a mixin to go with your enum for use
/// with Angular. It exposes your enum constants as getters. So, if you mix it
/// in to your Dart component class, the values become available to the
/// corresponding Angular template.
///
/// Trigger mixin generation by writing a line like this one next to your enum.
abstract class MultipletextitemInputTypeMixin = Object with _$MultipletextitemInputTypeMixin;

