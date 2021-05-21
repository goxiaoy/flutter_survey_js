import 'package:flutter/material.dart';
import 'package:flutter_survey_js/generated/l10n.dart';
import 'package:flutter_survey_js/survey.dart' as s;
import 'package:flutter_survey_js/ui/form_control.dart';
import 'package:flutter_survey_js/ui/reactive/reactive_nested_form.dart';
import 'package:flutter_survey_js/ui/validators.dart';
import 'package:reactive_forms/reactive_forms.dart';

import 'matrix_dropdown_base.dart';
import 'question_title.dart';
import 'survey_element_factory.dart';

final SurveyElementBuilder matrixDynamicBuilder =
    (context, element, {bool hasTitle = true}) {
  return MatrixDynamicElement(
    formControlName: element.name!,
    matrix: element as s.MatrixDynamic,
  ).wrapQuestionTitle(element, hasTitle: hasTitle);
};

class MatrixDynamicElement extends StatelessWidget {
  final String formControlName;
  final s.MatrixDynamic matrix;

  const MatrixDynamicElement(
      {Key? key, required this.formControlName, required this.matrix})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    final createNew = () {
      //create new formGroup
      return elementsToFormGroup((matrix.columns ?? [])
          .map((column) => matrixDropdownColumnToQuestion(matrix, column))
          .toList());
    };

    return ReactiveFormArray(
      formArrayName: formControlName,
      builder: (context, formArray, child) {
        final controls = formArray.controls.cast<FormGroup>().toList();
        List<TableRow> _list = <TableRow>[];
        const actionSize = 70.0;
        final columnCount = (matrix.columns?.length ?? 0) + 1;

        /// Add title bar
        _list.add(TableRow(
            decoration: BoxDecoration(
              color: Colors.grey,
            ),
            children: [
              ...((matrix.columns ?? []).map((e) => TableCell(
                    child: MatrixDropdownTitle(e),
                  ))),
              TableCell(
                  child: SizedBox(
                width: actionSize,
              ))
            ]));
        controls.asMap().forEach((i, c) {
          _list.add(TableRow(
              decoration: i % 2 != 0
                  ? BoxDecoration(
                      color: Colors.grey,
                    )
                  : null,
              children: [
                ...(matrix.columns ?? []).map((column) {
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
                            return SurveyElementFactory()
                                .resolve(context, q, hasTitle: false);
                          },
                        ),
                      ));
                }).toList(),
                TableCell(
                  child: SizedBox(
                      width: actionSize,
                      child: Padding(
                        padding: EdgeInsets.all(5),
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
                columnWidths: {columnCount - 1: FixedColumnWidth(actionSize)},
                border: TableBorder.all(
                  width: 1.0,
                ),
                // columnWidths: map,
                children: _list,
              ),
              Padding(
                padding: EdgeInsets.all(5),
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
