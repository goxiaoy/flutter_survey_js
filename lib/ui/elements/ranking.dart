import 'package:flutter/material.dart';
import 'package:flutter_survey_js/ui/reactive/reactive_reorderable_list.dart';
import 'package:flutter_survey_js_model/flutter_survey_js_model.dart' as s;
import 'package:reactive_forms/reactive_forms.dart';

import 'question_title.dart';

Widget rankingBuilder(context, element, {bool hasTitle = true}) {
  return RankingElement(
    formControlName: element.name!,
    element: element as s.Ranking,
  ).wrapQuestionTitle(element, hasTitle: hasTitle);
}

class RankingElement extends StatelessWidget {
  final String formControlName;
  final s.Ranking element;

  const RankingElement(
      {Key? key, required this.formControlName, required this.element})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    final choices =
        element.choices?.map((p0) => p0.castToItemvalue()).toList() ?? [];
    final accessor = ItemValueAccessor(choices);

    return ReactiveReorderableList<dynamic, s.Itemvalue>(
      formControlName: formControlName,
      valueAccessor: accessor,
      itemBuilder: (item) {
        final String text = item.text ?? item.value?.toString() ?? '';
        return Text(
          text,
          key: Key('$text-key'),
          style: Theme.of(context).textTheme.bodyText2,
        );
      },
    );
  }
}

class ItemValueAccessor
    extends ControlValueAccessor<List<dynamic>, List<s.Itemvalue>> {
  final List<s.Itemvalue> choices;

  ItemValueAccessor(this.choices);

  @override
  List<s.Itemvalue>? modelToViewValue(List<dynamic>? modelValue) {
    if (modelValue == null) {
      return choices;
    }
    final copied = List<s.Itemvalue>.from(choices);
    for (int i = modelValue.length - 1; i >= 0; i--) {
      final index = copied.indexWhere((c) => c.value?.value == modelValue[i]);
      if (index != -1) {
        //move to head
        final r = copied.removeAt(index);
        copied.insert(0, r);
      }
    }
    return copied;
  }

  @override
  List<dynamic>? viewToModelValue(List<s.Itemvalue>? viewValue) {
    return viewValue?.map((p) => p.value?.value).toList();
  }
}
