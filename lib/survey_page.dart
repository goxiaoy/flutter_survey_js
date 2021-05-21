// import 'package:artech_ui_kit/ui_kit.dart';
// import 'package:flutter/cupertino.dart';
// import 'package:flutter/material.dart';
// import 'package:indexed_list_view/indexed_list_view.dart';
// import 'package:logging/logging.dart';
//
// import './data/survey_element_data.dart';
// import 'data/survey_page_data.dart';
// import 'questionnaire_page.dart';
//
// class SurveyPage extends StatefulWidget {
//   final SurveyPageData pageData;
//   final SurveyPageController? pageController;
//   final void Function(SurveyElementData, dynamic) onElementValueChanged;
//
//   const SurveyPage(
//       {Key? key,
//       required this.user,
//       required this.pageData,
//       required this.onElementValueChanged,
//       required this.pageController})
//       : assert(pageData != null),
//         super(key: key);
//
//   @override
//   State<StatefulWidget> createState() {
//     return _SurveyPageState();
//   }
// }
//
// class _SurveyPageState extends State<SurveyPage> {
//   final Logger _logger = Logger('SurveyPage');
//
//   IndexedScrollController? _scrollController;
//
//   void _onElementChanged(SurveyElementData element, dynamic value) {
//     if (widget.onElementValueChanged != null)
//       return widget.onElementValueChanged(element, value);
//   }
//
//   void _scrollerListener() {
//     _logger.info('scrolling ${_scrollController!.position}');
//   }
//
//   @override
//   void initState() {
//     super.initState();
//     _logger.info('initState');
//     _scrollController = IndexedScrollController(
//         initialIndex: widget.pageController?.index ?? 0);
//     _scrollController!.addListener(_scrollerListener);
//     if (widget.pageController != null) {
//       widget.pageController!.addListener(() {
//         if (mounted) {
//           _scrollController!
//               .animateToIndex(widget.pageController!.index)
//               .then((value) {
//             if (widget.pageController!.validate!) {
//               Future.delayed(Duration.zero)
//                   .then((value) => QuestionnairePage.of(context)!.validate());
//             }
//           });
//         }
//       });
//     }
//   }
//
//   @override
//   void didChangeDependencies() {
//     super.didChangeDependencies();
//     _logger.info('didChangeDependencies');
//   }
//
//   @override
//   void didUpdateWidget(SurveyPage oldWidget) {
//     super.didUpdateWidget(oldWidget);
//     _logger.info('didUpdateWidget');
//     if (oldWidget.pageData.name != widget.pageData.name) {
//       final old = _scrollController;
//       _scrollController = IndexedScrollController(
//           initialIndex: widget.pageController!.index ?? 0);
//       Future.delayed(Duration.zero).then((value) => () {
//             old!.dispose();
//           });
//     }
//   }
//
//   @override
//   void dispose() {
//     _logger.info('dispose');
//     _scrollController!.removeListener(_scrollerListener);
//     _scrollController!.dispose();
//     super.dispose();
//   }
//
//   @override
//   void deactivate() {
//     _logger.info('deactivate');
//     super.deactivate();
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return GestureDetector(
//       onTap: () {
//         WidgetsBinding.instance!.focusManager.primaryFocus?.unfocus();
//       },
//       child: Container(
//         color: Colors.white,
//         child: Column(
//           mainAxisAlignment: MainAxisAlignment.start,
//           children: <Widget>[
//             SizedBox(
//               height: 8.0,
//             ),
//             if (widget.user != null)
//               Text('${widget.user!.fullName ?? widget.user!.username}'),
//             if (widget.user != null)
//               Text('${widget.user!.sex!.toLocaleText(context)} '),
//             if (widget.user != null)
//               Text('${S.of(context).age}:${widget.user!.age!.years}'),
//             Padding(
//               padding: const EdgeInsets.all(8.0),
//               child: _PageTitle(
//                 pageData: widget.pageData,
//                 onTimeout: () {
//                   setState(() {});
//                 },
//               ),
//             ),
//             Expanded(
//               child: IndexedListView.builder(
//                 maxItemCount: widget.pageData.elements!.length,
//                 minItemCount: 0,
//                 controller: _scrollController!,
//                 itemBuilder: (context, index) {
//                   if (index < widget.pageData.elements!.length && index >= 0) {
//                     return SurveyHelper.buildElement(
//                         elementData: widget.pageData.elements![index],
//                         onElementChanged: (dynamic value) {
//                           _onElementChanged(
//                               widget.pageData.elements![index], value);
//                         });
//                   } else {
//                     return Container(
//                       width: double.infinity,
//                       child: Image.asset(
//                         'assets/images/decision.jpg',
//                         fit: BoxFit.fill,
//                       ),
//                     );
//                   }
//                 },
//               ),
//             ) //: Container()
//           ],
//         ),
//       ),
//     );
//   }
// }
//
// class SurveyPageController extends ChangeNotifier {
//   int _index;
//   bool? _validate;
//   int get index => _index;
//   bool? get validate => _validate;
//
//   SurveyPageController({int initIndex = 0})
//       : _index = initIndex,
//         super();
//
//   Future<void> scrollToIndex(int index, {bool validate = true}) async {
//     _index = index;
//     _validate = validate;
//     notifyListeners();
//   }
//
//   @override
//   void dispose() {
//     super.dispose();
//   }
// }
//
// class _PageTitle extends StatelessWidget {
//   final SurveyPageData pageData;
//   final VoidCallback? onTimeout;
//   const _PageTitle({required this.pageData, this.onTimeout});
//
//   @override
//   Widget build(BuildContext context) {
//     return GestureDetector(
//       onTap: () {
//         QuestionnairePage.of(context)!.validate();
//       },
//       child: Container(
//         child: ListTile(
//           title: Text(pageData.title ?? ''),
//           subtitle: pageData.description != null
//               ? Expanded(child: Text(pageData.description!))
//               : null,
//           // trailing: TimerWidget(pageData: pageData,
//           //   onSecond: (int timeLeft) {
//           //     pageData.secondTimeLeft = timeLeft;
//           //   },
//           //   onTimeout: () {
//           //     pageData?.pageTimeout();
//           //     showToast(message: '${pageData.title} is time out');
//           //     onTimeout();
//           //   },
//           // ),
//         ),
//       ),
//     );
//   }
// }
