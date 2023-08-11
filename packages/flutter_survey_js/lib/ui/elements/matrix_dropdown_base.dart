import 'package:built_collection/built_collection.dart';
import 'package:built_value/serializer.dart';
import 'package:flutter/material.dart';
import 'package:flutter_survey_js_model/flutter_survey_js_model.dart' as s;
import 'package:flutter_survey_js_model/utils.dart';
import 'package:flutter_survey_js/utils.dart';

mixin MatrixDropdownMixin {
  late final String formControlName;
  late final s.Matrixdropdownbase matrix;
}

// Class _MatrixTitle
class MatrixDropdownTitle extends StatelessWidget {
  final s.Matrixdropdowncolumn column;

  const MatrixDropdownTitle(this.column, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(5),
      child: Text(
          column.title?.getLocalizedText(context) ??
              column.name?.toString() ??
              "",
          softWrap: true,
          style: Theme.of(context).textTheme.titleMedium),
    );
  }
}

s.Question matrixDropdownColumnToQuestion(
    s.Matrixdropdownbase dropdown, s.Matrixdropdowncolumn column) {
  final encoded = s.surveySerializers
      .serializeWith(s.Matrixdropdowncolumn.serializer, column);
  final json = encoded as Map<String, Object?>;
  json["type"] = column.cellType?.toString() ?? "dropdown";
  if (!json.containsKey('choices')) {
    json['choices'] = s.surveySerializers.serialize(dropdown.choices,
        specifiedType: const FullType(
          BuiltList,
          [FullType(s.MatrixdropdownbaseAllOfChoicesInner)],
        ));
  }

  s.Question? res = s.surveySerializers
      .deserializeWith<s.SurveyQuestionsInner>(
          s.SurveyQuestionsInner.serializer, encoded)
      ?.realElement as s.Question?;

  return res!;
}
