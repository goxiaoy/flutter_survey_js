import 'package:flutter/widgets.dart';
import 'package:reactive_forms/reactive_forms.dart';

typedef GridItemBuilder<T, V> = Widget Function(
    V item, bool isCurrentValue, void Function() changeItem);

class ReactiveGridItemPicker<T, V> extends ReactiveFocusableFormField<T, V> {
  ReactiveGridItemPicker(
      {Key? key,
      String? formControlName,
      FormControl<T>? formControl,
      Map<String, ValidationMessageFunction>? validationMessages,
      ShowErrorsFunction? showErrors,
      required ControlValueAccessor<T, V> valueAccessor,
      required List<V> items,
      required GridItemBuilder<T, V> builder})
      : super(
            key: key,
            formControl: formControl,
            formControlName: formControlName,
            validationMessages: validationMessages,
            showErrors: showErrors,
            valueAccessor: valueAccessor,
            builder: (field) {
              return Column(
                mainAxisSize: MainAxisSize.min,
                children: items.map((e) {
                  final isCurrent = field.valueAccessor.viewToModelValue(e) ==
                      field.valueAccessor.viewToModelValue(field.value);
                  return builder(e, isCurrent, () {
                    if (isCurrent) {
                      field.didChange(null);
                    } else {
                      field.didChange(e);
                    }
                  });
                }).toList(),
              );
            });
}
