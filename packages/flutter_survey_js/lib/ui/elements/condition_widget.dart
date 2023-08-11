import 'package:flutter/cupertino.dart';
import 'package:flutter_survey_js/flutter_survey_js.dart' as s;
import 'package:flutter_survey_js/ui/element_node.dart';
import 'package:reactive_forms/reactive_forms.dart';

class ConditionWidget extends StatelessWidget {
  final Widget child;
  final ElementNode node;

  const ConditionWidget({
    Key? key,
    required this.child,
    required this.node,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final survey = s.SurveyProvider.of(context);

    return StreamBuilder(
      stream: survey.formGroup.valueChanges,
      builder: (BuildContext context,
          AsyncSnapshot<Map<String, Object?>?> snapshot) {
        Widget w = child;

        if (node.enableIf != null) {
          node.setEnabled(node.enableIf!);
        }

        if (node.requireIf != null) {
          //TODO requiredIf panel
          if (node.control != null) {
            if (node.requireIf == true) {
              final v = [...node.control!.validators, Validators.required];
              node.control!.setValidators(v.toList(), autoValidate: true);
            } else {
              final v = [...node.control!.validators];
              final r = v.indexOf(Validators.required);
              if (r != -1) {
                v.removeAt(r);
              }
              node.control!.setValidators(v, autoValidate: true);
            }
          }
        }
        if (node.visibleIf != null) {
          w = Visibility(
            visible: node.visibleIf!,
            child: w,
          );
        }
        return w;
      },
    );
  }
}
