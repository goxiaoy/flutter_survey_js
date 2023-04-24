//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'panelbase_questions_order.g.dart';

class PanelbaseQuestionsOrder extends EnumClass {

  @BuiltValueEnumConst(wireName: r'default')
  static const PanelbaseQuestionsOrder default_ = _$default_;
  @BuiltValueEnumConst(wireName: r'initial')
  static const PanelbaseQuestionsOrder initial = _$initial;
  @BuiltValueEnumConst(wireName: r'random')
  static const PanelbaseQuestionsOrder random = _$random;
  @BuiltValueEnumConst(wireName: r'unknown_default_open_api', fallback: true)
  static const PanelbaseQuestionsOrder unknownDefaultOpenApi = _$unknownDefaultOpenApi;

  static Serializer<PanelbaseQuestionsOrder> get serializer => _$panelbaseQuestionsOrderSerializer;

  const PanelbaseQuestionsOrder._(String name): super(name);

  static BuiltSet<PanelbaseQuestionsOrder> get values => _$values;
  static PanelbaseQuestionsOrder valueOf(String name) => _$valueOf(name);
}

/// Optionally, enum_class can generate a mixin to go with your enum for use
/// with Angular. It exposes your enum constants as getters. So, if you mix it
/// in to your Dart component class, the values become available to the
/// corresponding Angular template.
///
/// Trigger mixin generation by writing a line like this one next to your enum.
abstract class PanelbaseQuestionsOrderMixin = Object with _$PanelbaseQuestionsOrderMixin;

