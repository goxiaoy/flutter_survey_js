import 'package:flutter/material.dart';
import 'package:flutter_survey_js/ui/form_control.dart';
import 'package:flutter_survey_js/ui/reactive/reactive_nested_form.dart';
import 'package:flutter_survey_js/ui/survey_configuration.dart';
import 'package:flutter_survey_js/ui/survey_widget.dart';
import 'package:flutter_survey_js_model/flutter_survey_js_model.dart' as s;
import 'package:reactive_forms/reactive_forms.dart';
import 'package:async/async.dart';

Widget multipleTextBuilder(BuildContext context, s.Elementbase element,
    {ElementConfiguration? configuration}) {
  final e = element as s.Multipletext;

  final node =
      SurveyWidgetState.of(context).rootNode.findByElement(element: element)!;

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
                itemCount: node.children.length,
                itemBuilder: (BuildContext context, int index) {
                  final res = SurveyConfiguration.of(context)!
                      .factory
                      .resolve(context, node.children[index].element!);
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

s.Text toText(s.Multipletextitem multipleTextItem) {
  final json = s.surveySerializers.serializeWith(
      s.Multipletextitem.serializer, multipleTextItem) as Map<String, Object?>;
  json["type"] = "text";
  final ret =
      s.surveySerializers.deserializeWith<s.Text>(s.Text.serializer, json)!;

  return ret;
}
