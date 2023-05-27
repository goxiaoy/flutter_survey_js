import 'package:flutter/material.dart';
import 'package:flutter_survey_js/ui/elements/question_title.dart';
import 'package:flutter_survey_js/ui/survey_element_factory.dart';

import 'package:flutter_survey_js_model/flutter_survey_js_model.dart' as s;
import 'package:reactive_forms/reactive_forms.dart';

typedef SurveyElementBuilder = Widget Function(
    BuildContext context, s.Elementbase element,
    {ElementConfiguration? configuration});
typedef SurveyFormControlBuilder = AbstractControl Function(
    BuildContext context, s.Elementbase element,
    {List<ValidatorFunction> validators, Object? value});

typedef SurveyTitleBuilder = Widget Function(
    BuildContext context, s.Elementbase element, Widget child);

@immutable
class ElementConfiguration {
  final bool hasTitle;

  const ElementConfiguration({this.hasTitle = true});
}

Widget defaultUnsupportedBuilder(BuildContext context, s.Elementbase element,
    {ElementConfiguration? configuration}) {
  return Text('Unsupported element ${element.type ?? ""}')
      .wrapQuestionTitle(context, element, configuration: configuration);
}

Widget defaultSeparatorBuilder(
  BuildContext context,
) {
  return Wrap(
    children: const [
      SizedBox(
        height: 5,
      ),
      Divider(),
      SizedBox(
        height: 5,
      ),
    ],
  );
}

Widget defaultTitleBuilder(
    BuildContext context, s.Elementbase element, Widget child) {
  if (element is s.Question) {
    return QuestionTitle(
      q: element,
      child: child,
    );
  } else {
    return child;
  }
}

class SurveyConfiguration extends InheritedWidget {
  final SurveyElementBuilder unsupportedBuilder;

  final WidgetBuilder separatorBuilder;

  final SurveyTitleBuilder titleBuilder;

  final SurveyElementFactory factory;

  const SurveyConfiguration({
    Key? key,
    required Widget child,
    this.unsupportedBuilder = defaultUnsupportedBuilder,
    this.separatorBuilder = defaultSeparatorBuilder,
    this.titleBuilder = defaultTitleBuilder,
    required this.factory,
  }) : super(key: key, child: child);

  static SurveyConfiguration? of(BuildContext context) {
    return context.dependOnInheritedWidgetOfExactType<SurveyConfiguration>();
  }

  SurveyConfiguration.copyAncestor({
    Key? key,
    required BuildContext context,
    required Widget child,
    SurveyElementBuilder? unsupportedBuilder,
    WidgetBuilder? separatorBuilder,
    SurveyTitleBuilder? titleBuilder,
    SurveyElementFactory? factory,
  })  : unsupportedBuilder = unsupportedBuilder ??
            SurveyConfiguration.of(context)?.unsupportedBuilder ??
            defaultUnsupportedBuilder,
        separatorBuilder = separatorBuilder ??
            SurveyConfiguration.of(context)?.separatorBuilder ??
            defaultSeparatorBuilder,
        titleBuilder = titleBuilder ??
            SurveyConfiguration.of(context)?.titleBuilder ??
            defaultTitleBuilder,
        factory = factory ??
            SurveyConfiguration.of(context)?.factory ??
            SurveyElementFactory(),
        super(key: key, child: child);

  @override
  bool updateShouldNotify(covariant SurveyConfiguration oldWidget) {
    return unsupportedBuilder != oldWidget.unsupportedBuilder ||
        separatorBuilder != oldWidget.separatorBuilder ||
        titleBuilder != oldWidget.titleBuilder ||
        factory != oldWidget.factory;
  }
}

extension QuestionTitleExtension on Widget {
  Widget wrapQuestionTitle(BuildContext context, s.Elementbase element,
      {ElementConfiguration? configuration}) {
    if (configuration?.hasTitle == false) {
      return this;
    }
    return SurveyConfiguration.of(context)!
        .titleBuilder(context, element, this);
  }
}
