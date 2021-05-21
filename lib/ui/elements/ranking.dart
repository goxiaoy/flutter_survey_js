import 'package:flutter/material.dart';
import 'package:flutter_survey_js/survey.dart' as s;
import 'package:flutter_survey_js/ui/reactive/reactive_reorderable_list.dart';
import 'package:reactive_forms/reactive_forms.dart';

import 'question_title.dart';
import 'survey_element_factory.dart';

final SurveyElementBuilder rankingBuilder =
    (context, element, {bool hasTitle = true}) {
  return RankingElement(
    formControlName: element.name!,
    element: element as s.Ranking,
  ).wrapQuestionTitle(element, hasTitle: hasTitle);
};

class RankingElement extends StatelessWidget {
  final String formControlName;
  final s.Ranking element;
  const RankingElement(
      {Key? key, required this.formControlName, required this.element})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    final choices = element.choices ?? [];
    final accessor = ItemValueAccessor(choices);

    return ReactiveReorderableList<dynamic, s.ItemValue>(
      formControlName: formControlName,
      valueAccessor: accessor,
      itemBuilder: (item) {
        return Text(item.text ?? item.value?.toString() ?? '');
      },
    );
  }
}

class ItemValueAccessor
    extends ControlValueAccessor<List<dynamic>, List<s.ItemValue>> {
  final List<s.ItemValue> choices;

  ItemValueAccessor(this.choices);

  @override
  List<s.ItemValue>? modelToViewValue(List<dynamic>? modelValue) {
    if (modelValue == null) {
      return choices;
    }
    final copied = List<s.ItemValue>.from(choices);
    for (int i = modelValue.length - 1; i >= 0; i--) {
      final index = copied.indexWhere((c) => c.value == modelValue[i]);
      if (index != -1) {
        //move to head
        final r = copied.removeAt(index);
        copied.insert(0, r);
      }
    }
    return copied;
  }

  @override
  List<dynamic>? viewToModelValue(List<s.ItemValue>? viewValue) {
    return viewValue == null ? null : viewValue.map((p) => p.value).toList();
  }
}
