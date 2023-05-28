// ignore_for_file: implementation_imports

import 'dart:async';

import 'package:flutter/material.dart';
import 'package:reactive_forms/reactive_forms.dart';
import 'package:reactive_forms/src/widgets/form_control_inherited_notifier.dart';

// Extends ReactiveFormArray to add ability to wrap array item into some widget
class ReactiveWrapFormArray<T> extends ReactiveFormArray<T> {
  final Widget Function(
      BuildContext context, FormArray<T> formArray, Widget child) wrapper;

  /// Creates an instance of [ReactiveFormArray].
  ///
  /// The [builder] argument is required.
  /// The [child] is optional but is good practice to use if part of the widget
  /// subtree does not depend on the value of the [FormArray] that is bind
  /// with this widget.
  const ReactiveWrapFormArray({
    Key? key,
    required this.wrapper,
    required ReactiveFormArrayBuilder<T> builder,
    String? formArrayName,
    FormArray<T>? formArray,
    Widget? child,
  }) : super(
            key: key,
            builder: builder,
            formArray: formArray,
            formArrayName: formArrayName,
            child: child);

  @override
  ReactiveWrapFormArrayState<T> createState() =>
      ReactiveWrapFormArrayState<T>();
}

class ReactiveWrapFormArrayState<T> extends ReactiveFormArrayState<T> {
  late FormArray<T> _formArray;

  StreamSubscription<ControlStatus>? _statusChangesSubscription;
  StreamSubscription<bool>? _touchChangesSubscription;

  @override
  void initState() {
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
  }

  void _subscribeEvents() {
    _unsubscribeEvents();
    _statusChangesSubscription = _formArray.statusChanged.listen((_) {
      setState(() {});
    });
    _touchChangesSubscription = _formArray.touchChanges.listen((_) {
      setState(() {});
    });
  }

  void _unsubscribeEvents() {
    _statusChangesSubscription?.cancel();
    _touchChangesSubscription?.cancel();
  }

  @override
  void didChangeDependencies() {
    if (widget.formArray != null) {
      _formArray = widget.formArray!;
      _subscribeEvents();
    } else {
      final form = ReactiveForm.of(context, listen: false);
      if (form == null || form is! FormControlCollection) {
        throw FormControlParentNotFoundException(widget);
      }
      final collection = form as FormControlCollection;
      _formArray = collection.control(widget.formArrayName!) as FormArray<T>;
      _subscribeEvents();
    }
    super.didChangeDependencies();
  }

  @override
  Widget build(BuildContext context) {
    return FormControlInheritedStreamer(
      control: _formArray,
      stream: _formArray.collectionChanges,
      child: Builder(
        builder: (context) {
          final child = widget.builder(
            context,
            ReactiveForm.of(context)! as FormArray<T>,
            widget.child,
          );
          return (widget as ReactiveWrapFormArray<T>)
              .wrapper(context, _formArray, child);
        },
      ),
    );
  }
}
