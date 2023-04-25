import 'package:flutter/material.dart';
import 'package:flutter_survey_js_model/flutter_survey_js_model.dart' as s;
import 'package:flutter_survey_js/ui/form_control.dart';
import 'package:flutter_survey_js/ui/reactive/reactive_nested_form.dart';
import 'package:built_collection/built_collection.dart';
import 'question_title.dart';
import 'survey_element_factory.dart';

final SurveyElementBuilder multipleTextBuilder =
    (context, element, {bool hasTitle = true}) {
  final e = element as s.Multipletext;
  final texts = (e.items?.toList() ?? []).map(toText).toList();
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
};

final SurveyFormControlBuilder multipleTextControlBuilder =
    (s.Elementbase element, {validators = const []}) {
  final e = element as s.Multipletext;
  final texts = (e.items?.toList() ?? []).map(toText).toList();
  final res = elementsToFormGroup(texts, validators: validators);
  return res;
};

s.Text toText(s.Multipletextitem multipleTextItem) {
  final b = s.Text().toBuilder()
    ..name = multipleTextItem.name
    ..isRequired = multipleTextItem.isRequired
    ..validators = ListBuilder(multipleTextItem.validators?.toList() ?? [])
    ..inputType = s.TextInputType.valueOf(multipleTextItem.inputType.toString())
    ..title = multipleTextItem.title
    ..maxLength = multipleTextItem.maxLength
    ..size = multipleTextItem.size
    ..requiredErrorText = multipleTextItem.requiredErrorText
    ..placeholder = multipleTextItem.placeholder;

  return b.build();
}
