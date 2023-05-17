import 'package:flutter/material.dart';
import 'package:flutter_survey_js/ui/form_control.dart';
import 'package:flutter_survey_js/ui/reactive/reactive_nested_form.dart';
import 'package:flutter_survey_js/ui/reactive/reactive_nested_group_array.dart';
import 'package:flutter_survey_js/ui/survey_configuration.dart';
import 'package:flutter_survey_js_model/flutter_survey_js_model.dart' as s;
import 'package:reactive_forms/reactive_forms.dart';

import 'question_title.dart';
import '../survey_element_factory.dart';

Widget panelDynamicBuilder(context, element,
    {ElementConfiguration? configuration}) {
  return PanelDynamicElement(
    formControlName: element.name!,
    element: element as s.Paneldynamic,
  ).wrapQuestionTitle(context, element, configuration: configuration);
}

class PanelDynamicElement extends StatelessWidget {
  final String formControlName;
  final s.Paneldynamic element;

  const PanelDynamicElement(
      {Key? key, required this.formControlName, required this.element})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    createNew() {
      //create new formGroup
      return elementsToFormGroup(
          context,
          (element.templateElements?.map((p0) => p0.realElement).toList() ?? [])
              .toList());
    }

    return ReactiveNestedGroupArray(
        createNew: createNew,
        formArrayName: formControlName,
        builder: (BuildContext context, FormGroup form, Widget? child) {
          return Container(
              decoration:
                  BoxDecoration(border: Border.all(color: Colors.black26)),
              child: ReactiveNestedForm(
                  formGroup: form,
                  child: ListView.separated(
                    physics: const ClampingScrollPhysics(),
                    shrinkWrap: true,
                    itemCount: element.templateElements?.length ?? 0,
                    itemBuilder: (BuildContext context, int index) {
                      final res = SurveyConfiguration.of(context)!
                          .factory
                          .resolve(context,
                              element.templateElements![index].realElement);
                      return res;
                    },
                    separatorBuilder: (BuildContext context, int index) {
                      return SurveyConfiguration.of(context)!
                          .separatorBuilder(context);
                    },
                  )));
        });
  }
}
