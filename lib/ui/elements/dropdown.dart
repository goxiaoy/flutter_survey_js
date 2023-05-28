import 'package:flutter/material.dart';
import 'package:flutter_survey_js/ui/elements/selectbase.dart';
import 'package:flutter_survey_js/ui/survey_configuration.dart';
import 'package:flutter_survey_js_model/flutter_survey_js_model.dart' as s;
import 'package:reactive_forms/reactive_forms.dart';

import '../../generated/l10n.dart';

Widget dropdownBuilder(BuildContext context, s.Elementbase element,
    {ElementConfiguration? configuration}) {
  final e = (element as s.Dropdown);

  return _DropdownWidgetWithOtherOption(
    dropdown: e,
  ).wrapQuestionTitle(context, e, configuration: configuration);
}

class _DropdownWidgetWithOtherOption<T> extends StatefulWidget {
  const _DropdownWidgetWithOtherOption({
    Key? key,
    required this.dropdown,
  }) : super(key: key);

  final s.Dropdown dropdown;

  @override
  State<_DropdownWidgetWithOtherOption> createState() =>
      _DropdownWidgetWithOtherOptionState();
}

class _DropdownWidgetWithOtherOptionState
    extends State<_DropdownWidgetWithOtherOption> {
  AbstractControl getCurrentControl() {
    return ((ReactiveForm.of(context, listen: false) as FormControlCollection)
        .control(widget.dropdown.name!));
  }

  late SelectbaseController selectbaseController;
  @override
  void initState() {
    super.initState();
    selectbaseController = SelectbaseController(element: widget.dropdown);
    Future.microtask(() {
      final control = getCurrentControl();
      final value = control.value;
      selectbaseController.setShowOther(value == otherValue);
      if (!(widget.dropdown.choices
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
    var e = widget.dropdown;

    final dropdownItems = <DropdownMenuItem<dynamic>>[
      ...e.choices
              ?.map(
                (e) => DropdownMenuItem(
                  value: e.castToItemvalue().value?.value,
                  child: Text(
                    e.castToItemvalue().text ??
                        e.castToItemvalue().value?.toString() ??
                        '',
                    style: Theme.of(context).textTheme.bodyMedium,
                  ),
                ),
              )
              .toList(growable: false) ??
          [],
      if (widget.dropdown.showNoneItem == true)
        DropdownMenuItem(
            value: 'none',
            child: Text(
              e.noneText ?? S.of(context).noneItemText,
              style: Theme.of(context).textTheme.bodyMedium,
            )),
      if (widget.dropdown.showOtherItem == true)
        DropdownMenuItem(
            value: 'other',
            child: Text(
              e.otherText ?? S.of(context).otherItemText,
              style: Theme.of(context).textTheme.bodyMedium,
            )),
    ];
    return SelectbaseWidget(
      controller: selectbaseController,
      child: ReactiveDropdownField<dynamic>(
          formControlName: e.name!,
          hint: Text(e.placeholder ?? S.of(context).placeholder),
          onChanged: (control) {
            if ((e.showOtherItem ?? false) && control.value == otherValue) {
              selectbaseController.setShowOther(true);
            } else {
              selectbaseController.setShowOther(false);
            }
          },
          items: dropdownItems),
    );
  }
}
