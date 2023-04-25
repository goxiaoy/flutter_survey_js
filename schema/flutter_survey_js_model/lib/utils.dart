import 'package:built_value/serializer.dart';
import 'package:built_value/standard_json_plugin.dart';
import 'package:flutter_survey_js_model/src/any_of.dart';
import 'package:flutter_survey_js_model/src/survey_serializer.dart';

import 'flutter_survey_js_model.dart';

Serializers surveySerializers = (serializers.toBuilder()
      ..add(SurveyAnyOfSerializer())
      ..add(SurveySerializer())
      ..addPlugin(StandardJsonPlugin()))
    .build();

Survey? surveyFromJson(Object? serialized) {
  return surveySerializers.deserializeWith<Survey>(
      SurveySerializer(), serialized);
}

Object? surveyToJson(Survey? survey) {
  return surveySerializers.serializeWith(SurveySerializer(), survey);
}
