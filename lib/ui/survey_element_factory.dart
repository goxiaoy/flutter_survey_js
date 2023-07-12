import 'package:flutter/material.dart';
import 'package:flutter_survey_js/ui/elements/boolean.dart';
import 'package:flutter_survey_js/ui/elements/comment.dart';
import 'package:flutter_survey_js/ui/elements/matrix_dropdown.dart';
import 'package:flutter_survey_js/ui/elements/panel.dart';
import 'package:flutter_survey_js/ui/reactive/reactive.dart';
import 'package:flutter_survey_js/ui/reactive/reactive_signature_string.dart';
import 'package:flutter_survey_js/ui/survey_configuration.dart';
import 'package:flutter_survey_js/ui/validators.dart';
import 'package:flutter_survey_js_model/flutter_survey_js_model.dart' as s;
import 'package:flutter_widget_from_html_core/flutter_widget_from_html_core.dart';
import 'package:logging/logging.dart';
import 'package:reactive_forms/reactive_forms.dart';

import 'elements/checkbox.dart';
import 'elements/dropdown.dart';
import 'elements/image.dart';
import 'elements/image_picker.dart';
import 'elements/matrix.dart';
import 'elements/matrix_dropdown_base.dart';
import 'elements/matrix_dynamic.dart';
import 'elements/multiple_text.dart';
import 'elements/panel_dynamic.dart';
import 'elements/radio_group.dart';
import 'elements/ranking.dart';
import 'elements/rating.dart';
import 'elements/text.dart';
import 'form_control.dart';

class SurveyElementFactory {
  final logger = Logger('SurveyElementFactory');

  final Map<String, SurveyElementBuilder> _map =
      <String, SurveyElementBuilder>{};
  final Map<String, SurveyFormControlBuilder> _formControlMap =
      <String, SurveyFormControlBuilder>{};

  SurveyElementFactory() {
    register<s.Matrix>(matrixBuilder,
        control: (context, element, {validators = const [], value}) {
      //Matrix returns single object
      return surveyfb.group(
          Map.fromEntries(((element as s.Matrix)
                      .rows
                      ?.map((p) => p.castToItemvalue()) ??
                  [])
              .map((e) => MapEntry(
                  e.value.toString(),
                  fb.control<Object?>(tryGetValue(
                      e.value.toString(), getDefaultValue(element, value)))))),
          validators);
    });
    register<s.Matrixdropdown>(matrixDropdownBuilder,
        control: (context, elementBase, {validators = const [], value}) {
      final element = elementBase as s.Matrixdropdown;
      //Matrixdropdown returns single object
      return surveyfb.group(
          Map.fromEntries((element.rows?.map((p) => p.castToItemvalue()) ?? [])
              .map((e) => MapEntry(
                  e.value.toString(),
                  elementsToFormGroup(
                      context,
                      (element.columns?.toList() ?? [])
                          .map((column) =>
                              matrixDropdownColumnToQuestion(element, column))
                          .toList(),
                      value: tryGetValue(e.value.toString(),
                          getDefaultValue(element, value)))))),
          validators);
    });
    register<s.Matrixdynamic>(matrixDynamicBuilder,
        control: (context, element, {validators = const [], value}) =>
            //Matrixdynamic returns array of object
            surveyfb.array(
                (element as s.Matrixdynamic).defaultValue.tryCastToListObj() ??
                    value.tryCastToList() ??
                    [],
                validators));
    register<s.Checkbox>(checkBoxBuilder,
        control: (context, element, {validators = const [], value}) =>
            //Checkbox returns array of object or array of single value( string, boolean etc.)
            surveyfb.array(
                (element as s.Checkbox).defaultValue.tryCastToListObj() ??
                    value.tryCastToList() ??
                    [],
                validators));
    register<s.Ranking>(rankingBuilder,
        //Ranking returns array of single value( string, boolean etc.)
        control: (context, element, {validators = const [], value}) =>
            FormControl<List<dynamic>>(
                value: (element as s.Ranking).defaultValue.tryCastToListObj() ??
                    value.tryCastToList() ??
                    [],
                validators: validators));
    register<s.Radiogroup>(radioGroupBuilder);
    register<s.Boolean>(booleanBuilder,
        control: (context, element, {validators = const [], value}) =>
            FormControl<bool>(
                value: (element as s.Boolean).defaultValue.tryCastToBool() ??
                    value.tryCastToBool(),
                validators: validators));

    register<s.Rating>(ratingBuilder,
        control: (context, element, {validators = const [], value}) =>
            FormControl<int>(
                validators: validators,
                value: (element as s.Rating).defaultValue.tryCastToInt() ??
                    value.tryCastToInt()));

    register<s.Comment>(commentBuilder);

    register<s.Text>(textBuilder, control: textControlBuilder);
    register<s.Multipletext>(multipleTextBuilder,
        control: multipleTextControlBuilder);
    register<s.Html>((context, element, {ElementConfiguration? configuration}) {
      return HtmlWidget((element as s.Html).html ?? '');
    });
    register<s.Signaturepad>((context, element,
            {ElementConfiguration? configuration}) {
      return LayoutBuilder(
          builder: (BuildContext context, BoxConstraints constraints) {
        return ReactiveSignatureString(
          formControlName: element.name!,
          width: constraints.maxWidth,
          height: constraints.maxHeight == double.infinity
              ? 400
              : constraints.maxHeight,
        );
      }).wrapQuestionTitle(context, element, configuration: configuration);
    },
        control: (context, element, {validators = const [], value}) =>
            FormControl<String>(
                validators: validators,
                value: (element as s.Signaturepad)
                        .defaultValue
                        ?.tryCastToString() ??
                    value.tryCastToString()));
    register<s.Image>((context, element,
        {ElementConfiguration? configuration}) {
      return urlToImage((element as s.Image).imageLink)
          .wrapQuestionTitle(context, element, configuration: configuration);
    });
    register<s.Imagepicker>(imagePickerBuilder);

    register<s.Dropdown>(dropdownBuilder,
        control: (context, element, {validators = const [], value}) =>
            FormControl<Object>(
                validators: validators,
                value: (element as s.Dropdown).defaultValue?.value ?? value));
    register<s.Paneldynamic>(panelDynamicBuilder,
        control: (context, element, {validators = const [], value}) =>
            surveyfb.array(
                (element as s.Paneldynamic).defaultValue.tryCastToListObj() ??
                    value.tryCastToList() ??
                    [],
                validators));
    register<s.Panel>(panelBuilder,
        control: (context, element, {validators = const [], value}) =>
            elementsToFormGroup(
                context,
                (element as s.Panel)
                        .elementsOrQuestions
                        ?.map((p) => p.realElement)
                        .toList() ??
                    [],
                //panel does not implement Question. so we need to set required explicitly
                validators: element.isRequired == true
                    ? [NonEmptyValidator.get, ...validators]
                    : validators,
                value: value));
  }

  void register<T>(SurveyElementBuilder builder,
      {SurveyFormControlBuilder? control}) {
    final name = s.questionTypeName[T];
    if (name == null) {
      throw UnsupportedError("element type $T not supported");
    }
    _map[name] = builder;
    if (control != null) {
      _formControlMap[name] = control;
    }
  }

  // resolve resolve widet from element
  Widget resolve(BuildContext context, s.Elementbase element,
      {ElementConfiguration? configuration}) {
    var res = _map[element.type];
    if (res == null) {
      //unsupported element
      final unsupported = SurveyConfiguration.of(context)?.unsupportedBuilder;
      if (unsupported == null) {
        throw UnsupportedError('Unsupported element ${element.type}');
      } else {
        res = unsupported;
      }
    }
    return res(context, element, configuration: configuration);
  }

  // resolveFormControl resolve formControl from element
  // [value] default value passed down from parent. default value will be resolved by self default value then from parent
  Object resolveFormControl(BuildContext context, s.Elementbase element,
      {Object? value}) {
    final validators = <ValidatorFunction>[];
    if (element is s.Question) {
      validators.addAll(questionToValidators(element));
    }
    final c = _formControlMap[element.type];
    //find from facotry or fallback to FormControl<Object>
    final res =
        c?.call(context, element, validators: validators, value: value) ??
            FormControl<Object>(
                validators: validators, value: getDefaultValue(element, value));
    return res;
  }
}
