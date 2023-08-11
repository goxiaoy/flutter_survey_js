// import 'dart:convert';
//
// import 'package:artech_core/core.dart';
// import 'package:artech_ui_kit/ui_kit.dart';
// import 'package:flutter/cupertino.dart';
// import 'package:flutter/material.dart';
// import 'package:logging/logging.dart';
//
// import './components/element_component_state.dart';
// import './data/survey_element_data.dart';
// import './data/survey_page_data.dart';
// import './data/survey_questionnaire_data.dart';
// import 'survey_page.dart';
//
// const double _kDefaultNavigatorSize = 30.0;
//
// class QuestionnairePage extends StatefulWidget {
//   final QuestionnaireData questionnaireData;
//
//   const QuestionnairePage({Key? key, required this.questionnaireData})
//       : assert(questionnaireData != null),
//         super(key: key);
//
//   static QuestionnairePageState? of(BuildContext context) {
//     ArgumentError.checkNotNull(context);
//     return context
//         .dependOnInheritedWidgetOfExactType<_QuestionnairePageInheritedWidget>()
//         ?.state;
//   }
//
//   @override
//   State<StatefulWidget> createState() {
//     return QuestionnairePageState();
//   }
// }
//
// class QuestionnairePageState extends State<QuestionnairePage> {
//   final Logger _logger = Logger('QuestionnairePageState');
//   final Set<ElementComponentState> _listElementState =
//       Set<ElementComponentState>();
//
//   QuestionnaireAnswerData? _answerData;
//   bool get submitted => _answerData?.submitted ?? true;
//
//   late bool _hasError;
//   late bool _submitting;
//
//   GlobalKey<FormState> _formStateKey =
//       new GlobalKey<FormState>(debugLabel: 'FormState');
//   SurveyQuestionnaire? _questionnaire;
//   late int _position;
//   SurveyPageController? _pageController;
//   int? _pageIndex;
//
//   List<SurveyPageData> get renderPages =>
//       _questionnaire?.renderPages ?? <SurveyPageData>[];
//
//   int? get pageNumber => renderPages?.length;
//
//   bool get hasNext => _position! < renderPages.length - 1;
//
//   bool get hasPrevious => _position! > 0;
//
//   FormState? get formSate => _formStateKey.currentState;
//
//   SurveyPageData? get currentPage {
//     if (_position != null &&
//         renderPages != null &&
//         _position! >= 0 &&
//         _position! < renderPages.length) {
//       return renderPages[_position!];
//     }
//     return null;
//   }
//
//   Widget? _appBarTitle() {
//     if (_questionnaire != null) {
//       if (_questionnaire!.title != null) {
//         return ListTile(
//           title: Text(
//             _questionnaire!.title!,
//             style: TextStyle(color: Colors.white),
//           ),
// //          subtitle: _questionnaire.description!=null
// //              ? Text(_questionnaire.description,
// //              style: TextStyle(color: Colors.white)):null,
//         );
//       } else {
//         return Column(
//           mainAxisAlignment: MainAxisAlignment.start,
//           crossAxisAlignment: CrossAxisAlignment.start,
//           children: <Widget>[
//             Text(currentPage?.title ?? currentPage?.name ?? ''),
//             currentPage != null && currentPage?.description != null
//                 ? Text(
//                     currentPage?.description ?? '',
//                     style: TextStyle(fontSize: 16.0),
//                   )
//                 : Container(),
//           ],
//         );
//       }
//     } else
//       return null;
//   }
//
//   List<Widget> _appBarActions() {
//     return [
//       Row(
//         children: <Widget>[
//           Container(
//             padding: EdgeInsets.only(right: 12.0),
//             child: Text(_questionnaire?.locale ?? 'English'),
//           ),
//           currentPage != null && renderPages != null
//               ? Container(
//                   padding: EdgeInsets.only(right: 12.0),
//                   child: Center(
//                       child: Text('${_position! + 1}/${renderPages.length}')))
//               : Container(),
//         ],
//       ),
//     ];
//   }
//
//   Widget _pageMoveButton(
//       {IconData? iconData, VoidCallback? onPressed, String? tooltip}) {
//     return IconButton(
//       icon: Icon(
//         iconData,
//         size: _kDefaultNavigatorSize,
//         color: Theme.of(context).disabledColor,
//       ),
//       onPressed: onPressed,
//       tooltip: tooltip,
//     );
//   }
//
//   Widget? _pageNavigationBar() {
//     if (currentPage != null) {
//       return Row(
//         mainAxisAlignment: MainAxisAlignment.spaceAround,
//         children: <Widget>[
//           _pageMoveButton(
//               iconData: Icons.keyboard_arrow_left,
//               onPressed: _onPrevious,
//               tooltip: S.of(context).previousPage),
//           _pageMoveButton(
//               iconData: Icons.keyboard_arrow_up,
//               onPressed: _onUp,
//               tooltip: S.of(context).upPage),
//           _pageMoveButton(
//               iconData: Icons.keyboard_arrow_down,
//               onPressed: _onDown,
//               tooltip: S.of(context).downPage),
//           _pageMoveButton(
//               iconData: Icons.keyboard_arrow_right,
//               onPressed: _onNext,
//               tooltip: S.of(context).nextPage),
//         ],
//       );
//     } else
//       return null;
//   }
//
//   Widget _appBarLeading() {
//     return IconButton(
//       icon: Icon(Icons.close),
//       onPressed: () {
//         // TODO: ask can back
//         Navigator.of(context).pop();
//       },
//       tooltip: S.of(context).close,
//     );
//   }
//
//   Widget _form() {
//     if (currentPage != null) {
//       return Form(
//         key: _formStateKey,
//         child: Column(
//           children: <Widget>[
//             Expanded(
//                 child: SurveyPage(
//               user: widget.user,
//               pageData: currentPage!,
//               onElementValueChanged: _onElementChanged,
//               pageController: _pageController,
//             )),
//             Container(
//                 padding: EdgeInsets.symmetric(vertical: 8.0),
//                 child: ElevatedButton(
//                     //loading: _submitting,
//                     child: Text(!submitted
//                         ? S.of(context).submit
//                         : S.of(context).submitted),
//                     onPressed: !submitted ? _onSubmit : null)),
//           ],
//         ),
//       );
//     } else
//       return Container(
//         child: Center(
//           child: Text(S.of(context).noData),
//         ),
//       );
//   }
//
//   void _onUp() {
//     if (currentPage != null) {
//       if (_pageIndex == null) {
//         _moveTo(0);
//       } else {
//         if (_pageIndex != 0) {
//           _moveTo(_pageIndex! - 1);
//         }
//       }
//     }
//   }
//
//   void _onDown() {
//     if (currentPage != null) {
//       if (_pageIndex == null) {
//         _moveTo(currentPage!.elements!.length - 1);
//       } else {
//         if (_pageIndex != currentPage!.elements!.length - 1) {
//           _moveTo(_pageIndex! + 1);
//         }
//       }
//     }
//   }
//
//   void _onNext() {
//     if (currentPage != null) {
//       if (!validate()) {
//         final int index = currentPage!.findRequiredNotValidatedIndex();
//         if (index != -1) {
//           _moveTo(index);
//           return;
//         }
//       }
//
//       if (_position! < renderPages.length - 1) {
//         setState(() {
//           _position++;
//           _pageIndex = null;
//         });
//       }
//     }
//   }
//
//   void _onPrevious() {
//     if (currentPage != null) {
//       if (_position! > 0) {
//         setState(() {
//           _position--;
//           _pageIndex = null;
//         });
//       }
//     }
//   }
//
//   void _onElementChanged(SurveyElementData element, dynamic value) {
//     if (currentPage != null) {
//       _logger.info('Page: ${currentPage!.name} ,'
//           'Element: ${element.name}, '
//           'Value: ${value.toString()}, Type: ${value.runtimeType}');
//       setState(() {
//         _questionnaire!.buildRenderPages();
//       });
//     }
//   }
//
//   Future<void> _submittingAsync() async {
//     throw UnimplementedError();
//     // var ehr = await EhrRepository().getUserEhrAsync(
//     //     hasPostData: widget.hasPostData, userId: widget.user.id);
//     //
//     // //_logger.info('getUserEhrAsync success ${ehr.toString()}');
//     //
//     // _answerData = await QuestionnaireAssessmentRepository().updateAnswerAsync(
//     //     submitted: true,
//     //     surveyQuestionnaire: _questionnaire, answerId: _answerData.id);
//     //
//     // //_logger.info('Update answer success ${answer.toString()}');
//     //
//     //
//     // ehr = await EhrRepository().updateAnswerAsync(
//     //     ehrId: ehr.id,
//     //     answerId: _answerData.id);
//
//     //_logger.info('updateAnswerAsync success ${ehr.toString()}');
//   }
//
//   void _onSubmit() {
//     _logger.info('Answer: ${_questionnaire!.getAnswer().toString()}');
//     if (!_questionnaire!.canSubmit) {
//       final index = currentPage!.findRequiredNotValidatedIndex();
//       if (index != -1) _moveTo(index);
//       return;
//     }
//     setState(() {
//       _submitting = true;
//     });
//
//     _submittingAsync().then((value) {
//       if (mounted) {
//         setState(() {});
//       }
//       showToast('${S.of(context).submitted}');
//       Navigator.of(context).pop();
//     }).catchError((error) {
//       if (mounted)
//         serviceLocator<NavigationService>()
//             .showErrorDialog(S.of(context).questionnaire, error);
//       setState(() {
//         _submitting = false;
//       });
//     });
//   }
//
//   void registerElement(ElementComponentState elementComponentState) {
//     final bool result = _listElementState.add(elementComponentState);
//     if (result) _logger.info('Register $result ${_listElementState.length}');
//   }
//
//   void unRegisterElement(ElementComponentState elementComponentState) {
//     final bool result = _listElementState.remove(elementComponentState);
//     _logger.info('UnRegister $result ${_listElementState.length}');
//   }
//
//   void _moveTo(int index) {
//     _pageIndex = index;
//     _pageController!.scrollToIndex(index);
//   }
//
//   bool validate() {
//     _logger.info('Validate the page');
//     bool _validate = formSate!.validate();
//     _listElementState.forEach((element) {
//       if (!element.validate()) _validate = false;
//     });
//     return _validate;
//   }
//
//   @override
//   void initState() {
//     super.initState();
//     _position = 0;
//     _hasError = false;
//     _submitting = false;
//     _pageController = new SurveyPageController(initIndex: 0);
//
//     final test = true;
//     if (test) {
//       var value = jsonDecode(widget.questionnaireData.data!);
//       var value2 = jsonDecode(value);
//       _questionnaire = SurveyQuestionnaire.fromJson(value2);
//       _questionnaire!.buildRenderPages();
//       _answerData = QuestionnaireAnswerData();
//     } else {
//       // TODO: api ???
//       SurveyHelper.initialAnswer(
//               user: widget.user!, questionnaireData: widget.questionnaireData)
//           .then((value) {
//         if (mounted)
//           setState(() {
//             _answerData = value;
//             _questionnaire = SurveyQuestionnaire.fromJson(_answerData!.data!);
//             _questionnaire!.buildRenderPages();
//             if (_answerData!.submitted!) {
//               _questionnaire!.forceEnable(false);
//             }
//             _logger.info(_questionnaire.toString());
//           });
//       }).catchError((error) {
//         serviceLocator<NavigationService>()
//             .showErrorDialog(S.of(context).questionnaire, error);
//         if (mounted) {
//           setState(() {
//             _hasError = true;
//           });
//         }
//       });
//     }
//   }
//
//   @override
//   void didUpdateWidget(QuestionnairePage oldWidget) {
//     super.didUpdateWidget(oldWidget);
//     _logger.info('didUpdateWidget');
//   }
//
//   @override
//   void didChangeDependencies() {
//     super.didChangeDependencies();
//     _logger.info('didChangeDependencies');
//   }
//
//   @override
//   void dispose() {
//     _logger.info('Elements: ${_listElementState.length}');
//     assert(_listElementState.length == 0);
//     _pageController!.dispose();
//     if (!submitted && !_submitting) {
//       QuestionnaireRepository.resolve().updateAnswerAsync(
//           submitted: false,
//           surveyQuestionnaire: _questionnaire,
//           answerId: _answerData!.id);
//     }
//     super.dispose();
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     //_logger.info('build');
//     return Scaffold(
//       bottomNavigationBar: _pageNavigationBar(),
//       appBar: AppBar(
//         leading: _appBarLeading(),
//         actions: _appBarActions(),
//         title: _appBarTitle(),
//       ),
//       body: _QuestionnairePageInheritedWidget(
//         state: this,
//         child: _answerData != null
//             ? _form()
//             : _hasError
//                 ? Container()
//                 : Center(
//                     child: CircularProgressIndicator(),
//                   ),
//       ),
//     );
//   }
// }
//
// class _QuestionnairePageInheritedWidget extends InheritedWidget {
//   final QuestionnairePageState state;
//
//   const _QuestionnairePageInheritedWidget(
//       {required this.state, required Widget child})
//       : super(child: child);
//
//   @override
//   bool updateShouldNotify(InheritedWidget oldWidget) {
//     return true;
//   }
// }
