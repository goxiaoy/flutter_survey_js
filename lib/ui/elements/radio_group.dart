import 'package:flutter/material.dart';
import 'package:flutter_survey_js/ui/elements/selectbase.dart';
import 'package:flutter_survey_js/ui/survey_configuration.dart';
import 'package:flutter_survey_js_model/flutter_survey_js_model.dart' as s;
import 'package:flutter_survey_js/ui/reactive/reactive_group_button.dart';
import 'package:group_button/group_button.dart';
import 'package:reactive_forms/reactive_forms.dart';

import '../../generated/l10n.dart';

Widget radioGroupBuilder(BuildContext context, s.Elementbase element,
    {ElementConfiguration? configuration}) {
  final e = element as s.Radiogroup;
  return _RadioGroupWidget(
    element: e,
  ).wrapQuestionTitle(context, element, configuration: configuration);
}

class _RadioGroupWidget<T> extends StatefulWidget {
  const _RadioGroupWidget({
    Key? key,
    required this.element,
  }) : super(key: key);

  final s.Radiogroup element;

  @override
  State<_RadioGroupWidget> createState() => _RadioGroupWidgetState();
}

class _RadioGroupWidgetState extends State<_RadioGroupWidget> {
  AbstractControl getCurrentControl() {
    return ((ReactiveForm.of(context, listen: false) as FormControlCollection)
        .control(widget.element.name!));
  }

  late SelectbaseController selectbaseController;
  @override
  void initState() {
    super.initState();
    selectbaseController = SelectbaseController(element: widget.element);
    Future.microtask(() {
      final control = getCurrentControl();
      final value = control.value;
      selectbaseController.setShowOther(value == otherValue);
      if (value != null &&
          !(widget.element.choices
                      ?.map((e) => e.castToItemvalue().value?.value) ??
                  [])
              .contains(value)) {
        //current value outside of choices
        selectbaseController.setOtherValue(value?.toString() ?? "");
        control.value = otherValue;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    var e = widget.element;

    final elementItems = <ReactiveGroupButtonItem>[
      ...e.choices
              ?.map(
                (e) => ReactiveGroupButtonItem(
                  value: e.castToItemvalue().value?.value,
                  title: e.castToItemvalue().text ??
                      e.castToItemvalue().value?.toString() ??
                      '',
                ),
              )
              .toList(growable: false) ??
          [],
      if (widget.element.showNoneItem == true)
        ReactiveGroupButtonItem(
          value: 'none',
          title: e.noneText ?? S.of(context).noneItemText,
        ),
      if (widget.element.showOtherItem == true)
        ReactiveGroupButtonItem(
          value: 'other',
          title: e.otherText ?? S.of(context).otherItemText,
        )
    ];
    return SelectbaseWidget(
        controller: selectbaseController,
        child: ReactiveGroupButton(
            options: const GroupButtonOptions(spacing: 0, runSpacing: 0),
            isRadio: true,
            formControlName: e.name!,
            buttons: elementItems,
            onChanged: (control) {
              if ((e.showOtherItem ?? false) && control.value == otherValue) {
                selectbaseController.setShowOther(true);
              } else {
                selectbaseController.setShowOther(false);
              }
            }));
  }
}
