import 'package:flutter/material.dart';
import 'package:flutter_survey_js/model/survey.dart' as s;

class PanelTitle extends StatelessWidget {
  final s.PanelBase panel;
  final VoidCallback? onTimeout;
  const PanelTitle({Key? key, required this.panel, this.onTimeout}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        // SurveyWidget.of(context).formGroup.vali;
      },
      child: Container(
        child: ListTile(
          title: Text(panel.title ?? panel.name ?? ''),
          subtitle: panel.description != null ? Text(panel.description!) : null,
        ),
      ),
    );
  }
}
