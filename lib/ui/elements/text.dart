import 'package:flutter/material.dart';
import 'package:flutter_survey_js/ui/reactive/reactive.dart';
import 'package:flutter_survey_js/ui/reactive/reactive_color_picker.dart';
import 'package:flutter_survey_js/ui/survey_configuration.dart';
import 'package:flutter_survey_js_model/flutter_survey_js_model.dart' as s;
import 'package:reactive_date_time_picker/reactive_date_time_picker.dart';
import 'package:reactive_forms/reactive_forms.dart';

Widget textBuilder(context, element, {ElementConfiguration? configuration}) {
  final e = element as s.Text;
  final String? hintText = e.placeholder;
  Widget widget = ReactiveTextField(
    formControlName: element.name!,
    decoration: InputDecoration(hintText: hintText),
  );

  if (e.inputType == s.TextInputType.date) {
    widget = ReactiveDateTimePicker(
      locale: Localizations.localeOf(context),
      formControlName: element.name!,
      type: ReactiveDatePickerFieldType.date,
      decoration: InputDecoration(hintText: hintText),
    );
  }
  if (e.inputType == s.TextInputType.color) {
    widget = ReactiveColorPicker(formControlName: element.name!);
  }
  if (e.inputType == s.TextInputType.email) {
    widget = ReactiveTextField(
      formControlName: element.name!,
      decoration: InputDecoration(hintText: hintText),
    );
  }
  if (e.inputType == s.TextInputType.datetimeLocal) {
    widget = ReactiveDateTimePicker(
      locale: Localizations.localeOf(context),
      formControlName: element.name!,
      type: ReactiveDatePickerFieldType.dateTime,
      decoration: InputDecoration(hintText: hintText),
    );
  }

  if (e.inputType == s.TextInputType.month) {
    //TODO
  }
  if (e.inputType == s.TextInputType.password) {
    widget = ReactiveTextField(
      obscureText: true,
      formControlName: element.name!,
      decoration: InputDecoration(hintText: hintText),
    );
  }
  if (e.inputType == s.TextInputType.range) {}
  if (e.inputType == s.TextInputType.tel) {
    widget = ReactiveTextField(
      keyboardType: TextInputType.phone,
      formControlName: element.name!,
      decoration: InputDecoration(hintText: hintText),
    );
  }
  if (e.inputType == s.TextInputType.time) {}
  if (e.inputType == s.TextInputType.url) {}
  if (e.inputType == s.TextInputType.week) {}
  if (e.inputType == s.TextInputType.number) {
    widget = ReactiveTextField(
      keyboardType: TextInputType.number,
      formControlName: element.name!,
      valueAccessor: NumStringValueAccessor(),
      decoration: InputDecoration(hintText: hintText),
    );
  }
  return widget.wrapQuestionTitle(context, element,
      configuration: configuration);
}

AbstractControl textControlBuilder(s.Elementbase element,
    {validators = const <ValidatorFunction>[]}) {
  final e = element as s.Text;
  if (e.inputType == s.TextInputType.date ||
      e.inputType == s.TextInputType.datetimeLocal) {
    return FormControl<DateTime>(validators: validators);
  }
  if (e.inputType == s.TextInputType.color) {
    return FormControl<String>(validators: validators);
  }
  if (e.inputType == s.TextInputType.email) {
    return FormControl<String>(validators: [...validators, Validators.email]);
  }
  if (e.inputType == s.TextInputType.number) {
    return FormControl<num>(
        validators: [...validators, NullableNumberValidator().validate]);
  }
  return FormControl<String>(validators: validators);
}
