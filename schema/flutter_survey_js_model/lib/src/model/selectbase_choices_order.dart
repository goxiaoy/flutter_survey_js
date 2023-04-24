//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'selectbase_choices_order.g.dart';

class SelectbaseChoicesOrder extends EnumClass {

  @BuiltValueEnumConst(wireName: r'none')
  static const SelectbaseChoicesOrder none = _$none;
  @BuiltValueEnumConst(wireName: r'asc')
  static const SelectbaseChoicesOrder asc = _$asc;
  @BuiltValueEnumConst(wireName: r'desc')
  static const SelectbaseChoicesOrder desc = _$desc;
  @BuiltValueEnumConst(wireName: r'random')
  static const SelectbaseChoicesOrder random = _$random;
  @BuiltValueEnumConst(wireName: r'unknown_default_open_api', fallback: true)
  static const SelectbaseChoicesOrder unknownDefaultOpenApi = _$unknownDefaultOpenApi;

  static Serializer<SelectbaseChoicesOrder> get serializer => _$selectbaseChoicesOrderSerializer;

  const SelectbaseChoicesOrder._(String name): super(name);

  static BuiltSet<SelectbaseChoicesOrder> get values => _$values;
  static SelectbaseChoicesOrder valueOf(String name) => _$valueOf(name);
}

/// Optionally, enum_class can generate a mixin to go with your enum for use
/// with Angular. It exposes your enum constants as getters. So, if you mix it
/// in to your Dart component class, the values become available to the
/// corresponding Angular template.
///
/// Trigger mixin generation by writing a line like this one next to your enum.
abstract class SelectbaseChoicesOrderMixin = Object with _$SelectbaseChoicesOrderMixin;

