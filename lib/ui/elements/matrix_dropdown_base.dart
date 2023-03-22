import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter_survey_js/survey.dart' as s;

mixin MatrixDropdownMixin {
  late final String formControlName;
  late final s.MatrixDropdownBase matrix;
}

// Class _MatrixTitle
class MatrixDropdownTitle extends StatelessWidget {
  final s.MatrixDropdownColumn column;

  MatrixDropdownTitle(this.column);

  @override
  Widget build(BuildContext context) {
    return new Text(
      column.title ?? column.name?.toString() ?? '',
      softWrap: true,
      style: Theme.of(context).textTheme.bodyText2,
    );
  }
}

s.Question matrixDropdownColumnToQuestion(
    s.MatrixDropdownBase dropdown, s.MatrixDropdownColumn column) {
  final encoded = column.toJson();
  encoded['choices'] = dropdown.choices;
  final j = json.decode(json.encode(encoded));
  s.Question? res;
  //"dropdown","checkbox","radiogroup","text","comment","boolean","expression",  "rating"
  switch (column.cellType) {
    case s.CheckBox.$type:
      res = s.CheckBox.fromJson(j);
      break;
    case s.RadioGroup.$type:
      res = s.RadioGroup.fromJson(j);
      break;
    case s.Text.$type:
      res = s.Text.fromJson(j);
      break;
    case s.Comment.$type:
      res = s.Comment.fromJson(j);
      break;
    case s.Boolean.$type:
      res = s.Boolean.fromJson(j);
      break;
    case s.Expression.$type:
      res = s.Expression.fromJson(j);
      break;
    case s.Rating.$type:
      res = s.Rating.fromJson(j);
      break;
    case s.Dropdown.$type:
    default:
      res = s.Dropdown.fromJson(j);
  }
  return res;
}
