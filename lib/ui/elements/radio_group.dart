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

  List<s.Itemvalue> get choices =>
      widget.element.choices?.map((p0) => p0.castToItemvalue()).toList() ?? [];

  bool isOtherValue(Object? value) {
    if (widget.element.showNoneItem ?? false) {
      return value != null &&
          ![...choices.map((element) => element.value?.value), noneValue]
              .any((v) => v == value);
    } else {
      return value != null &&
          !choices
              .map((element) => element.value?.value)
              .any((v) => v == value);
    }
  }

  late SelectbaseController selectbaseController;
  @override
  void initState() {
    super.initState();
    selectbaseController = SelectbaseController(element: widget.element);
    Future.microtask(() {
      final control = getCurrentControl();
      final value = control.value;
      if (selectbaseController.storeOtherAsComment) {
        selectbaseController.setShowOther(value == otherValue);
      }

      if (isOtherValue(value)) {
        //current value outside of choices
        selectbaseController.setOtherValue(value?.toString() ?? "");
        if (selectbaseController.storeOtherAsComment) {
          control.value = otherValue;
        }
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    var e = widget.element;

    final elementItems = <ReactiveGroupButtonItem>[
      ...choices
          .map(
            (e) => ReactiveGroupButtonItem(
              value: e.value?.value,
              title: e.text ?? e.value?.toString() ?? '',
            ),
          )
          .toList(growable: false),
      if (widget.element.showNoneItem == true)
        ReactiveGroupButtonItem(
          value: noneValue,
          title: e.noneText ?? S.of(context).noneItemText,
        ),
      if (widget.element.showOtherItem == true)
        ReactiveGroupButtonItem(
          value: selectbaseController.storeOtherAsComment
              ? otherValue
              : selectbaseController.otherValue,
          title: e.otherText ?? S.of(context).otherItemText,
        )
    ];
    return SelectbaseWidget(
        controller: selectbaseController,
        otherValueChanged: (value) {
          if (!selectbaseController.storeOtherAsComment) {
            getCurrentControl().value = value;
          } else {
            getCurrentControl().value = otherValue;
          }
        },
        child: ReactiveGroupButton(
            options: const GroupButtonOptions(spacing: 0, runSpacing: 0),
            isRadio: true,
            formControlName: e.name!,
            buttons: elementItems,
            onChanged: (control) {
              if (widget.element.showOtherItem ?? false) {
                if (selectbaseController.storeOtherAsComment) {
                  selectbaseController
                      .setShowOther(control.value == otherValue);
                } else {
                  selectbaseController
                      .setShowOther(isOtherValue(control.value));
                }
              } else {
                selectbaseController.setShowOther(false);
              }
              if (widget.element.showNoneItem ?? false) {
                if (control.value == noneValue) {
                  selectbaseController.setShowOther(false);
                }
              }
            }));
  }
}
