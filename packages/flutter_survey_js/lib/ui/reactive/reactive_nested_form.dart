import 'package:flutter/cupertino.dart';
import 'package:reactive_forms/reactive_forms.dart';

///Nested reactive form to handle formGroup inside formGroup, aka nested form
class ReactiveNestedForm extends StatelessWidget {
  final String? formControlName;
  final FormGroup? formGroup;
  final Widget child;

  const ReactiveNestedForm(
      {Key? key, this.formControlName, this.formGroup, required this.child})
      : assert(formControlName != null || formGroup != null),
        super(key: key);

  @override
  Widget build(BuildContext context) {
    final fg = ReactiveForm.of(context);
    assert(fg != null);
    return ReactiveForm(
      formGroup:
          formGroup ?? (fg as FormGroup).control(formControlName!) as FormGroup,
      child: child,
    );
  }
}
