import 'package:flutter/material.dart';
import 'package:flutter_survey_js/ui/elements/matrix_dropdown.dart';
import 'package:flutter_survey_js/ui/panel_title.dart';
import 'package:flutter_survey_js/ui/reactive/reactive_signature_string.dart';
import 'package:flutter_survey_js_model/flutter_survey_js_model.dart' as s;
import 'package:flutter_widget_from_html_core/flutter_widget_from_html_core.dart';
import 'package:logging/logging.dart';
import 'package:reactive_forms/reactive_forms.dart';

import 'checkbox.dart';
import 'dropdown.dart';
import 'image.dart';
import 'matrix.dart';
import 'matrix_dynamic.dart';
import 'multiple_text.dart';
import 'panel_dynamic.dart';
import 'question_title.dart';
import 'radio_group.dart';
import 'ranking.dart';
import 'rating.dart';
import 'text.dart';

typedef SurveyElementBuilder = Widget
    Function(BuildContext context, s.Elementbase element, {bool hasTitle});
typedef SurveyFormControlBuilder = Object? Function(s.Elementbase element,
    {List<ValidatorFunction> validators});

class SurveyElementFactory {
  final logger = Logger('SurveyElementFactory');
  static final SurveyElementFactory _singleton =
      SurveyElementFactory._internal();

  factory SurveyElementFactory() {
    return _singleton;
  }

  SurveyElementFactory._internal() {
    register<s.Matrix>(matrixBuilder);
    register<s.Matrixdropdown>(matrixDropdownBuilder);
    register<s.Matrixdynamic>(matrixDynamicBuilder);
    register<s.Checkbox>(checkBoxBuilder,
        control: (element, {validators = const []}) =>
            fb.array([], validators));
    register<s.Ranking>(
      rankingBuilder,
      control: (element, {validators = const []}) => FormControl<List<Object?>>(
          validators: validators,
          value: (element as s.Ranking).defaultValue?.value as List<Object?>),
    );
    register<s.Radiogroup>(
      radioGroupBuilder,
      control: (element, {validators = const []}) => FormControl(
        validators: validators,
        value: (element as s.Radiogroup).defaultValue?.value,
      ),
    );
    register<s.Boolean>(
        //TODO ReactiveSwitch is not safe
        (context, element, {bool hasTitle = true}) {
      s.Boolean booleanElement = element as s.Boolean;
      String? labelFalse = booleanElement.labelFalse;
      String? labelTrue = booleanElement.labelTrue;
      const labelPadding = 8.0;
      return Row(
        children: [
          if (labelFalse != null)
            Padding(
              padding: const EdgeInsets.only(right: labelPadding),
              child: Text(labelFalse),
            ),
          Flexible(
            child: ReactiveSwitch(
              formControlName: element.name!,
            ),
          ),
          if (labelTrue != null)
            Padding(
              padding: const EdgeInsets.only(left: labelPadding),
              child: Text(labelTrue),
            ),
        ],
      ).wrapQuestionTitle(element, hasTitle: hasTitle);
    },
        control: (element, {validators = const []}) =>
            FormControl<bool>(validators: validators));

    register<s.Rating>(ratingBuilder,
        control: (element, {validators = const []}) => FormControl<int>(
            validators: validators,
            value: (element as s.Rating).defaultValue.tryCastToInt()));

    register<s.Comment>(
      (context, element, {bool hasTitle = true}) => ReactiveTextField(
        keyboardType: TextInputType.multiline,
        maxLines: null,
        style: Theme.of(context).textTheme.bodyMedium,
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
      ).wrapQuestionTitle(element, hasTitle: hasTitle),
      control: (element, {validators = const []}) => FormControl<String>(
        validators: validators,
        value: (element as s.Comment).defaultValue?.value.toString(),
      ),
    );

    register<s.Text>(textBuilder, control: textControlBuilder);
    register<s.Multipletext>(multipleTextBuilder,
        control: multipleTextControlBuilder);
    register<s.Html>((context, element, {bool hasTitle = true}) {
      return HtmlWidget((element as s.Html).html ?? '');
    });
    register<s.Signaturepad>((context, element, {bool hasTitle = true}) {
      return LayoutBuilder(
          builder: (BuildContext context, BoxConstraints constraints) {
        return ReactiveSignatureString(
          formControlName: element.name!,
          width: constraints.maxWidth,
          height: constraints.maxHeight == double.infinity
              ? 400
              : constraints.maxHeight,
        );
      }).wrapQuestionTitle(element, hasTitle: hasTitle);
    },
        control: (_, {validators = const []}) =>
            FormControl<String>(validators: validators));
    register<s.Image>((context, element, {bool hasTitle = true}) {
      return urlToImage((element as s.Image).imageLink)
          .wrapQuestionTitle(element, hasTitle: hasTitle);
    });
    // register<s.ImagePicker>(imagePickerBuilder);
    register<s.Dropdown>(dropdownBuilder,
        control: (element, {validators = const []}) {
      final defaultValue = (element as s.Dropdown).defaultValue;
      return FormControl<Object>(
        validators: validators,
        value: defaultValue?.value.toString(),
      );
    });
    register<s.Paneldynamic>(panelDynamicBuilder);
    register<s.Panel>((context, element, {bool hasTitle = true}) {
      return Column(
        children: [
          PanelTitle(panel: element as s.Panelbase),
          ListView.separated(
              shrinkWrap: true,
              physics: const ClampingScrollPhysics(),
              itemBuilder: (context, index) {
                return resolve(
                    context,
                    (element as s.Panel)
                        .elementsOrQuestions![index]
                        .realElement);
              },
              separatorBuilder: (context, index) => separatorBuilder(context),
              itemCount: (element as s.Panel).elementsOrQuestions?.length ?? 0)
        ],
      );
    });

    unsupported = (context, element, {bool hasTitle = true}) => Text(
          'Unsupported element ${element.type ?? ""}',
          style: Theme.of(context).textTheme.bodyMedium,
        ).wrapQuestionTitle(element, hasTitle: hasTitle);
  }

  SurveyElementBuilder? unsupported;

  WidgetBuilder separatorBuilder = (_) => Wrap(
        children: const [
          SizedBox(
            height: 5,
          ),
          Divider(),
          SizedBox(
            height: 5,
          ),
        ],
      );

  final Map<String, SurveyElementBuilder> _map =
      <String, SurveyElementBuilder>{};
  final Map<String, SurveyFormControlBuilder> _formControlMap =
      <String, SurveyFormControlBuilder>{};

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

  Widget resolve(BuildContext context, s.Elementbase element,
      {bool hasTitle = true}) {
    var res = _map[element.type];
    if (res == null) {
      if (unsupported == null) {
        throw UnsupportedError('Unsupported element ${element.type}');
      } else {
        res = unsupported!;
      }
    }
    return res(context, element, hasTitle: hasTitle);
  }

  SurveyFormControlBuilder? resolveFormControl(s.Elementbase element) {
    return _formControlMap[element.type];
  }
}
