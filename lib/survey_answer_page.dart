// import 'package:artech_cms/cms.dart';
// import 'package:flutter/material.dart';
// import 'package:intl/intl.dart';
//
// import './data/survey_element_data.dart';
// import './data/survey_page_data.dart';
// import './data/survey_questionnaire_data.dart';
// import './data/survey_value_data.dart';
// import '../generated/l10n.dart';
//
// class SurveyAnswerPage extends StatefulWidget {
//   final QuestionnaireAnswerData answerData;
//
//   const SurveyAnswerPage({Key? key, required this.answerData})
//       : assert(answerData != null),
//         super(key: key);
//
//   @override
//   State<StatefulWidget> createState() {
//     return _SurveyAnswerPageState();
//   }
// }
//
// class _SurveyAnswerPageState extends State<SurveyAnswerPage> {
//   SurveyQuestionnaire? _questionnaire;
//
//   List<Widget> _buildPages() {
//     return _questionnaire != null
//         ? _questionnaire!.renderPages
//             .map<Widget>((e) => Padding(
//                   padding: const EdgeInsets.all(8.0),
//                   child: _AnswerPageWidget(
//                     surveyPageData: e,
//                   ),
//                 ))
//             .toList()
//         : [];
//   }
//
//   @override
//   void initState() {
//     _questionnaire = SurveyQuestionnaire.fromJson(widget.answerData.data!);
//     super.initState();
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     _questionnaire?.buildRenderPages();
//
//     return Scaffold(
//       appBar: AppBar(
//         title: Text(widget.answerData.name ?? ''),
//       ),
//       body: SingleChildScrollView(
//         child: Column(
//           children: [
//             Text('${S.of(context).createdAt}:'
//                 '${DateFormat.yMMMMd().format(widget.answerData.created_at!.toLocal())}'),
//             Text('${S.of(context).updatedAt}:'
//                 '${DateFormat.yMMMMd().format(widget.answerData.updated_at!.toLocal())}'),
//             ..._buildPages()
//           ],
//         ),
//       ),
//     );
//   }
// }
//
// class _AnswerPageWidget extends StatelessWidget {
//   final SurveyPageData surveyPageData;
//   const _AnswerPageWidget({Key? key, required this.surveyPageData})
//       : assert(surveyPageData != null),
//         super(key: key);
//
//   List<Widget> _buildElement() {
//     return surveyPageData?.elements != null
//         ? surveyPageData.elements!
//             .map<Widget>((e) => _AnswerWidget(
//                   elementData: e,
//                 ))
//             .toList()
//         : [];
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       child: Column(
//         children: [
//           Padding(
//             padding: const EdgeInsets.all(8.0),
//             child: Text('${surveyPageData.title ?? surveyPageData.name}'),
//           ),
//           ..._buildElement()
//         ],
//       ),
//     );
//   }
// }
//
// class _AnswerWidget extends StatelessWidget {
//   final SurveyElementData elementData;
//   const _AnswerWidget({Key? key, required this.elementData})
//       : assert(elementData != null),
//         super(key: key);
//
//   Widget _buildValue() {
//     if (elementData.value == null) {
//       return Text('${elementData.value}');
//     } else {
//       if (elementData.value is List) {
//         List list = elementData.value;
//         return Column(
//           children: [
//             ...list.map<Widget>((e) {
//               if (e is SurveyValueData) {
//                 final SurveyValueData data = e;
//                 return Text(data.value);
//               } else {
//                 return Text(e.toString());
//               }
//             }).toList()
//           ],
//         );
//       } else {
//         if (elementData.value is SurveyValueData) {
//           final SurveyValueData data = elementData.value;
//           return Text(data.value);
//         } else {
//           return Text(elementData.value.toString());
//         }
//       }
//     }
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       child: Row(
//         mainAxisAlignment: MainAxisAlignment.spaceBetween,
//         crossAxisAlignment: CrossAxisAlignment.start,
//         children: [
//           Text('${elementData.index}.'
//               '${elementData.isRequired ? '* ' : ' '}'
//               '${elementData.title ?? elementData.name}'),
//           //Text(elementData.value.toString())
//           _buildValue()
//         ],
//       ),
//     );
//   }
// }
