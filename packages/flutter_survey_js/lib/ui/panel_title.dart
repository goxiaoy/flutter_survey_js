import 'package:flutter/material.dart';
import 'package:flutter_survey_js_model/flutter_survey_js_model.dart' as s;
import 'package:flutter_survey_js/utils.dart';
class PanelTitle extends StatelessWidget {
  final s.Panelbase panel;
  final VoidCallback? onTimeout;

  const PanelTitle({Key? key, required this.panel, this.onTimeout})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        // SurveyWidget.of(context).formGroup.vali;
      },
      child: ListTile(
        title: Text(panel.title?.getLocalizedText(context) ?? panel.name ?? ''),
        subtitle: panel.description?.getLocalizedText(context) != null ? Text(panel.description!.getLocalizedText(context)!) : null,
      ),
    );
  }
}
