import 'package:flutter/material.dart';
import 'package:flutter_survey_js_model/flutter_survey_js_model.dart' as s;

Color colorFromHex(String hexColor) {
  hexColor = hexColor.toUpperCase().replaceAll('#', '');
  if (hexColor.length == 6) {
    hexColor = 'FF$hexColor';
  }
  return Color(int.parse(hexColor, radix: 16));
}

String colorToHex(Color color) {
  return '#${color.value.toRadixString(16)}';
}

extension SurveyTitleWidgetExtesion on s.SurveyTitle {
  String? getLocalizedText(BuildContext context) {
    final locale = Localizations.localeOf(context).toString();
    return getTextFromLocale(locale: locale);
  }
}
