import 'package:flutter_survey_js/survey.dart' as s;
import 'package:flutter_survey_js/ui/reactive/reactive_group_button.dart';
import 'package:group_button/group_button.dart';

import 'question_title.dart';
import 'survey_element_factory.dart';

final SurveyElementBuilder radioGroupBuilder =
    (context, element, {bool hasTitle = true}) {
  final e = element as s.RadioGroup;
  return ReactiveGroupButton(
    options: const GroupButtonOptions(spacing: 0, runSpacing: 0),
    isRadio: true,
    formControlName: element.name!,
    buttons: (e.choices ?? []),
  ).wrapQuestionTitle(element, hasTitle: hasTitle);
};
