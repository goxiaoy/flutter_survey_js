import 'package:flutter/material.dart';
import 'package:flutter_survey_js/ui/reactive/reactive_grid_item_picker.dart';
import 'package:flutter_survey_js_model/flutter_survey_js_model.dart' as s;
import 'package:reactive_forms/reactive_forms.dart';
import 'package:flutter_survey_js/ui/survey_configuration.dart';
import 'image.dart';
import 'package:flutter_survey_js/utils.dart';
Widget imagePickerBuilder(BuildContext context, s.Elementbase element,
    {ElementConfiguration? configuration}) {
  return ImagePickerElement(
    formControlName: element.name!,
    element: element as s.Imagepicker,
  ).wrapQuestionTitle(context, element, configuration: configuration);
}

class ImagePickerElement extends StatelessWidget {
  final String formControlName;
  final s.Imagepicker element;
  const ImagePickerElement(
      {Key? key, required this.formControlName, required this.element})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    //TODO multiple select
    final choices = element.choices
            ?.map((p) => p.castToImageitemvalue())
            .where((p) => p != null)
            .cast<s.Imageitemvalue>()
            .toList() ??
        [];

    return ReactiveGridItemPicker<Object, s.Imageitemvalue>(
      formControlName: formControlName,
      valueAccessor: _ValueAccessor(choices),
      items: choices,
      builder: (s.Imageitemvalue item, bool isCurrentItem,
          void Function() changeItem) {
        Color? foregroundColor;
        if (isCurrentItem) {
          foregroundColor =
              Theme.of(context).colorScheme.primary.withOpacity(0.4);
        }
        return InkWell(
            onTap: changeItem,
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Stack(
                  alignment: Alignment.center,
                  children: [
                    Container(
                        foregroundDecoration: BoxDecoration(
                          color: foregroundColor,
                        ),
                        child: urlToImage(item.imageLink,
                            width: element.imageWidth?.realValue,
                            height: element.imageHeight?.realValue)),
                    if (isCurrentItem) const Icon(Icons.done)
                  ],
                ),
                Flexible(
                  child: Container(
                      padding: EdgeInsets.only(top: 2),
                      child: Text(item.text?.getLocalizedText(context) ?? item.value?.toString() ?? "")),
                ),
              ],
            ));
      },
    );
  }
}

class _ValueAccessor extends ControlValueAccessor<Object, s.Imageitemvalue> {
  final List<s.Imageitemvalue> choices;

  _ValueAccessor(this.choices);

  @override
  s.Imageitemvalue? modelToViewValue(dynamic modelValue) {
    if (modelValue == null) {
      return null;
    }
    return choices.cast<s.Imageitemvalue?>().firstWhere(
        (element) => element?.value?.value == modelValue,
        orElse: () => null);
  }

  @override
  dynamic viewToModelValue(s.Imageitemvalue? viewValue) {
    return viewValue?.value?.value;
  }
}
