// import 'package:flutter/material.dart';
// import 'package:flutter_colorpicker/flutter_colorpicker.dart';
// import 'package:flutter_survey_js_model/flutter_survey_js_model.dart' as s;
// import 'package:reactive_forms/reactive_forms.dart';
//
// import 'image.dart';
// import 'question_title.dart';
// import 'survey_element_factory.dart';
//
// final SurveyElementBuilder imagePickerBuilder =
//     (context, element, {ElementConfiguration? configuration}) {
//   return ImagePickerElement(
//     formControlName: element.name!,
//     element: element as s.ImagePicker,
//   ).wrapQuestionTitle(element, hasTitle: hasTitle);
// };
//
// class ImagePickerElement extends StatelessWidget {
//   final String formControlName;
//   final s.ImagePicker element;
//   const ImagePickerElement(
//       {Key? key, required this.formControlName, required this.element})
//       : super(key: key);
//   @override
//   Widget build(BuildContext context) {
//     //TODO multiple select
//     final choices = element.choices ?? [];
//     return ReactiveBlockItemPicker<dynamic, s.ImageItemValue>(
//       formControlName: formControlName,
//       valueAccessor: _ValueAccessor(choices),
//       items: choices.map<ItemBlockValue<s.ImageItemValue>>((e) {
//         return ItemBlockValue<s.ImageItemValue>(
//             value: e, label: (_) => Text(e.text ?? e.value?.toString() ?? ''));
//       }).toList(),
//       itemBuilder: (BuildContext context, ItemBlockValue<s.ImageItemValue> item,
//           bool isCurrentItem, Function changeItem) {
//         const color = Colors.grey;
//         return Column(
//           crossAxisAlignment: CrossAxisAlignment.center,
//           mainAxisAlignment: MainAxisAlignment.start,
//           children: [
//             Container(
//               height: 100,
//               width: 100,
//               child: Center(
//                 child: Material(
//                   color: Colors.transparent,
//                   child: InkWell(
//                     onTap: changeItem as void Function()?,
//                     child: Stack(
//                       children: [
//                         urlToImage(item.value.imageLink, width: 90, height: 90),
//                         AnimatedOpacity(
//                           duration: const Duration(milliseconds: 210),
//                           opacity: isCurrentItem ? 1.0 : 0.0,
//                           child: Icon(
//                             Icons.done,
//                             color: useWhiteForeground(color)
//                                 ? Colors.white
//                                 : Colors.black,
//                           ),
//                         )
//                       ],
//                     ),
//                   ),
//                 ),
//               ),
//             ),
//             Flexible(
//               child: Container(
//                   padding: EdgeInsets.only(top: 2), child: item.label(context)),
//             ),
//           ],
//         );
//       },
//     );
//   }
// }
//
// class _ValueAccessor extends ControlValueAccessor<dynamic, s.ImageItemValue> {
//   final List<s.ImageItemValue> choices;
//
//   _ValueAccessor(this.choices);
//
//   @override
//   s.ImageItemValue? modelToViewValue(dynamic modelValue) {
//     if (modelValue == null) {
//       return null;
//     }
//     return choices.cast<s.ImageItemValue?>().firstWhere(
//         (element) => element!.value == modelValue,
//         orElse: () => null);
//   }
//
//   @override
//   dynamic viewToModelValue(s.ImageItemValue? viewValue) {
//     return viewValue?.value;
//   }
// }
