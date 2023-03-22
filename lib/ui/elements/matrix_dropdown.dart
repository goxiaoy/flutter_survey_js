import 'package:flutter/material.dart';
import 'package:flutter_survey_js/survey.dart' as s;
import 'package:flutter_survey_js/ui/reactive/reactive_nested_form.dart';
import 'package:flutter_survey_js/ui/validators.dart';
import 'package:reactive_forms/reactive_forms.dart';

import 'matrix_dropdown_base.dart';
import 'question_title.dart';
import 'survey_element_factory.dart';

final SurveyElementBuilder matrixDropdownBuilder =
    (context, element, {bool hasTitle = true}) {
  return MatrixDropdownElement(
    formControlName: element.name!,
    matrix: element as s.MatrixDropdown,
  ).wrapQuestionTitle(element, hasTitle: hasTitle);
};

class MatrixDropdownElement extends StatelessWidget {
  final String formControlName;
  final s.MatrixDropdown matrix;

  const MatrixDropdownElement(
      {Key? key, required this.formControlName, required this.matrix})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ReactiveNestedForm(
      formControlName: formControlName,
      child: LayoutBuilder(
          builder: (BuildContext context, BoxConstraints constraints) {
        List<TableRow> _list = <TableRow>[];

        /// Add title bar
        _list.add(TableRow(
            decoration: BoxDecoration(
              color: Colors.grey,
            ),
            children: [
              TableCell(child: Text('')),
              ...((matrix.columns ?? []).map((e) => TableCell(
                    child: MatrixDropdownTitle(e),
                  )))
            ]));
        (matrix.rows ?? []).asMap().forEach((i, row) {
          _list.add(TableRow(
              decoration: i % 2 != 0
                  ? BoxDecoration(
                      color: Colors.grey,
                    )
                  : null,
              children: [
                //Row namef
                TableCell(
                  verticalAlignment: TableCellVerticalAlignment.middle,
                  child: Text(
                    row.text ?? '',
                    style: Theme.of(context).textTheme.bodyText2,
                  ),
                ),
                ...(matrix.columns ?? []).map((column) {
                  final q = matrixDropdownColumnToQuestion(matrix, column);
                  final v = questionToValidators(q);

                  return TableCell(
                      verticalAlignment: TableCellVerticalAlignment.middle,
                      child: ReactiveNestedForm(
                        formControlName: row.value!.toString(),
                        child: Builder(
                          builder: (context) {
                            final fg = ReactiveForm.of(context) as FormGroup;
                            final c = fg.control(column.name!);
                            //TODO runner
                            // //concat validators
                            // final newV = HashSet<ValidatorFunction>.of(
                            //     [...c.validators, ...v]).toList();
                            c.setValidators(v);
                            return SurveyElementFactory()
                                .resolve(context, q, hasTitle: false);
                          },
                        ),
                      ));
                }).toList()
              ]));
        });

        return Table(
          border: TableBorder.all(
            width: 1.0,
          ),
          // columnWidths: map,
          children: _list,
        );
      }),
    );
  }
}
