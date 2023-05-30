import 'package:flutter/material.dart';
import 'package:flutter_survey_js/ui/elements/selectbase.dart';
import 'package:flutter_survey_js/ui/reactive/reactive_reorderable_list.dart';
import 'package:flutter_survey_js/ui/survey_configuration.dart';
import 'package:flutter_survey_js_model/flutter_survey_js_model.dart' as s;
import 'package:reactive_forms/reactive_forms.dart';

Widget rankingBuilder(BuildContext context, s.Elementbase element,
    {ElementConfiguration? configuration}) {
  return RankingWidget(
    element: element as s.Ranking,
  ).wrapQuestionTitle(context, element, configuration: configuration);
}

class RankingWidget extends StatefulWidget {
  final s.Ranking element;

  const RankingWidget({Key? key, required this.element}) : super(key: key);
  @override
  State<StatefulWidget> createState() => RankingWidgetState();
}

class RankingWidgetState extends State<RankingWidget> {
  late SelectbaseController selectbaseController;

  @override
  void initState() {
    super.initState();
    selectbaseController = SelectbaseController(element: widget.element);
  }

  @override
  Widget build(BuildContext context) {
    return SelectbaseWidget(
        controller: selectbaseController,
        child: RankingElement(
          formControlName: widget.element.name!,
          element: widget.element,
        ));
  }
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
        return Text(item.text ?? item.value?.toString() ?? '');
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
