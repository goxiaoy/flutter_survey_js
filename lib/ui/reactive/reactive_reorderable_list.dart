import 'package:flutter/cupertino.dart' hide ReorderableList;
import 'package:flutter/material.dart' hide ReorderableList;
import 'package:flutter_reorderable_list/flutter_reorderable_list.dart';
import 'package:reactive_forms/reactive_forms.dart';

enum DraggingMode {
  iOS,
  Android,
}

class ItemData<T> {
  ItemData(this.data) : this.key = ObjectKey(data);

  final T data;
  // Each item in reorderable list needs stable and unique key
  final Key key;
}

typedef ItemBuilder<T> = Widget Function(T data);

class ReactiveReorderableList<ModelDataType, ViewDataType>
    extends ReactiveFormField<List<ModelDataType>, List<ViewDataType>> {
  final DraggingMode draggingMode;
  final ItemBuilder<ViewDataType> itemBuilder;

  ReactiveReorderableList({
    Key? key,
    String? formControlName,
    FormControl<List<ModelDataType>>? formControl,
    ValidationMessagesFunction<List<ModelDataType>>? validationMessages,
    ControlValueAccessor<List<ModelDataType>, List<ViewDataType>>?
        valueAccessor,
    ShowErrorsFunction? showErrors,
    required this.itemBuilder,
    this.draggingMode = DraggingMode.iOS,
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
              final _items = (field.value ?? [])
                  .map((e) => ItemData<ViewDataType>(e))
                  .toList();
              int _indexOfKey(Key key) {
                return _items.indexWhere((d) => d.key == key);
              }

              bool _reorderCallback(Key item, Key newPosition) {
                int draggingIndex = _indexOfKey(item);
                int newPositionIndex = _indexOfKey(newPosition);

                // Uncomment to allow only even target reorder possition
                // if (newPositionIndex % 2 == 1)
                //   return false;
                final draggedItem = (field.value ?? [])[draggingIndex];
                //copy list
                final newList = List<ViewDataType>.from((field.value ?? []));
                newList.removeAt(draggingIndex);
                newList..insert(newPositionIndex, draggedItem);
                field.didChange(newList);
                return true;
              }

              return ReorderableList(
                onReorder: _reorderCallback,
                child: ListView.builder(
                  shrinkWrap: true,
                  itemCount: _items.length,
                  itemBuilder: (BuildContext context, int index) {
                    return Item(
                      data: _items[index],
                      // first and last attributes affect border drawn during dragging
                      isFirst: index == 0,
                      isLast: index == _items.length - 1,
                      draggingMode: draggingMode,
                      itemBuilder: itemBuilder,
                    );
                  },
                ),
              );
            });
}

class Item<T> extends StatelessWidget {
  Item({
    required this.data,
    required this.isFirst,
    required this.isLast,
    required this.draggingMode,
    required this.itemBuilder,
  });

  final ItemData<T> data;
  final bool isFirst;
  final bool isLast;
  final DraggingMode draggingMode;
  final ItemBuilder<T> itemBuilder;

  Widget _buildChild(BuildContext context, ReorderableItemState state) {
    BoxDecoration decoration;

    if (state == ReorderableItemState.dragProxy ||
        state == ReorderableItemState.dragProxyFinished) {
      // slightly transparent background white dragging (just like on iOS)
      decoration = BoxDecoration(color: Color(0xD0FFFFFF));
    } else {
      bool placeholder = state == ReorderableItemState.placeholder;
      decoration = BoxDecoration(
          border: Border(
              top: isFirst && !placeholder
                  ? Divider.createBorderSide(context) //
                  : BorderSide.none,
              bottom: isLast && placeholder
                  ? BorderSide.none //
                  : Divider.createBorderSide(context)),
          color: placeholder ? null : Colors.white);
    }

    // For iOS dragging mode, there will be drag handle on the right that triggers
    // reordering; For android mode it will be just an empty container
    Widget dragHandle = draggingMode == DraggingMode.iOS
        ? ReorderableListener(
            child: Container(
              padding: EdgeInsets.only(right: 18.0, left: 18.0),
              color: Color(0x08000000),
              child: Center(
                child: Icon(Icons.reorder, color: Color(0xFF888888)),
              ),
            ),
          )
        : Container();

    Widget content = Container(
      decoration: decoration,
      child: SafeArea(
          top: false,
          bottom: false,
          child: Opacity(
            // hide content for placeholder
            opacity: state == ReorderableItemState.placeholder ? 0.0 : 1.0,
            child: IntrinsicHeight(
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: <Widget>[
                  Expanded(
                      child: Padding(
                    padding:
                        EdgeInsets.symmetric(vertical: 14.0, horizontal: 14.0),
                    child: itemBuilder(data.data),
                  )),
                  // Triggers the reordering
                  dragHandle,
                ],
              ),
            ),
          )),
    );

    // For android dragging mode, wrap the entire content in DelayedReorderableListener
    if (draggingMode == DraggingMode.Android) {
      content = DelayedReorderableListener(
        child: content,
      );
    }

    return content;
  }

  @override
  Widget build(BuildContext context) {
    return ReorderableItem(
        key: data.key, //
        childBuilder: _buildChild);
  }
}
