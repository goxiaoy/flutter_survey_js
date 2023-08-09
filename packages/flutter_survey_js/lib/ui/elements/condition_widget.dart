import 'package:flutter/cupertino.dart';
import 'package:flutter_survey_js/flutter_survey_js.dart' as s;
import 'package:reactive_forms/reactive_forms.dart';

class ConditionWidget extends StatelessWidget {
  final Widget child;
  final String? visibleIf;
  final String? enableIf;
  final String? requiredIf;
  final String name;

  const ConditionWidget(
      {Key? key,
      required this.child,
      this.visibleIf,
      this.enableIf,
      this.requiredIf,
      required this.name})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    final survey = s.SurveyProvider.of(context);

    return StreamBuilder(
      stream: survey.formGroup.valueChanges,
      builder: (BuildContext context,
          AsyncSnapshot<Map<String, Object?>?> snapshot) {
        Widget w = child;
        final collection = ReactiveForm.of(context)! as FormControlCollection;
        final c = collection.control(name);
        if (enableIf != null) {
          w = Builder(
            builder: (context) {
              final r =
                  s.getRunner().runCondition(enableIf!, snapshot.data ?? {});
              if (r == true) {
                c.markAsEnabled();
              } else {
                c.markAsDisabled();
              }
              return w;
            },
          );
        }
        if (requiredIf != null) {
          w = Builder(
            builder: (context) {
              final r =
                  s.getRunner().runCondition(requiredIf!, snapshot.data ?? {});
              if (r == true) {
                final v = [...c.validators, Validators.required];
                c.setValidators(v.toList());
              } else {
                final v = [...c.validators];
                final r = v.indexOf(Validators.required);
                if (r != -1) {
                  v.removeAt(r);
                }
                c.setValidators(v);
              }
              return w;
            },
          );
        }
        if (visibleIf != null) {
          w = Visibility(
            visible:
                s.getRunner().runCondition(visibleIf!, snapshot.data ?? {}) ==
                    true,
            child: w,
          );
        }
        return w;
      },
    );
  }
}
