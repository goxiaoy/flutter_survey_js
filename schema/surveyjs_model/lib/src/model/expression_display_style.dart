//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'expression_display_style.g.dart';

class ExpressionDisplayStyle extends EnumClass {

  @BuiltValueEnumConst(wireName: r'none')
  static const ExpressionDisplayStyle none = _$none;
  @BuiltValueEnumConst(wireName: r'decimal')
  static const ExpressionDisplayStyle decimal = _$decimal;
  @BuiltValueEnumConst(wireName: r'currency')
  static const ExpressionDisplayStyle currency = _$currency;
  @BuiltValueEnumConst(wireName: r'percent')
  static const ExpressionDisplayStyle percent = _$percent;
  @BuiltValueEnumConst(wireName: r'date')
  static const ExpressionDisplayStyle date = _$date;
  @BuiltValueEnumConst(wireName: r'unknown_default_open_api', fallback: true)
  static const ExpressionDisplayStyle unknownDefaultOpenApi = _$unknownDefaultOpenApi;

  static Serializer<ExpressionDisplayStyle> get serializer => _$expressionDisplayStyleSerializer;

  const ExpressionDisplayStyle._(String name): super(name);

  static BuiltSet<ExpressionDisplayStyle> get values => _$values;
  static ExpressionDisplayStyle valueOf(String name) => _$valueOf(name);
}

/// Optionally, enum_class can generate a mixin to go with your enum for use
/// with Angular. It exposes your enum constants as getters. So, if you mix it
/// in to your Dart component class, the values become available to the
/// corresponding Angular template.
///
/// Trigger mixin generation by writing a line like this one next to your enum.
abstract class ExpressionDisplayStyleMixin = Object with _$ExpressionDisplayStyleMixin;

