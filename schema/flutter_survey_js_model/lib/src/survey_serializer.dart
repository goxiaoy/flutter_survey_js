import 'package:built_collection/built_collection.dart';
import 'package:built_value/serializer.dart';
import 'package:flutter_survey_js_model/flutter_survey_js_model.dart';
import 'package:built_value/src/string_serializer.dart';

class SurveySerializer implements PrimitiveSerializer<Survey> {
  @override
  final Iterable<Type> types = const [Survey];

  @override
  final String wireName = r'Survey';

  @override
  Survey deserialize(Serializers serializers, Object serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final serializedList = (serialized as Iterable<Object?>).toList();
    var result = (Survey.serializer as PrimitiveSerializer<Survey>)
        .deserialize(serializers, serialized, specifiedType: specifiedType);
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      if (key == "elements" || key == "questions") {
        //single page
        final page =
            serializers.deserializeWith<Page>(Page.serializer, serialized);
        final b = result.toBuilder();
        b.pages = ListBuilder(<Page>[page!]);
        result = b.build();
        break;
      }
    }
    return result;
  }

  @override
  Object serialize(Serializers serializers, Survey object,
      {FullType specifiedType = FullType.unspecified}) {
    return (Survey.serializer as PrimitiveSerializer<Survey>)
        .serialize(serializers, object, specifiedType: specifiedType);
  }
}
