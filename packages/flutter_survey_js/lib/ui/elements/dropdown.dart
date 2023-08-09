import 'package:flutter/material.dart';
import 'package:flutter_survey_js/ui/elements/selectbase.dart';
import 'package:flutter_survey_js/ui/survey_configuration.dart';
import 'package:flutter_survey_js_model/flutter_survey_js_model.dart' as s;
import 'package:reactive_forms/reactive_forms.dart';
import 'package:flutter_survey_js/utils.dart';
import '../../generated/l10n.dart';

Widget dropdownBuilder(BuildContext context, s.Elementbase element,
    {ElementConfiguration? configuration}) {
  final e = (element as s.Dropdown);

  return _DropdownWidget(
    dropdown: e,
  ).wrapQuestionTitle(context, e, configuration: configuration);
}

class _DropdownWidget<T> extends StatefulWidget {
  const _DropdownWidget({
    Key? key,
    required this.dropdown,
  }) : super(key: key);

  final s.Dropdown dropdown;

  @override
  State<_DropdownWidget> createState() => _DropdownWidgetState();
}

class _DropdownWidgetState extends State<_DropdownWidget> {
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

  List<s.Itemvalue> get choices =>
      widget.dropdown.choices?.map((p0) => p0.castToItemvalue()).toList() ?? [];

  bool isOtherValue(Object? value) {
    if (widget.dropdown.showNoneItem ?? false) {
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

  @override
  Widget build(BuildContext context) {
    var e = widget.dropdown;

    final dropdownItems = <DropdownMenuItem<dynamic>>[
      ...choices
          .map(
            (e) => DropdownMenuItem(
              value: e.value?.value,
              child: Text(
                e.text?.getLocalizedText(context) ?? e.value?.toString() ?? '',
                style: Theme.of(context).textTheme.bodyMedium,
              ),
            ),
          )
          .toList(growable: false),
      if (widget.dropdown.showNoneItem == true)
        DropdownMenuItem(
            value: noneValue,
            child: Text(
              e.noneText?.getLocalizedText(context) ?? S.of(context).noneItemText,
              style: Theme.of(context).textTheme.bodyMedium,
            )),
      if (widget.dropdown.showOtherItem == true)
        DropdownMenuItem(
            value: selectbaseController.storeOtherAsComment
                ? otherValue
                : selectbaseController.otherValue,
            child: Text(
              e.otherText?.getLocalizedText(context) ?? S.of(context).otherItemText,
              style: Theme.of(context).textTheme.bodyMedium,
            )),
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
      child: ReactiveDropdownField<dynamic>(
          formControlName: e.name!,
          hint: Text(e.placeholder?.getLocalizedText(context) ?? S.of(context).placeholder),
          onChanged: (control) {
            if (widget.dropdown.showOtherItem ?? false) {
              if (selectbaseController.storeOtherAsComment) {
                selectbaseController.setShowOther(control.value == otherValue);
              } else {
                selectbaseController.setShowOther(isOtherValue(control.value));
              }
            } else {
              selectbaseController.setShowOther(false);
            }
            if (widget.dropdown.showNoneItem ?? false) {
              if (control.value == noneValue) {
                selectbaseController.setShowOther(false);
              }
            }
          },
          items: dropdownItems),
    );
  }
}
