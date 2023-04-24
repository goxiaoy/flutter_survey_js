//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'survey_clear_invisible_values.g.dart';

class SurveyClearInvisibleValues extends EnumClass {

  @BuiltValueEnumConst(wireName: r'none')
  static const SurveyClearInvisibleValues none = _$none;
  @BuiltValueEnumConst(wireName: r'onComplete')
  static const SurveyClearInvisibleValues onComplete = _$onComplete;
  @BuiltValueEnumConst(wireName: r'onHidden')
  static const SurveyClearInvisibleValues onHidden = _$onHidden;
  @BuiltValueEnumConst(wireName: r'onHiddenContainer')
  static const SurveyClearInvisibleValues onHiddenContainer = _$onHiddenContainer;
  @BuiltValueEnumConst(wireName: r'unknown_default_open_api', fallback: true)
  static const SurveyClearInvisibleValues unknownDefaultOpenApi = _$unknownDefaultOpenApi;

  static Serializer<SurveyClearInvisibleValues> get serializer => _$surveyClearInvisibleValuesSerializer;

  const SurveyClearInvisibleValues._(String name): super(name);

  static BuiltSet<SurveyClearInvisibleValues> get values => _$values;
  static SurveyClearInvisibleValues valueOf(String name) => _$valueOf(name);
}

/// Optionally, enum_class can generate a mixin to go with your enum for use
/// with Angular. It exposes your enum constants as getters. So, if you mix it
/// in to your Dart component class, the values become available to the
/// corresponding Angular template.
///
/// Trigger mixin generation by writing a line like this one next to your enum.
abstract class SurveyClearInvisibleValuesMixin = Object with _$SurveyClearInvisibleValuesMixin;

