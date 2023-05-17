import 'package:flutter/material.dart';
import 'package:flutter_survey_js/ui/survey_configuration.dart';
import 'package:flutter_survey_js_model/flutter_survey_js_model.dart' as s;
import 'package:reactive_forms/reactive_forms.dart';
import 'package:reactive_segmented_control/reactive_segmented_control.dart';

Widget ratingBuilder(context, element, {ElementConfiguration? configuration}) {
  final e = element as s.Rating;

  final textStyle = Theme.of(context)
      .textTheme
      .bodyMedium
      ?.copyWith(color: Theme.of(context).primaryColor);

  Map<int, Widget> getChildren({required int? selectedValue}) {
    final children = <int, Widget>{};
    if (e.rateValues != null && e.rateValues!.isNotEmpty) {
      for (final v in e.rateValues!) {
        children[v.castToItemvalue().value.tryCastToInt()!] = Text(
          v.castToItemvalue().text ??
              v.castToItemvalue().value?.toString() ??
              '',
          style: textStyle,
        );
      }
    } else {
      //use max, min, step
      final maxValue = e.rateMax ?? 5;
      final min = e.rateMin ?? 1;
      final step = e.rateStep ?? 1;
      var current = min;
      while (current <= maxValue) {
        children[current.toInt()] = Text(
          current.toString(),
          style: selectedValue == current
              ? textStyle?.copyWith(color: Colors.white)
              : textStyle,
        );
        current += step;
      }
    }
    return children;
  }

  return ReactiveValueListenableBuilder<int?>(
    formControlName: element.name!,
    builder: (context, control, child) {
      return ReactiveSegmentedControl<int, int>(
        formControlName: element.name!,
        children: getChildren(selectedValue: control.value),
      ).wrapQuestionTitle(context, element, configuration: configuration);
    },
  );
}
