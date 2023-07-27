import 'package:built_collection/built_collection.dart';
import 'package:flutter/material.dart';
import 'package:flutter_survey_js/ui/form_control.dart';
import 'package:flutter_survey_js/ui/reactive/reactive_nested_form.dart';
import 'package:flutter_survey_js/ui/survey_configuration.dart';
import 'package:flutter_survey_js_model/flutter_survey_js_model.dart' as s;
import 'package:reactive_forms/reactive_forms.dart';
import 'package:async/async.dart';

Widget multipleTextBuilder(BuildContext context, s.Elementbase element,
    {ElementConfiguration? configuration}) {
  final e = element as s.Multipletext;
  final texts = (e.items?.toList() ?? []).map(toText).toList();

  return ReactiveNestedForm(
      formControlName: e.name,
      child: Builder(builder: (context) {
        final control = ReactiveForm.of(context) as FormGroup;
        final effectiveDecoration = const InputDecoration()
            .applyDefaults(Theme.of(context).inputDecorationTheme);
        return StreamBuilder(
          stream:
              StreamGroup.merge([control.touchChanges, control.statusChanged]),
          builder: (context, _) {
            return InputDecorator(
              decoration: effectiveDecoration.copyWith(
                  errorText: getErrorTextFromFormControl(context, control)),
              child: ListView.separated(
                physics: const ClampingScrollPhysics(),
                shrinkWrap: true,
                itemCount: texts.length,
                itemBuilder: (BuildContext context, int index) {
                  final res = SurveyConfiguration.of(context)!
                      .factory
                      .resolve(context, texts[index]);
                  return index == 0
                      ? Padding(
                          padding: const EdgeInsets.only(top: 8.0),
                          child: res,
                        )
                      : res;
                },
                separatorBuilder: (BuildContext context, int index) {
                  return SurveyConfiguration.of(context)!
                      .separatorBuilder(context);
                },
              ),
            );
          },
        );
      }).wrapQuestionTitle(context, element, configuration: configuration));
}

AbstractControl multipleTextControlBuilder(
    BuildContext context, s.Elementbase element,
    {validators = const [], Object? value}) {
  final e = element as s.Multipletext;
  final texts = (e.items?.toList() ?? []).map(toText).toList();
  final res = elementsToFormGroup(context, texts,
      validators: validators, value: e.defaultValue?.value ?? value);
  return res;
}

s.Text toText(s.Multipletextitem multipleTextItem) {
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
    ..placeholder = multipleTextItem.placeholder;

  return b.build();
}
