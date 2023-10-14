// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter_survey_js/ui/survey_widget.dart';
import 'package:flutter_survey_js_model/flutter_survey_js_model.dart' as s;
import 'package:flutter_survey_js/utils.dart';

class QuestionTitle extends StatelessWidget {
  final s.Question q;
  final Widget? child;

  const QuestionTitle({Key? key, required this.q, this.child})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    description() {
      if (q.description?.getLocalizedText(context) != null &&
          q.description!.getLocalizedText(context)!.isNotEmpty) {
        return Container(
          padding: const EdgeInsets.only(left: 0.0, right: 0.0, bottom: 10.0),
          child: Text(q.description!.getLocalizedText(context)!,
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
        final status = survey.rootNode.findByElement(element: q);
        if (status != null) {
          if ((survey.survey.showQuestionNumbers?.isOn ?? true)) {
            if (status.isInsideDynamic == true && status.panelIndex != null) {
              return Text(
                '${status.panelIndex! + 1}. ',
                style: titleTextStyle(),
              );
            }
            if (status.indexAll != null) {
              return Text(
                '${status.indexAll! + 1}. ',
                style: titleTextStyle(),
              );
            }
          } else if ((survey.survey.showQuestionNumbers?.isOnPage ?? false)) {
            if (status.isInsideDynamic == true && status.panelIndex != null) {
              return Text(
                '${status.panelIndex! + 1}. ',
                style: titleTextStyle(),
              );
            }
            if (status.indexInPage != null) {
              return Text(
                '${status.indexInPage! + 1}. ',
                style: titleTextStyle(),
              );
            }
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
          q.title?.getLocalizedText(context) ?? q.name ?? "",
          style: titleTextStyle(),
        ),
      ));

      return Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          SizedBox(height: 10),
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
