import 'dart:async';
import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_survey_js/generated/l10n.dart';
import 'package:flutter_survey_js/model/survey.dart' as s;
import 'package:im_stepper/stepper.dart';
import 'package:logging/logging.dart';
import 'package:reactive_forms/reactive_forms.dart';

import 'elements_state.dart';
import 'form_control.dart';
import 'survey_page_widget.dart';

class SurveyWidget extends StatefulWidget {
  final s.Survey survey;
  final Map<String, Object?>? answer;
  final FutureOr<void> Function(dynamic data)? onSubmit;
  final ValueSetter<Map<String, Object?>?>? onChange;
  final bool showQuestionsInOnePage;
  final SurveyController? controller;
  final bool hideSubmitButton;

  const SurveyWidget({
    Key? key,
    required this.survey,
    this.answer,
    this.onSubmit,
    this.onChange,
    this.showQuestionsInOnePage = false,
    this.controller,
    this.hideSubmitButton = false,
  }) : super(key: key);
  @override
  State<StatefulWidget> createState() => SurveyWidgetState();
}

class SurveyWidgetState extends State<SurveyWidget> {
  final Logger logger = Logger('SurveyWidgetState');
  late FormGroup formGroup;
  late Map<s.ElementBase, Object> _controlsMap;
  late PageController pageController;

  late int pageCount;

  late List<s.Page> pages;

  StreamSubscription<Map<String, Object?>?>? _listener;

  int _currentPage = 0;

  @override
  void initState() {
    super.initState();
    if (widget.controller != null) {
      widget.controller?.addListener(() {
        submit();
      });
    }
    rebuildForm();
  }

  Future<void> toPage(int newPage) async {
    final p = min(pageCount - 1, max(0, newPage));
    await pageController.animateToPage(p,
        duration: Duration(milliseconds: 100), curve: Curves.easeIn);
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        if (widget.survey.title != null)
          Container(
            child: ListTile(
              title: Text(widget.survey.title!),
            ),
          ),
        Expanded(
            child: ReactiveForm(
          formGroup: this.formGroup,
          child: StreamBuilder(
            stream: this.formGroup.valueChanges,
            builder: (BuildContext context,
                AsyncSnapshot<Map<String, Object?>?> snapshot) {
              return rebuildPages();
            },
          ),
        ))
      ],
    );
  }

  void rebuildForm() {
    logger.info("Rebuild form");
    _listener?.cancel();
    //clear
    _controlsMap = {};
    pageController = PageController(
      initialPage: _currentPage,
      keepPage: true,
    );
    _currentPage = 0;
    pageController.addListener(() {
      setState(() {
        _currentPage = pageController.page!.toInt();
      });
    });
    this.formGroup = elementsToFormGroup(widget.survey.getElements(),
        controlsMap: _controlsMap);

    formGroup.value = widget.answer;

    _reCalculatePages();

    _listener = this.formGroup.valueChanges.listen((event) {
      logger.info('Value changed $event');
      widget.onChange?.call(event);
    });
  }

  void _reCalculatePages() {
    if (widget.survey.questions != null) {
      pages = [
        s.Page()
          ..elements = widget.survey.questions
          ..description = widget.survey.description
      ];
    } else {
      if (!widget.showQuestionsInOnePage) {
        pages = widget.survey.pages ?? [];
      } else {
        pages = [
          s.Page()
            ..elements = (widget.survey.pages ?? [])
                .map<List<s.ElementBase>>(
                    (e) => e.elements ?? <s.ElementBase>[])
                .fold(<s.ElementBase>[],
                    (previousValue, element) => previousValue!..addAll(element))
        ];
      }
    }
  }

  Widget rebuildPages() {
    //TODO recalculate page count and visible
    pageCount = widget.survey.questions == null
        ? (widget.survey.pages ?? []).length
        : 1;
    //TODO calculate status

    Map<s.ElementBase, ElementStatus> status = {};
    int index = 0;
    for (final kv in _controlsMap.entries) {
      var visible = true;
      status[kv.key] = ElementStatus(indexAll: index);
      if (visible) {
        index++;
      }
    }
    final elementsState = ElementsState(status);
    return SurveyProvider(
        survey: widget.survey,
        formGroup: formGroup,
        elementsState: elementsState,
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              if (pageCount > 1)
                DotStepper(
                  // direction: Axis.vertical,
                  dotCount: pageCount,
                  dotRadius: 12,
                  activeStep: _currentPage,
                  shape: Shape.circle,
                  spacing: 10,
                  indicator: Indicator.shift,
                  onDotTapped: (tappedDotIndex) async {
                    toPage(tappedDotIndex);
                  },
                  indicatorDecoration: IndicatorDecoration(
                      color: Theme.of(context).primaryColor,
                      strokeColor: Theme.of(context).primaryColor),
                ),

              /// Jump buttons.
              Expanded(
                child: buildPages(),
              ),

              // Next and Previous buttons.
              Row(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  if (_currentPage != 0) previousButton(),
                  if (!(_currentPage == pageCount - 1 &&
                      widget.hideSubmitButton))
                    nextButton()
                ],
              )
            ],
          ),
        ));
  }

  void submit() {
    formGroup.markAllAsTouched();
    if (formGroup.valid) {
      widget.onSubmit?.call(formGroup.value);
    }
  }

  void dispose() {
    _listener?.cancel();
    super.dispose();
  }

  Widget buildPages() {
    return PageView.builder(
      controller: pageController,
      physics: NeverScrollableScrollPhysics(),
      itemBuilder: (BuildContext context, int index) {
        final currentPage = pages[index];
        //build elements
        return SurveyPageWidget(
          page: currentPage,
          key: ObjectKey(currentPage),
        );
      },
    );
  }

  /// Returns the next button widget.
  Widget nextButton() {
    final bool finished = _currentPage == pageCount - 1;
    return ElevatedButton(
      child:
          Text(finished ? S.of(context).submitSurvey : S.of(context).nextPage),
      onPressed: () {
        if (!finished) {
          toPage(_currentPage + 1);
        } else {
          submit();
        }
      },
    );
  }

  /// Returns the previous button widget.
  Widget previousButton() {
    return ElevatedButton(
      child: Text(S.of(context).previousPage),
      onPressed: () {
        setState(() {
          toPage(_currentPage - 1);
        });
      },
    );
  }

  @override
  void didUpdateWidget(covariant SurveyWidget oldWidget) {
    if (oldWidget.survey != widget.survey) {
      rebuildForm();
    }
    if (oldWidget.showQuestionsInOnePage != widget.showQuestionsInOnePage) {
      _reCalculatePages();
    }
    super.didUpdateWidget(oldWidget);
  }
}

class SurveyProvider extends InheritedWidget {
  final Widget child;
  final s.Survey survey;
  final FormGroup formGroup;
  final ElementsState elementsState;
  SurveyProvider({
    required this.elementsState,
    required this.child,
    required this.survey,
    required this.formGroup,
  }) : super(child: child);

  static SurveyProvider of(BuildContext context) {
    return context.dependOnInheritedWidgetOfExactType<SurveyProvider>()!;
  }

  @override
  bool updateShouldNotify(covariant SurveyProvider oldWidget) => true;
}

extension SurveyFormExtension on s.Survey {
  List<s.ElementBase> getElements() {
    return questions ??
        pages!.fold<List<s.ElementBase>>(
            [],
            (previousValue, element) =>
                previousValue..addAll(element.elements ?? []));
  }
}

class SurveyController extends ChangeNotifier {
  void submit() {
    notifyListeners();
  }
}
