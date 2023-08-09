import 'package:built_collection/built_collection.dart';
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


Map<String, Object?> removeEmptyField(Map<String, Object?> raw) {
  final Map<String, Object?> ret = {};
  for (final kv in raw.entries) {
    final v = kv.value;
    if (v != null) {
      if (v is List) {
        if (v.isNotEmpty) {
          final newList = [];
          for (final item in v) {
            if (item != null) {
              if (item is Map<String, Object?>) {
                newList.add(removeEmptyField(item));
              } else {
                newList.add(item);
              }
            }
          }
          ret[kv.key] = newList;
        } else {
          //removed
        }
      } else if (v is Map<String, Object?>) {
        final newV = removeEmptyField(v);
        if (newV.isNotEmpty) {
          ret[kv.key] = newV;
        } else {
          //removed
        }
      } else if (v is String) {
        if (v.trim().isNotEmpty) {
          ret[kv.key] = v;
        }
      } else {
        ret[kv.key] = v;
      }
    }
  }
  return ret;
}
