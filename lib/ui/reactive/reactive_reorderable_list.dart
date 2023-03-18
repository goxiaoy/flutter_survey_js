import 'dart:ui';

import 'package:flutter/material.dart' hide ReorderableList;
import 'package:implicitly_animated_reorderable_list_2/implicitly_animated_reorderable_list_2.dart';
import 'package:implicitly_animated_reorderable_list_2/transitions.dart';
import 'package:reactive_forms/reactive_forms.dart';

typedef ItemBuilder<T> = Widget Function(T data);

class ReactiveReorderableList<ModelDataType, ViewDataType extends Object>
    extends ReactiveFormField<List<ModelDataType>, List<ViewDataType>> {
  final ItemBuilder<ViewDataType> itemBuilder;

  ReactiveReorderableList({
    Key? key,
    String? formControlName,
    FormControl<List<ModelDataType>>? formControl,
    Map<String, ValidationMessageFunction>? validationMessages,
    ControlValueAccessor<List<ModelDataType>, List<ViewDataType>>?
        valueAccessor,
    ShowErrorsFunction? showErrors,
    required this.itemBuilder,
  }) : super(
            key: key,
            formControl: formControl,
            formControlName: formControlName,
            validationMessages: validationMessages,
            valueAccessor: valueAccessor,
            showErrors: showErrors,
            builder:
                (ReactiveFormFieldState<List<ModelDataType>, List<ViewDataType>>
                    field) {
              return ImplicitlyAnimatedReorderableList<ViewDataType>(
                items: field.value ?? [],
                areItemsTheSame: (oldItem, newItem) => oldItem == newItem,
                onReorderFinished: (item, from, to, newItems) {
                  // Remember to update the underlying data when the list has been
                  // reordered.
                  field.didChange(newItems);
                },
                itemBuilder: (context, itemAnimation, item, index) {
                  // Each item must be wrapped in a Reorderable widget.
                  return Reorderable(
                    // Each item must have an unique key.
                    key: ValueKey(item),
                    // The animation of the Reorderable builder can be used to
                    // change to appearance of the item between dragged and normal
                    // state. For example to add elevation when the item is being dragged.
                    // This is not to be confused with the animation of the itemBuilder.
                    // Implicit animations (like AnimatedContainer) are sadly not yet supported.
                    builder: (context, dragAnimation, inDrag) {
                      final t = dragAnimation.value;
                      final elevation = lerpDouble(0, 8, t);
                      final color = Color.lerp(
                          Colors.white, Colors.white.withOpacity(0.8), t);

                      return SizeFadeTransition(
                        sizeFraction: 0.7,
                        curve: Curves.easeInOut,
                        animation: itemAnimation,
                        child: Material(
                          color: color,
                          elevation: elevation!,
                          type: MaterialType.transparency,
                          child: ListTile(
                            title: itemBuilder(item),
                            // The child of a Handle can initialize a drag/reorder.
                            // This could for example be an Icon or the whole item itself. You can
                            // use the delay parameter to specify the duration for how long a pointer
                            // must press the child, until it can be dragged.
                            leading: Handle(
                              delay: const Duration(milliseconds: 100),
                              child: Icon(
                                Icons.list,
                                color: Colors.grey,
                              ),
                            ),
                          ),
                        ),
                      );
                    },
                  );
                },
                // If you want to use headers or footers, you should set shrinkWrap to true
                shrinkWrap: true,
              );
            });
}
