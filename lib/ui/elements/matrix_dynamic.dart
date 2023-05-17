import 'package:flutter/material.dart';
import 'package:flutter_survey_js/generated/l10n.dart';
import 'package:flutter_survey_js/ui/survey_configuration.dart';
import 'package:flutter_survey_js_model/flutter_survey_js_model.dart' as s;
import 'package:flutter_survey_js/ui/form_control.dart';
import 'package:flutter_survey_js/ui/reactive/reactive_nested_form.dart';
import 'package:flutter_survey_js/ui/validators.dart';
import 'package:reactive_forms/reactive_forms.dart';

import 'matrix_dropdown_base.dart';

Widget matrixDynamicBuilder(context, element,
    {ElementConfiguration? configuration}) {
  return MatrixDynamicElement(
    formControlName: element.name!,
    matrix: element as s.Matrixdynamic,
  ).wrapQuestionTitle(context, element, configuration: configuration);
}

class MatrixDynamicElement extends StatelessWidget {
  final String formControlName;
  final s.Matrixdynamic matrix;

  const MatrixDynamicElement(
      {Key? key, required this.formControlName, required this.matrix})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    createNew() {
      //create new formGroup
      return elementsToFormGroup(
          context,
          (matrix.columns?.toList() ?? [])
              .map((column) => matrixDropdownColumnToQuestion(matrix, column))
              .toList());
    }

    return ReactiveFormArray(
      formArrayName: formControlName,
      builder: (context, formArray, child) {
        final controls = formArray.controls.cast<FormGroup>().toList();
        List<TableRow> list = <TableRow>[];
        const actionSize = 70.0;
        final columnCount = (matrix.columns?.length ?? 0) + 1;

        /// Add title bar
        list.add(TableRow(
            decoration: const BoxDecoration(
              color: Colors.grey,
            ),
            children: [
              ...((matrix.columns?.toList() ?? []).map((e) => TableCell(
                    child: MatrixDropdownTitle(e),
                  ))),
              const TableCell(
                  child: SizedBox(
                width: actionSize,
              ))
            ]));
        controls.asMap().forEach((i, c) {
          list.add(TableRow(
              decoration: i % 2 != 0
                  ? const BoxDecoration(
                      color: Colors.grey,
                    )
                  : null,
              children: [
                ...(matrix.columns?.toList() ?? []).map((column) {
                  final q = matrixDropdownColumnToQuestion(matrix, column);
                  final v = questionToValidators(q);

                  return TableCell(
                      verticalAlignment: TableCellVerticalAlignment.middle,
                      child: ReactiveNestedForm(
                        formGroup: c,
                        child: Builder(
                          builder: (context) {
                            final fg = ReactiveForm.of(context) as FormGroup;
                            final c = fg.control(column.name!);
                            //concat validators
                            // final newV = HashSet<ValidatorFunction>.of(
                            //     [...c.validators, ...v]).toList();
                            //TODO runner
                            c.setValidators(v);
                            return SurveyConfiguration.of(context)!
                                .factory
                                .resolve(
                                    context, q,
                                    configuration: const ElementConfiguration(
                                        hasTitle: false));
                          },
                        ),
                      ));
                }).toList(),
                TableCell(
                  child: SizedBox(
                      width: actionSize,
                      child: Padding(
                        padding: const EdgeInsets.all(5),
                        child: ElevatedButton(
                          onPressed: () {
                            formArray.remove(c);
                          },
                          child: Text(S.of(context).remove),
                        ),
                      )),
                )
              ]));
        });

        return LayoutBuilder(
            builder: (BuildContext context, BoxConstraints constraints) {
          return Column(
            children: [
              Table(
                columnWidths: {
                  columnCount - 1: const FixedColumnWidth(actionSize)
                },
                border: TableBorder.all(
                  width: 1.0,
                ),
                // columnWidths: map,
                children: list,
              ),
              Padding(
                padding: const EdgeInsets.all(5),
                child: ElevatedButton(
                  onPressed: () {
                    formArray.add(createNew());
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
