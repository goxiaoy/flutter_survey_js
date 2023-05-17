import 'package:flutter/material.dart';
import 'package:flutter_survey_js/generated/l10n.dart';
import 'package:reactive_forms/reactive_forms.dart';

typedef ReactiveNestedGroupArrayBuilder = Widget Function(
    BuildContext context, FormGroup form, Widget? child);

class ReactiveNestedGroupArray<T> extends StatelessWidget {
  final String? formArrayName;
  final FormArray<T>? formArray;
  final Widget? child;
  final ReactiveNestedGroupArrayBuilder builder;
  final AbstractControl<T> Function()? createNew;
  final int minLength;
  final int? maxLength;

  const ReactiveNestedGroupArray({
    Key? key,
    InputDecoration decoration = const InputDecoration(),
    this.formArrayName,
    this.formArray,
    this.child,
    required this.builder,
    this.createNew,
    this.minLength = 0,
    this.maxLength,
  })  : assert(minLength >= 0),
        super(key: key);

  @override
  Widget build(BuildContext context) {
    return ReactiveFormArray(
      formArrayName: formArrayName,
      formArray: formArray,
      child: child,
      builder: (context, formArray, child) {
        while (formArray.controls.length < minLength) {
          formArray.add(createNew!());
        }
        final controls = formArray.controls.cast<FormGroup>().toList();
        return Column(children: [
          ...List.generate(controls.length, (index) {
            final form = controls[index];
            return Stack(
              key: ObjectKey(form),
              alignment: Alignment.topRight,
              children: [
                //build
                Padding(
                  padding: const EdgeInsets.only(
                      top: 12.5, right: 12.5, left: 8, bottom: 8),
                  child: builder(context, form, child),
                ),
                if (formArray.controls.length > minLength)
                  InkWell(
                    onTap: () {
                      //remove this form
                      formArray.removeAt(index);
                    },
                    child: Container(
                      margin: const EdgeInsets.all(3),
                      decoration: BoxDecoration(
                        color: Colors.grey.withOpacity(.7),
                        shape: BoxShape.circle,
                      ),
                      alignment: Alignment.center,
                      height: 22,
                      width: 22,
                      child: const Icon(
                        Icons.close,
                        size: 18,
                        color: Colors.white,
                      ),
                    ),
                  ),
              ],
            );
          }),
          if (createNew != null &&
              (maxLength == null || formArray.controls.length < maxLength!))
            Padding(
              padding: const EdgeInsets.all(5),
              child: ElevatedButton(
                onPressed: () {
                  formArray.add(createNew!());
                },
                child: Text(S.of(context).add),
              ),
            )
        ]);
      },
    );
  }
}
