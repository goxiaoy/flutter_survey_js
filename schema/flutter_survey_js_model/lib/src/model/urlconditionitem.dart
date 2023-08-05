//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:flutter_survey_js_model/src/model/survey_title.dart';
import 'package:flutter_survey_js_model/src/model/expressionitem.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'urlconditionitem.g.dart';

/// Urlconditionitem
///
/// Properties:
/// * [expression] 
/// * [url] 
@BuiltValue()
abstract class Urlconditionitem implements Expressionitem, Built<Urlconditionitem, UrlconditionitemBuilder> {
  @BuiltValueField(wireName: r'url')
  SurveyTitle? get url;

  Urlconditionitem._();

  factory Urlconditionitem([void updates(UrlconditionitemBuilder b)]) = _$Urlconditionitem;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(UrlconditionitemBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<Urlconditionitem> get serializer => _$UrlconditionitemSerializer();
}

class _$UrlconditionitemSerializer implements PrimitiveSerializer<Urlconditionitem> {
  @override
  final Iterable<Type> types = const [Urlconditionitem, _$Urlconditionitem];

  @override
  final String wireName = r'Urlconditionitem';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    Urlconditionitem object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.url != null) {
      yield r'url';
      yield serializers.serialize(
        object.url,
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
    Urlconditionitem object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required UrlconditionitemBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'url':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(SurveyTitle),
          ) as SurveyTitle;
          result.url.replace(valueDes);
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
  Urlconditionitem deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = UrlconditionitemBuilder();
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

