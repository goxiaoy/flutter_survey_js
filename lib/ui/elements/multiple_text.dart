import 'package:built_collection/built_collection.dart';
import 'package:built_value/json_object.dart';
import 'package:flutter/material.dart';
import 'package:flutter_survey_js/ui/form_control.dart';
import 'package:flutter_survey_js/ui/reactive/reactive_nested_form.dart';
import 'package:flutter_survey_js_model/flutter_survey_js_model.dart' as s;

import 'question_title.dart';
import 'survey_element_factory.dart';

Widget multipleTextBuilder(context, element, {bool hasTitle = true}) {
  final e = element as s.Multipletext;
  final texts = (e.items?.toList() ?? [])
      .map((item) => toText(item, e.defaultValue))
      .toList();
  return ReactiveNestedForm(
      formControlName: e.name,
      child: ListView.separated(
        physics: const ClampingScrollPhysics(),
        shrinkWrap: true,
        itemCount: texts.length,
        itemBuilder: (BuildContext context, int index) {
          final res = SurveyElementFactory().resolve(context, texts[index]);
          return index == 0
              ? Padding(
                  padding: EdgeInsets.only(top: 8.0),
                  child: res,
                )
              : res;
        },
        separatorBuilder: (BuildContext context, int index) {
          return SurveyElementFactory().separatorBuilder(context);
        },
      ).wrapQuestionTitle(element, hasTitle: hasTitle));
}

Object? multipleTextControlBuilder(s.Elementbase element,
    {validators = const []}) {
  final e = element as s.Multipletext;
  final texts = (e.items?.toList() ?? [])
      .map((item) => toText(item, e.defaultValue))
      .toList();
  final res = elementsToFormGroup(texts, validators: validators);
  return res;
}

s.Text toText(s.Multipletextitem multipleTextItem, JsonObject? defaultValue) {
  final Object? defaultValueForItem = defaultValue is MapJsonObject
      ? defaultValue.value[multipleTextItem.name]
      : defaultValue;
  final b = s.Text().toBuilder()
    ..type = "text"
    ..name = multipleTextItem.name
    ..isRequired = multipleTextItem.isRequired
    ..validators = ListBuilder(multipleTextItem.validators?.toList() ?? [])
    ..inputType = s.TextInputType.valueOf(multipleTextItem.inputType.toString())
    ..title = multipleTextItem.title
    ..maxLength = multipleTextItem.maxLength
    ..size = multipleTextItem.size
    ..requiredErrorText = multipleTextItem.requiredErrorText
    ..placeholder = multipleTextItem.placeholder
    ..defaultValue =
        defaultValueForItem == null ? null : JsonObject(defaultValueForItem);

  return b.build();
}
