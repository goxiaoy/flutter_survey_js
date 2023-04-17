import 'package:flutter/material.dart';
import 'package:flutter_survey_js/model/survey.dart' as s;
import 'package:flutter_survey_js/ui/elements/matrix_dropdown.dart';
import 'package:flutter_survey_js/ui/panel_title.dart';
import 'package:flutter_survey_js/ui/reactive/reactive_nested_form.dart';
import 'package:flutter_survey_js/ui/reactive/reactive_signature_string.dart';
import 'package:flutter_widget_from_html_core/flutter_widget_from_html_core.dart';
import 'package:logging/logging.dart';
import 'package:reactive_forms/reactive_forms.dart';

import '../../generated/l10n.dart';
import 'checkbox.dart';
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
    Function(BuildContext context, s.ElementBase element, {bool hasTitle});
typedef SurveyFormControlBuilder = Object? Function(s.ElementBase element,
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
    register<s.MatrixDropdown>(matrixDropdownBuilder);
    register<s.MatrixDynamic>(matrixDynamicBuilder);
    register<s.CheckBox>(checkBoxBuilder,
        control: (element, {validators = const []}) =>
            fb.array([], validators));
    register<s.Ranking>(rankingBuilder,
        control: (element, {validators = const []}) =>
            FormControl<List<dynamic>>(validators: validators));
    register<s.RadioGroup>(radioGroupBuilder);
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
            validators: validators, value: (element as s.Rating).defaultValue));

    register<s.Comment>((context, element, {bool hasTitle = true}) =>
        ReactiveTextField(
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
        ).wrapQuestionTitle(element, hasTitle: hasTitle));

    register<s.Text>(textBuilder, control: textControlBuilder);
    register<s.MultipleText>(multipleTextBuilder,
        control: multipleTextControlBuilder);
    register<s.Html>((context, element, {bool hasTitle = true}) {
      return HtmlWidget((element as s.Html).html ?? '');
    });
    register<s.SignaturePad>((context, element, {bool hasTitle = true}) {
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

    register<s.Dropdown>((context, element, {bool hasTitle = true}) {
      final e = (element as s.Dropdown);

      return DropdownWidgetWithOtherOption(
        dropdown: e,
      );
    });
    register<s.PanelDynamic>(panelDynamicBuilder);
    register<s.Panel>((context, element, {bool hasTitle = true}) {
      return ReactiveNestedForm(
          formControlName: element.name!,
          child: Column(
            children: [
              PanelTitle(panel: element as s.PanelBase),
              ListView.separated(
                  shrinkWrap: true,
                  physics: const ClampingScrollPhysics(),
                  itemBuilder: (context, index) {
                    return resolve(
                        context, (element as s.Panel).elements![index]);
                  },
                  separatorBuilder: (context, index) =>
                      separatorBuilder(context),
                  itemCount: (element as s.Panel).elements?.length ?? 0)
            ],
          ));
    });

    unsupported = (context, element, {bool hasTitle = true}) => Container(
          child: Text('Unsupported ${element.name ?? ""}'),
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

  final Map<Type, SurveyElementBuilder> _map = <Type, SurveyElementBuilder>{};
  final Map<Type, SurveyFormControlBuilder> _formControlMap =
      <Type, SurveyFormControlBuilder>{};

  void register<T>(SurveyElementBuilder builder,
      {SurveyFormControlBuilder? control}) {
    _map[T] = builder;
    if (control != null) {
      _formControlMap[T] = control;
    }
  }

  Widget resolve(BuildContext context, s.ElementBase element,
      {bool hasTitle = true}) {
    final t = element.runtimeType;
    var res = _map[t];
    if (res == null) {
      if (unsupported == null) {
        throw UnsupportedError('Unsupported element $t');
      } else {
        res = unsupported!;
      }
    }
    return res(context, element, hasTitle: hasTitle);
  }

  SurveyFormControlBuilder? resolveFormControl(s.ElementBase element) {
    final t = element.runtimeType;
    return _formControlMap[t];
  }
}

class DropdownWidgetWithOtherOption extends StatefulWidget {
  const DropdownWidgetWithOtherOption({
    Key? key,
    required this.dropdown,
  }) : super(key: key);

  final s.Dropdown dropdown;

  @override
  State<DropdownWidgetWithOtherOption> createState() =>
      _DropdownWidgetWithOtherOptionState();
}

class _DropdownWidgetWithOtherOptionState
    extends State<DropdownWidgetWithOtherOption> {
  bool showOtherTextField = false;
  var textEditingController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    var e = widget.dropdown;

    return Column(
      children: [
        ReactiveDropdownField(
            formControlName: e.name!,
            hint: Text(e.placeholder ?? S.of(context).placeholder),
            onChanged: (control) {
              setState(() {
                if (control.value == 'other') {
                  textEditingController.text = '';
                  showOtherTextField = true;
                  return;
                }
                List<String> choices =
                    (e.choices ?? []).map((e) => e.value as String).toList();
                if (e.showNoneItem == true) {
                  choices.add('none');
                }
                showOtherTextField = !choices.contains(control.value);
              });
            },
            items: <DropdownMenuItem<Object>>[
              ...e.choices
                      ?.map(
                        (e) => DropdownMenuItem(
                          value: e.value,
                          child: Text(
                            e.text ?? e.value?.toString() ?? '',
                            style: Theme.of(context).textTheme.bodyMedium,
                          ),
                        ),
                      )
                      .toList(growable: false) ??
                  [],
              if (e.showNoneItem == true)
                DropdownMenuItem(
                    value: 'none',
                    child: Text(
                      'None',
                      style: Theme.of(context).textTheme.bodyMedium,
                    )),
              if (e.showOtherItem == true)
                DropdownMenuItem(
                    value: 'other',
                    child: Text(
                      'Other (describe)',
                      style: Theme.of(context).textTheme.bodyMedium,
                    )),
            ]),
        if (showOtherTextField)
          ReactiveTextField(
            formControlName: e.name!,
            controller: textEditingController,
            decoration: InputDecoration(
              fillColor: Colors.white,
              border: const OutlineInputBorder(
                  borderRadius: BorderRadius.all(Radius.circular(5.0)),
                  borderSide: BorderSide(color: Colors.blue)),
              filled: true,
              contentPadding:
                  const EdgeInsets.only(bottom: 10.0, left: 10.0, right: 10.0),
              hintText: (e).otherPlaceHolder ?? "Enter an 'other' option",
            ),
          ),
      ],
    ).wrapQuestionTitle(e, hasTitle: true);
  }
}
