import 'package:flutter/material.dart';

import 'package:flutter_survey_js/generated/l10n.dart';
import 'package:flutter_survey_js/ui/custom_scroll_behavior.dart';
import 'package:flutter_survey_js/ui/reactive/reactive_wrap_form_array.dart';
import 'package:flutter_survey_js/flutter_survey_js.dart' as s;
import 'package:flutter_survey_js/ui/form_control.dart';
import 'package:flutter_survey_js/ui/reactive/reactive_nested_form.dart';
import 'package:flutter_survey_js/ui/survey_configuration.dart';
import 'package:reactive_forms/reactive_forms.dart';

import 'matrix_dropdown_base.dart';

Widget matrixDynamicBuilder(BuildContext context, s.Elementbase element,
    {ElementConfiguration? configuration}) {
  return MatrixDynamicElement(
    formControlName: element.name!,
    matrix: element as s.Matrixdynamic,
  ).wrapQuestionTitle(context, element, configuration: configuration);
}

class MatrixDynamicElement extends StatelessWidget {
  final String formControlName;
  final s.Matrixdynamic matrix;
  final scrollController = ScrollController();
  MatrixDynamicElement(
      {Key? key, required this.formControlName, required this.matrix})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    final survey = s.SurveyWidgetState.of(context);
    final node = survey.rootNode.findByElement(element: matrix)!;

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
        List<TableRow> list = <TableRow>[];

        /// Add title bar
        list.add(TableRow(
            decoration: const BoxDecoration(
              //color: Colors.grey,
              color: Color(0xFFDFDFDF),
            ),
            children: [
              ...((matrix.columns?.toList() ?? []).map((e) => TableCell(
                    child: MatrixDropdownTitle(e),
                  ))),
              const TableCell(child: SizedBox())
            ]));
        node.children.asMap().forEach((i, rowNode) {
          list.add(TableRow(
              decoration: i % 2 != 0
                  ? const BoxDecoration(
                      //color: Colors.grey,
                      color: Color(0xFFF4F4F4),
                    )
                  : null,
              children: [
                ...rowNode.children
                    .where((e) => e.element != null)
                    .map((columnNode) {
                  return TableCell(
                      verticalAlignment: TableCellVerticalAlignment.middle,
                      child: ReactiveNestedForm(
                        formGroup: rowNode.control as FormGroup,
                        child: Builder(
                          builder: (context) {
                            return SurveyConfiguration.of(context)!
                                .factory
                                .resolve(
                                    context, columnNode.element!,
                                    configuration: const ElementConfiguration(
                                        hasTitle: false));
                          },
                        ),
                      ));
                }).toList(),
                TableCell(
                  child: SizedBox(
                      child: Padding(
                    padding: const EdgeInsets.all(5),
                    child: ElevatedButton(
                      onPressed: () {
                        node.dynamicArrayRemoveNode(rowNode);
                      },
                      child: Text(S.of(context).remove),
                    ),
                  )),
                )
              ]));
        });

        final screenWidth = MediaQuery.of(context).size.width;
        final colLength = (matrix.columns?.toList() ?? []).length;
        final colFixedWidth = (screenWidth - 32) /
            ((colLength > 3) ? 3 : colLength); // Max 3 columns in the screen
        return LayoutBuilder(
            builder: (BuildContext context, BoxConstraints constraints) {
          return Column(
            children: [
              ScrollConfiguration(
                  behavior: CustomScrollBehavior(),
                  child: Scrollbar(
                      controller: scrollController,
                      child: SingleChildScrollView(
                          controller: scrollController,
                          scrollDirection: Axis.horizontal,
                          child: Table(
                            defaultColumnWidth: FixedColumnWidth(
                                colFixedWidth), //const IntrinsicColumnWidth(),
                            border: TableBorder.all(
                              width: 1.0,
                              color: Colors.grey,
                            ),
                            // columnWidths: map,
                            children: list,
                          )))),
              Padding(
                padding: const EdgeInsets.all(5),
                child: ElevatedButton(
                  onPressed: () {
                    node.dynamicArrayAddNew(context);
                  },
                  child: Text(S.of(context).add),
                ),
              )
            ],
          );
        });
      },
    );
  }
}
