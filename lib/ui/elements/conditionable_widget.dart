import 'package:flutter/cupertino.dart';
import 'package:flutter_survey_js/data/condition/condition_runner.dart';
import 'package:flutter_survey_js_model/flutter_survey_js_model.dart' as s;
import 'package:flutter_survey_js/survey.dart';
import 'package:reactive_forms/reactive_forms.dart';

class ConditionWidget extends StatelessWidget {
  final Widget child;
  final String? visibleIf;
  final String? enableIf;
  final String? requiredIf;
  final s.Elementbase? element;

  const ConditionWidget(
      {Key? key,
      required this.child,
      this.visibleIf,
      this.enableIf,
      this.requiredIf,
      this.element})
      : assert(requiredIf == null || (element != null)),
        assert(enableIf == null || (element != null)),
        super(key: key);

  @override
  Widget build(BuildContext context) {
    final survey = SurveyProvider.of(context);
    //TODO visibleIf
    return StreamBuilder(
      stream: survey.formGroup.valueChanges,
      builder: (BuildContext context,
          AsyncSnapshot<Map<String, Object?>?> snapshot) {
        Widget w = child;
        if (enableIf != null) {
          w = Builder(
            builder: (context) {
              final r = ConditionRunner(enableIf).run(values: snapshot.data);
              final c = ReactiveForm.of(context)!;
              if (r) {
                c.markAsEnabled();
              } else {
                c.markAsDisabled();
              }
              return w;
            },
          );
        }
        if (requiredIf != null && element is s.Question) {
          w = Builder(
            builder: (context) {
              final f = ReactiveForm.of(context)! as FormGroup;
              final c = f.control(element!.name!);
              final r = ConditionRunner(requiredIf).run(values: snapshot.data);
              if (r) {
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
            visible: ConditionRunner(visibleIf).run(values: snapshot.data),
            child: w,
          );
        }
        return w;
      },
    );
  }
}
