import 'package:flutter/material.dart';
import 'package:flutter_survey_js/generated/l10n.dart';
import 'package:flutter_survey_js/ui/form_control.dart';
import 'package:flutter_survey_js/ui/reactive/reactive_nested_form.dart';
import 'package:flutter_survey_js/ui/reactive/reactive_wrap_form_array.dart';
import 'package:flutter_survey_js/ui/survey_configuration.dart';
import 'package:flutter_survey_js/flutter_survey_js.dart' as s;
import 'package:reactive_forms/reactive_forms.dart';

Widget panelDynamicBuilder(BuildContext context, s.Elementbase element,
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
    final survey = s.SurveyWidgetState.of(context);
    final node = survey.rootNode.findByElement(element: element)!;

    return ReactiveWrapFormArray(
      wrapper:
          (BuildContext context, FormArray<Object?> formArray, Widget child) {
        final effectiveDecoration = const InputDecoration()
            .applyDefaults(Theme.of(context).inputDecorationTheme);

        return InputDecorator(
          decoration: effectiveDecoration.copyWith(
              errorText: getErrorTextFromFormControl(context, formArray)),
          child: child,
        );
      },
      formArray: node.control as FormArray,
      builder: (context, _, child) {
        bool needToFixValue = false;
        for (final c in (node.control as FormArray).controls) {
          if (c is! FormGroup) {
            needToFixValue = true;
          }
        }
        if (needToFixValue) {
          final values = node.value.tryCastToList() ?? [];
          node.dynamicArrayRemoveAll();
          for (final v in values) {
            node.dynamicArrayAddNew(context, value: v);
          }
        }

        final panelNodes = node.children;

        return Column(children: [
          ...List.generate(panelNodes.length, (index) {
            final panelNode = panelNodes[index];
            return Stack(
              key: ObjectKey(panelNode),
              alignment: Alignment.topRight,
              children: [
                //build
                Padding(
                  padding: const EdgeInsets.only(
                      top: 12.5, right: 12.5, left: 8, bottom: 8),
                  child: Container(
                      decoration: BoxDecoration(
                          border: Border.all(color: Colors.black26)),
                      child: ReactiveNestedForm(
                          formGroup: panelNode.control as FormGroup,
                          child: ListView.separated(
                            physics: const ClampingScrollPhysics(),
                            shrinkWrap: true,
                            itemCount: element.templateElements?.length ?? 0,
                            itemBuilder: (BuildContext context, int index) {
                              final res = SurveyConfiguration.of(context)!
                                  .factory
                                  .resolve(
                                      context, element.getElements()[index]);
                              return res;
                            },
                            separatorBuilder:
                                (BuildContext context, int index) {
                              return SurveyConfiguration.of(context)!
                                  .separatorBuilder(context);
                            },
                          ))),
                ),
                if (panelNodes.isNotEmpty)
                  InkWell(
                    onTap: () {
                      //remove this form
                      node.dynamicArrayRemoveNode(panelNode);
                    },
                    child: Container(
                      margin: const EdgeInsets.all(3),
                      decoration: BoxDecoration(
                        color: Colors.grey.withOpacity(.7),
                        shape: BoxShape.circle,
                      ),
                      alignment: Alignment.center,
                      height: 22,
                      width: 22,
                      child: const Icon(
                        Icons.close,
                        size: 18,
                        color: Colors.white,
                      ),
                    ),
                  ),
              ],
            );
          }),
          Padding(
            padding: const EdgeInsets.all(5),
            child: ElevatedButton(
              onPressed: () {
                node.dynamicArrayAddNew(context);
              },
              child: Text(S.of(context).add),
            ),
          )
        ]);
      },
    );
  }
}
