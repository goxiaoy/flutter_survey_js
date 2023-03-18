import 'package:flutter/material.dart';
import 'package:flutter_survey_js/model/survey.dart' as s;
import 'package:group_button/group_button.dart';
import 'package:reactive_forms/reactive_forms.dart';

// ReactiveGroupButton Wrapper around group_button to use with reactive_forms
class ReactiveGroupButton extends ReactiveFocusableFormField<dynamic, dynamic> {
  final GroupButtonController? _controller;
  final List<s.ItemValue> _buttons;
  ReactiveGroupButton({
    Key? key,
    String? formControlName,
    FormControl<dynamic>? formControl,
    Map<String, ValidationMessageFunction>? validationMessages,
    InputDecoration? decoration,
    required List<s.ItemValue> buttons,
    GroupButtonController? controller,
    GroupButtonOptions options = const GroupButtonOptions(),
    bool isRadio = true,
    bool? enableDeselect,
    int? maxSelected,
    FocusNode? focusNode,
    ReactiveFormFieldCallback<dynamic>? onChanged,
  })  : _controller = controller,
        _buttons = buttons,
        super(
            key: key,
            formControl: formControl,
            formControlName: formControlName,
            validationMessages: validationMessages,
            focusNode: focusNode,
            builder: (field) {
              final state = field as _ReactiveGroupButtonState<dynamic>;
              final InputDecoration effectiveDecoration = (decoration ??
                      const InputDecoration())
                  .applyDefaults(Theme.of(state.context).inputDecorationTheme);
              return InputDecorator(
                  decoration: effectiveDecoration.copyWith(
                    errorText: field.errorText,
                    enabled: field.control.enabled,
                  ),
                  child: GroupButton<s.ItemValue>(
                    buttons: buttons,
                    options: options,
                    isRadio: isRadio,
                    controller: state._controller,
                    buttonIndexedBuilder: (
                      bool selected,
                      int index,
                      BuildContext context,
                    ) {
                      final choice = buttons[index];
                      final title =
                          choice.text ?? choice.value?.toString() ?? '';
                      return RadioListTile<int>(
                        title: Text(title),
                        groupValue: state._controller.selectedIndex,
                        value: index,
                        onChanged: (_) {
                          if (!selected) {
                            state._controller.selectIndex(index);
                          } else {
                            state._controller.unselectIndex(index);
                          }
                          if (field.control.enabled) {
                            if (!selected) {
                              field.didChange(choice.value);
                            } else {
                              field.didChange(null);
                            }
                            onChanged?.call(field.control);
                          }
                        },
                      );
                    },
                    enableDeselect: enableDeselect,
                    maxSelected: maxSelected,
                  ));
            });

  @override
  ReactiveFormFieldState<dynamic, dynamic> createState() =>
      _ReactiveGroupButtonState<dynamic>();
}

class _ReactiveGroupButtonState<T>
    extends ReactiveFocusableFormFieldState<T, T> {
  late GroupButtonController _controller;

  @override
  void initState() {
    super.initState();
    _initializeController();
  }

  void _initializeController() {
    final initialValue = value;
    final currentWidget = widget as ReactiveGroupButton;
    _controller = (currentWidget._controller != null)
        ? currentWidget._controller!
        : GroupButtonController();
    final index =
        currentWidget._buttons.indexWhere((element) => element == initialValue);
    if (index != -1) {
      _controller.selectIndex(index);
    }
  }
}
