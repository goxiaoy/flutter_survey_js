import 'package:built_collection/built_collection.dart';
import 'package:built_value/json_object.dart';
import 'package:built_value/serializer.dart';
import 'package:built_value/standard_json_plugin.dart';
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

extension SelectbaseAllOfChoicesInnerExtension on SelectbaseAllOfChoicesInner {
  Itemvalue castToItemvalue() {
    if (this.anyOf.isType(Itemvalue)) {
      return this.anyOf.values[this.anyOf.types.indexOf(Itemvalue)]
          as Itemvalue;
    }
    final b = $ItemvalueBuilder();
    b.value =
        this.anyOf.values[this.anyOf.types.indexOf(JsonObject)] as JsonObject;
    return b.build();
  }
}

extension MatrixdropdownAllOfRowsInnerExtension
    on MatrixdropdownAllOfRowsInner {
  Itemvalue castToItemvalue() {
    if (this.anyOf.isType(Itemvalue)) {
      return this.anyOf.values[this.anyOf.types.indexOf(Itemvalue)]
          as Itemvalue;
    }
    final b = $ItemvalueBuilder();
    b.value =
        this.anyOf.values[this.anyOf.types.indexOf(JsonObject)] as JsonObject;
    return b.build();
  }
}

extension PanelbaseExtension on Panelbase {
  BuiltList<SurveyQuestionsInner>? get elementsOrQuestions {
    return this.elements ?? this.questions;
  }
}

extension SurveyQuestionsInnerExtension on SurveyQuestionsInner {
  Elementbase get realElement {
    return this.anyOf.values.values.first as Elementbase;
  }
}

extension QuestionAllOfValidatorsInnerExtension
    on QuestionAllOfValidatorsInner {
  Surveyvalidator get realValidator {
    return this.anyOf.values.values.first as Surveyvalidator;
  }
}

extension SurveyTriggersInnerExtension on SurveyTriggersInner {
  Surveytrigger get realValidator {
    return this.anyOf.values.values.first as Surveytrigger;
  }
}

extension SurveyShowQuestionNumbersExtension on SurveyShowQuestionNumbers {
  bool get isOn {
    if (this.anyOf.isNull || this.anyOf.values.isEmpty) {
      return true;
    }
    if (this.anyOf.isType(bool)) {
      return (this.anyOf.values[this.anyOf.types.indexOf(bool)] as bool) ==
          true;
    }
    return (this.anyOf.values[
                this.anyOf.types.indexOf(SurveyShowQuestionNumbersAnyOf)]
            as SurveyShowQuestionNumbersAnyOf) ==
        SurveyShowQuestionNumbersAnyOf.on_;
  }

  bool get isOff {
    if (this.anyOf.isType(bool)) {
      return (this.anyOf.values[this.anyOf.types.indexOf(bool)] as bool) ==
          false;
    }
    return (this.anyOf.values[
                this.anyOf.types.indexOf(SurveyShowQuestionNumbersAnyOf)]
            as SurveyShowQuestionNumbersAnyOf) ==
        SurveyShowQuestionNumbersAnyOf.off;
  }

  bool get isOnPage {
    if (this.anyOf.isType(bool)) {
      return false;
    }
    return (this.anyOf.values[
                this.anyOf.types.indexOf(SurveyShowQuestionNumbersAnyOf)]
            as SurveyShowQuestionNumbersAnyOf) ==
        SurveyShowQuestionNumbersAnyOf.onPage;
  }
}

extension JsonObjectExtension on JsonObject? {
  int? tryCastToInt() {
    if (this == null) {
      return null;
    }
    if (!(this is NumJsonObject)) {
      return null;
    }
    return (this as NumJsonObject).value.toInt();
  }

  List<Object> tryCastToListObj() {
    if (this == null) {
      return [];
    }
    if (!(this is ListJsonObject)) {
      return [];
    }
    return (this as ListJsonObject)
        .value
        .where((element) => element != null)
        .map((e) => e!)
        .toList();
  }
}
