//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:flutter_survey_js_model/src/model/survey_title.dart';
import 'package:flutter_survey_js_model/src/model/expressionitem.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'htmlconditionitem.g.dart';

/// Htmlconditionitem
///
/// Properties:
/// * [expression] 
/// * [html] 
@BuiltValue()
abstract class Htmlconditionitem implements Expressionitem, Built<Htmlconditionitem, HtmlconditionitemBuilder> {
  @BuiltValueField(wireName: r'html')
  SurveyTitle? get html;

  Htmlconditionitem._();

  factory Htmlconditionitem([void updates(HtmlconditionitemBuilder b)]) = _$Htmlconditionitem;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(HtmlconditionitemBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<Htmlconditionitem> get serializer => _$HtmlconditionitemSerializer();
}

class _$HtmlconditionitemSerializer implements PrimitiveSerializer<Htmlconditionitem> {
  @override
  final Iterable<Type> types = const [Htmlconditionitem, _$Htmlconditionitem];

  @override
  final String wireName = r'Htmlconditionitem';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    Htmlconditionitem object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.html != null) {
      yield r'html';
      yield serializers.serialize(
        object.html,
        specifiedType: const FullType(SurveyTitle),
      );
    }
    if (object.expression != null) {
      yield r'expression';
      yield serializers.serialize(
        object.expression,
        specifiedType: const FullType(String),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    Htmlconditionitem object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required HtmlconditionitemBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'html':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(SurveyTitle),
          ) as SurveyTitle;
          result.html.replace(valueDes);
          break;
        case r'expression':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.expression = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  Htmlconditionitem deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = HtmlconditionitemBuilder();
    final serializedList = (serialized as Iterable<Object?>).toList();
    final unhandled = <Object?>[];
    _deserializeProperties(
      serializers,
      serialized,
      specifiedType: specifiedType,
      serializedList: serializedList,
      unhandled: unhandled,
      result: result,
    );
    return result.build();
  }
}

