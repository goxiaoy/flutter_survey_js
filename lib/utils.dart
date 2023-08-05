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

extension SurveyTitleExtesion on s.SurveyTitle {
  String? getLocalizedText(BuildContext context) {
    if (oneOf.isType(String)) {
      return oneOf.value as String?;
    }
    if (oneOf.isType(s.Locstring)) {
      final locale = Localizations.localeOf(context).toString();
      final obj = (oneOf.value as s.Locstring);
      String? ret;
      switch (locale) {
        case "en":
          ret = obj.en;
          break;
        default:
          ret = obj.default_;
      }
      return ret;
    }
    return null;
  }
}
