import 'package:flutter/material.dart';
import 'package:flutter_survey_js/survey.dart' as s;
import 'package:reactive_forms/reactive_forms.dart';

import '../../generated/l10n.dart';
import 'question_title.dart';

Widget dropdownBuilder(context, element, {bool hasTitle = true}) {
  final e = (element as s.Dropdown);

  return _DropdownWidgetWithOtherOption(
    dropdown: e,
  );
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
  bool showOtherTextField = false;
  var textEditingController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    var e = widget.dropdown;

    final dropdownItems = <DropdownMenuItem<String>>[
      ...e.choices
              ?.map(
                (e) => DropdownMenuItem<String>(
                  value: e.value,
                  child: Text(
                    e.text ?? e.value?.toString() ?? '',
                    style: Theme.of(context).textTheme.bodyMedium,
                  ),
                ),
              )
              .toList(growable: false) ??
          [],
      if (e.showNoneItem == true)
        DropdownMenuItem(
            value: 'none',
            child: Text(
              'None',
              style: Theme.of(context).textTheme.bodyMedium,
            )),
      if (e.showOtherItem == true)
        DropdownMenuItem(
            value: 'other',
            child: Text(
              'Other (describe)',
              style: Theme.of(context).textTheme.bodyMedium,
            )),
    ];

    return Column(
      children: [
        if (showOtherTextField)
          _NonReactiveDropdownField(
            formControlName: e.name!,
            items: dropdownItems,
            dropdown: widget.dropdown,
            onChanged: (control) {
              setState(() {
                if (control.value != 'other') {
                  showOtherTextField = false;
                }
              });
            },
          ),
        if (!showOtherTextField)
          ReactiveDropdownField(
              formControlName: e.name!,
              hint: Text(e.placeholder ?? S.of(context).placeholder),
              onChanged: (control) {
                setState(() {
                  if (control.value == 'other') {
                    control.value = '';
                    showOtherTextField = true;
                    return;
                  }
                  List<String> choices =
                      (e.choices ?? []).map((e) => e.value as String).toList();
                  if (e.showNoneItem == true) {
                    choices.add('none');
                  }
                  showOtherTextField = !choices.contains(control.value);
                });
              },
              items: dropdownItems),
        if (showOtherTextField)
          Padding(
            padding: const EdgeInsets.only(top: 8.0),
            child: ReactiveTextField(
              formControlName: e.name!,
              controller: textEditingController,
              decoration: InputDecoration(
                fillColor: Colors.white,
                border: const OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(5.0)),
                    borderSide: BorderSide(color: Colors.blue)),
                filled: true,
                contentPadding: const EdgeInsets.only(
                    bottom: 10.0, left: 10.0, right: 10.0),
                hintText: (e).otherPlaceholder,
              ),
            ),
          ),
      ],
    ).wrapQuestionTitle(e, hasTitle: true);
  }
}

class _NonReactiveDropdownField extends StatelessWidget {
  _NonReactiveDropdownField({
    Key? key,
    this.items,
    this.onChanged,
    required this.formControlName,
    required this.dropdown,
  }) : super(key: key);
  final String formControlName;
  final List<DropdownMenuItem<String>>? items;
  final ReactiveFormFieldCallback<String>? onChanged;
  final s.Dropdown dropdown;

  @override
  Widget build(BuildContext context) {
    final effectiveDecoration = const InputDecoration().applyDefaults(
      Theme.of(context).inputDecorationTheme,
    );

    return InputDecorator(
      decoration: effectiveDecoration.copyWith(
          // errorText: field.errorText,
          // enabled: !isDisabled,
          ),
      // isEmpty: effectiveValue == null,
      child: DropdownButtonHideUnderline(
        child: DropdownButton<String>(
          value: 'other',
          items: items,
          // selectedItemBuilder: selectedItemBuilder,
          // hint: hint,
          // disabledHint: effectiveDisabledHint,
          // elevation: elevation,
          // style: style,
          // icon: icon,
          // iconDisabledColor: iconDisabledColor,
          // iconEnabledColor: iconEnabledColor,
          // iconSize: iconSize,
          // isDense: isDense,
          // isExpanded: isExpanded,
          // itemHeight: itemHeight,
          // focusNode: field.focusNode,
          // dropdownColor: dropdownColor,
          // focusColor: focusColor,
          // underline: underline,
          // autofocus: true,
          // menuMaxHeight: menuMaxHeight,
          // enableFeedback: enableFeedback,
          alignment: AlignmentDirectional.centerStart,
          // borderRadius: borderRadius,
          // onTap: onTap != null ? () => onTap(field.control) : null,
          onChanged: (value) {
            final FormControl<String> formControlValue =
                ((ReactiveForm.of(context, listen: false)
                        as FormControlCollection)
                    .control(formControlName) as FormControl<String>)
                  ..updateValue(value);
            onChanged?.call(formControlValue);
          },
        ),
      ),
    );
  }
}
