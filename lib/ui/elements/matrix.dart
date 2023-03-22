import 'package:flutter/material.dart';
import 'package:flutter_survey_js/survey.dart' as s;
import 'package:flutter_survey_js/ui/reactive/reactive_nested_form.dart';
import 'package:reactive_forms/reactive_forms.dart';

import 'question_title.dart';
import 'survey_element_factory.dart';

final SurveyElementBuilder matrixBuilder =
    (context, element, {bool hasTitle = true}) {
  return MatrixElement(
    formControlName: element.name!,
    matrix: element as s.Matrix,
  ).wrapQuestionTitle(element, hasTitle: hasTitle);
};

class MatrixElement extends StatelessWidget {
  final String formControlName;
  final s.Matrix matrix;

  const MatrixElement(
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
                    child: _MatrixTitle(e),
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
                //Row name
                TableCell(
                  verticalAlignment: TableCellVerticalAlignment.middle,
                  child: Text(
                    row.text ?? '',
                    style: Theme.of(context).textTheme.bodyText2,
                  ),
                ),
                ...(matrix.columns ?? []).map((column) {
                  // matrix use the same row control
                  return TableCell(
                    verticalAlignment: TableCellVerticalAlignment.middle,
                    child: ReactiveRadioListTile(
                        formControlName: row.value.toString(),
                        value: column.value),
                  );
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

// Class _MatrixTitle
class _MatrixTitle extends StatelessWidget {
  final s.ItemValue column;

  _MatrixTitle(this.column);

  @override
  Widget build(BuildContext context) {
    return new Text(
      column.text ?? column.value?.toString() ?? "",
      softWrap: true,
      style: Theme.of(context).textTheme.bodyText2,
    );
  }
}
