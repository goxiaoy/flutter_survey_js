import 'package:flutter/material.dart';
import 'package:flutter_survey_js/flutter_survey_js.dart' as s;
import 'package:flutter_survey_js/ui/custom_scroll_behavior.dart';
import 'package:flutter_survey_js/ui/reactive/reactive_nested_form.dart';
import 'package:flutter_survey_js/ui/survey_configuration.dart';
import 'package:flutter_survey_js/ui/survey_widget.dart';

import 'package:reactive_forms/reactive_forms.dart';

import 'matrix_dropdown_base.dart';

Widget matrixDropdownBuilder(BuildContext context, s.Elementbase element,
    {ElementConfiguration? configuration}) {
  return MatrixDropdownElement(
    formControlName: element.name!,
    matrix: element as s.Matrixdropdown,
  ).wrapQuestionTitle(context, element, configuration: configuration);
}

class MatrixDropdownElement extends StatelessWidget {
  final String formControlName;
  final s.Matrixdropdown matrix;

  final scrollController = ScrollController();
  MatrixDropdownElement(
      {Key? key, required this.formControlName, required this.matrix})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    final node =
        SurveyWidgetState.of(context).rootNode.findByElement(element: matrix)!;
    return ReactiveNestedForm(
      formControlName: formControlName,
      child: LayoutBuilder(
          builder: (BuildContext context, BoxConstraints constraints) {
        List<TableRow> list = <TableRow>[];

        /// Add title bar
        list.add(TableRow(
            decoration: const BoxDecoration(
              //color: Colors.grey,
              color: Color(0xFFDFDFDF),
            ),
            children: [
              const TableCell(child: Text('')),
              ...((matrix.columns?.toList() ?? []).map((e) => TableCell(
                    child: MatrixDropdownTitle(e),
                  )))
            ]));
        node.children.toList().asMap().forEach((i, rowNode) {
          list.add(TableRow(
              decoration: i % 2 != 0
                  ? const BoxDecoration(
                      //color: Colors.grey,
                      color: Color(0xFFF4F4F4),
                    )
                  : null,
              children: [
                //Row name
                TableCell(
                    verticalAlignment: TableCellVerticalAlignment.middle,
                    child: Container(
                      padding: const EdgeInsets.all(5),
                      child: Text((rowNode.rawElement as s.Itemvalue)
                              .text
                              ?.getLocalizedText(context) ??
                          ""),
                    )),
                ...rowNode.children.where((e) => e.element!=null).map((columnNode) {
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
                })
              ]));
        });

        final screenWidth = MediaQuery.of(context).size.width;
        final colLength = (matrix.columns?.toList() ?? []).length;
        final colFixedWidth = (screenWidth - 27) /
            ((colLength > 3)
                ? 3
                : colLength + 1); // Max 3 columns in the screen
        return ScrollConfiguration(
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
                    ))));
      }),
    );
  }
}
