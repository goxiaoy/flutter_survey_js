import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_survey_js/survey.dart' as s;
import 'package:reactive_segmented_control/reactive_segmented_control.dart';

import 'question_title.dart';
import 'survey_element_factory.dart';

final SurveyElementBuilder ratingBuilder =
    (context, element, {bool hasTitle = true}) {
  final e = element as s.Rating;

  final children = <Object, Widget>{};
  if (e.rateValues != null && e.rateValues!.length > 0) {
    for (final v in e.rateValues!) {
      children[v.value] = Text(v.text ?? v.value?.toString() ?? '');
    }
  } else {
    //use max, min,step
    final maxValue = e.rateMax ?? 5;
    final min = e.rateMin ?? 1;
    final step = e.rateStep ?? 1;
    var current = min;
    while (current <= maxValue) {
      children[current] = Text(current.toString());
      current += step;
    }
  }
  return ReactiveSegmentedControl(
    formControlName: element.name!,
    children: children,
  ).wrapQuestionTitle(element, hasTitle: hasTitle);
};
