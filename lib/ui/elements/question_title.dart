import 'package:flutter/material.dart';
import 'package:flutter_survey_js/ui/survey_widget.dart';
import 'package:flutter_survey_js_model/flutter_survey_js_model.dart' as s;

class QuestionTitle extends StatelessWidget {
  final s.Question q;
  final Widget? child;

  const QuestionTitle({Key? key, required this.q, this.child})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    description() {
      if (q.description != null && q.description!.isNotEmpty) {
        return Container(
          padding: const EdgeInsets.only(left: 10.0, right: 10.0, bottom: 10.0),
          child: Text(q.description!,
              style: Theme.of(context).textTheme.bodyMedium),
        );
      } else {
        return Container();
      }
    }

    titleTextStyle() => Theme.of(context).textTheme.titleLarge;

    title() {
      List<Widget> listTitle = <Widget>[];
      listTitle.add(Builder(builder: (context) {
        final survey = SurveyProvider.of(context);
        final status = survey.elementsState.get(q);
        if (status != null) {
          const Key questionNumberTextKey = Key('question-number-text');
          if ((survey.survey.showQuestionNumbers?.isOn ?? true) &&
              status.indexAll != null) {
            return Text(
              '${status.indexAll! + 1}.',
              key: questionNumberTextKey,
              style: titleTextStyle(),
            );
          } else if ((survey.survey.showQuestionNumbers?.isOnPage ?? false) &&
              status.indexInPage != null) {
            return Text(
              '${status.indexInPage! + 1}.',
              key: questionNumberTextKey,
              style: titleTextStyle(),
            );
          }
        }

        return Container();
      }));

      if (q.isRequired == true) {
        listTitle.add(Text(
          '* ',
          style: requiredTextStyle,
        ));
      }

      listTitle.add(Expanded(
          child: Text(
        q.title ?? q.name ?? "",
        style: titleTextStyle(),
      )));

      return Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Row(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: listTitle),
          description(),
        ],
      );
    }

    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        title(),
        if (child != null)
          Padding(
            padding: const EdgeInsets.only(top: 8.0),
            child: child!,
          )
      ],
    );
  }

  TextStyle get requiredTextStyle => const TextStyle(
      fontSize: 16.0,
      fontFamily: 'SF-UI-Text',
      fontWeight: FontWeight.w900,
      color: Colors.red);
}
