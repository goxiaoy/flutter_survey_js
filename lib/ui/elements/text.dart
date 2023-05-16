import 'package:flutter/material.dart';
import 'package:flutter_survey_js/ui/reactive/reactive.dart';
import 'package:flutter_survey_js/ui/reactive/reactive_color_picker.dart';
import 'package:flutter_survey_js_model/flutter_survey_js_model.dart' as s;
import 'package:intl/intl.dart';
import 'package:reactive_date_time_picker/reactive_date_time_picker.dart';
import 'package:reactive_forms/reactive_forms.dart';

import 'question_title.dart';

Widget textBuilder(context, element, {bool hasTitle = true}) {
  final e = element as s.Text;
  final String? hintText = e.placeholder;
  Widget widget = ReactiveTextField(
    formControlName: element.name!,
    style: Theme.of(context).textTheme.bodyText2,
    decoration: InputDecoration(hintText: hintText),
  );

  final datePickerTextStyle = Theme.of(context).textTheme.bodyText2;

  if (e.inputType == s.TextInputType.date) {
    widget = ReactiveDateTimePicker(
      locale: Localizations.localeOf(context),
      formControlName: element.name!,
      type: ReactiveDatePickerFieldType.date,
      style: datePickerTextStyle,
      decoration: InputDecoration(hintText: hintText),
    );
  }
  if (e.inputType == s.TextInputType.color) {
    widget = ReactiveColorPicker(formControlName: element.name!);
  }
  if (e.inputType == s.TextInputType.email) {
    widget = ReactiveTextField(
      formControlName: element.name!,
      style: Theme.of(context).textTheme.bodyText2,
      decoration: InputDecoration(hintText: hintText),
    );
  }
  if (e.inputType == s.TextInputType.datetimeLocal) {
    widget = ReactiveDateTimePicker(
      locale: Localizations.localeOf(context),
      formControlName: element.name!,
      type: ReactiveDatePickerFieldType.dateTime,
      style: datePickerTextStyle,
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
      style: Theme.of(context).textTheme.bodyText2,
      decoration: InputDecoration(hintText: hintText),
    );
  }
  if (e.inputType == s.TextInputType.range) {
    //TODO
  }
  if (e.inputType == s.TextInputType.tel) {
    widget = ReactiveTextField(
      keyboardType: TextInputType.phone,
      formControlName: element.name!,
      style: Theme.of(context).textTheme.bodyText2,
      decoration: InputDecoration(hintText: hintText),
    );
  }
  if (e.inputType == s.TextInputType.time) {
    //TODO
  }
  if (e.inputType == s.TextInputType.url) {
    //TODO
  }
  if (e.inputType == s.TextInputType.week) {
    //TODO
  }
  if (e.inputType == s.TextInputType.number) {
    widget = ReactiveTextField(
      keyboardType: TextInputType.number,
      formControlName: element.name!,
      valueAccessor: NumStringValueAccessor(),
      style: Theme.of(context).textTheme.bodyText2,
      decoration: InputDecoration(hintText: hintText),
    );
  }
  return widget.wrapQuestionTitle(element, hasTitle: hasTitle);
}

Object? textControlBuilder(s.Elementbase element,
    {validators = const <ValidatorFunction>[]}) {
  final e = element as s.Text;
  if (e.inputType == s.TextInputType.date ||
      e.inputType == s.TextInputType.datetimeLocal) {
    final defaultValue = e.defaultValue?.value as String?;

    return FormControl<DateTime>(
        validators: validators,
        value: defaultValue != null
            ? DateFormat('yyyy-MM-dd').parse(defaultValue)
            : null);
  }
  if (e.inputType == s.TextInputType.color) {
    return FormControl<String>(
      validators:
          validators, /*Unsure how to parse Color from a defaultValue String...*/
    );
  }
  if (e.inputType == s.TextInputType.email) {
    final defaultValue = e.defaultValue?.value as String?;

    return FormControl<String>(
        validators: [...validators, Validators.email], value: defaultValue);
  }
  if (e.inputType == s.TextInputType.number) {
    final num? defaultValue = e.defaultValue?.value is String
        ? num.tryParse(e.defaultValue!.value as String)
        : e.defaultValue?.value as num?;
    return FormControl<num>(
      validators: [...validators, NullableNumberValidator().validate],
      value: defaultValue,
    );
  }

  final defaultValue = e.defaultValue?.value.toString();

  return FormControl<String>(validators: validators, value: defaultValue);
}
