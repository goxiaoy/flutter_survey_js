import 'package:flutter/material.dart';
import 'package:flutter_survey_js/ui/survey_configuration.dart';
import 'package:flutter_survey_js_model/flutter_survey_js_model.dart' as s;
import 'package:reactive_forms/reactive_forms.dart';

Widget commentBuilder(context, element, {ElementConfiguration? configuration}) {
  return ReactiveTextField(
    keyboardType: TextInputType.multiline,
    maxLines: null,
    formControlName: element.name!,
    decoration: InputDecoration(
      fillColor: Colors.white,
      border: const OutlineInputBorder(
          borderRadius: BorderRadius.all(Radius.circular(5.0)),
          borderSide: BorderSide(color: Colors.blue)),
      filled: true,
      contentPadding:
          const EdgeInsets.only(bottom: 10.0, left: 10.0, right: 10.0),
      hintText: (element as s.Comment).placeholder,
    ),
  ).wrapQuestionTitle(context, element, configuration: configuration);
}
