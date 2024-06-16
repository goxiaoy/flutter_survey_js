import 'dart:async';
import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_survey_js/flutter_survey_js.dart';
import 'package:flutter_survey_js_model/flutter_survey_js_model.dart' as s;
import 'package:logging/logging.dart';
import 'package:reactive_forms/reactive_forms.dart';

import 'element_node.dart';

Widget defaultBuilder(BuildContext context) {
  return const SurveyLayout();
}

class SurveyWidget extends StatefulWidget {
  final s.Survey survey;
  final Map<String, Object?>? answer;
  final FutureOr<void> Function(dynamic data)? onSubmit;
  final FutureOr<void> Function(dynamic data)? onErrors;
  final ValueSetter<Map<String, Object?>?>? onChange;

  final SurveyController? controller;
  final WidgetBuilder? builder;
  final bool removingEmptyFields;

  const SurveyWidget({
    Key? key,
    required this.survey,
    this.answer,
    this.onSubmit,
    this.onErrors,
    this.onChange,
    this.controller,
    this.builder,
    this.removingEmptyFields = true,
  }) : super(key: key);

  @override
  State<StatefulWidget> createState() => SurveyWidgetState();
}

class SurveyWidgetState extends State<SurveyWidget> {
  final Logger logger = Logger('SurveyWidgetState');

  late int pageCount;

  StreamSubscription<Map<String, Object?>?>? _listener;

  int _currentPage = 0;

  // TODO calculate initial page
  int initialPage = 0;

  int get currentPage => _currentPage;

  late ElementNode rootNode;

  FormGroup get formGroup => rootNode.control as FormGroup;

  @override
  void initState() {
    super.initState();
    widget.controller?._bind(this);
    rebuildForm();
  }

  static SurveyWidgetState of(BuildContext context) {
    return context.findAncestorStateOfType<SurveyWidgetState>()!;
  }

  void toPage(int newPage) {
    final p = max(0, min(pageCount - 1, newPage));
    setState(() {
      _currentPage = p;
    });
  }

  @override
  Widget build(BuildContext context) {
    return SurveyConfiguration.copyAncestor(
        context: context,
        child: ReactiveForm(
          formGroup: formGroup,
          child: StreamBuilder(
            stream: formGroup.valueChanges,
            builder: (BuildContext context,
                AsyncSnapshot<Map<String, Object?>?> snapshot) {
              return SurveyProvider(
                survey: widget.survey,
                formGroup: formGroup,
                rootNode: rootNode,
                currentPage: currentPage,
                initialPage: initialPage,
                child: Builder(
                    builder: (context) =>
                        (widget.builder ?? defaultBuilder)(context)),
              );
            },
          ),
        ));
  }

  void rerunExpression(Map<String, Object?> values) {
    // final properties = ExpressionHelper.getInitalProperty(widget.survey);
    rootNode.runExpression(values, {});
  }

  void rebuildForm() {
    logger.fine("Rebuild form");
    _listener?.cancel();
    //clear
    _currentPage = 0;
    rootNode = ElementNode(
        element: null,
        rawElement: null,
        survey: widget.survey,
        isRootSurvey: true);

    constructElementNode(context, rootNode);

    _listener = formGroup.valueChanges.listen((event) {
      rerunExpression(event ?? {});
      widget.onChange?.call(event == null ? null : removeEmptyField(event));
    });
    _setAnswer(widget.answer);
    rerunExpression(removeEmptyField(formGroup.value));
    pageCount = widget.survey.getPageCount();
  }

  bool submit() {
    if (formGroup.valid) {
      widget.onSubmit?.call(widget.removingEmptyFields
          ? removeEmptyField(formGroup.value)
          : formGroup.value);
      return true;
    } else {
      widget.onErrors?.call(formGroup.errors);
      formGroup.markAllAsTouched();
      return false;
    }
  }

  @override
  void dispose() {
    _listener?.cancel();
    widget.controller?._detach();
    super.dispose();
  }

  @override
  void didUpdateWidget(covariant SurveyWidget oldWidget) {
    if (oldWidget.survey != widget.survey) {
      rebuildForm();
    } else if (oldWidget.answer != widget.answer) {
      _setAnswer(widget.answer);
    }
    super.didUpdateWidget(oldWidget);
  }

  void _setAnswer(Map<String, Object?>? answer) {
    if (widget.answer != null) {
      formGroup.patchValue(widget.answer);
    }
  }

  // nextPageOrSubmit return true if submit or return false for next page
  bool nextPageOrSubmit() {
    final bool finished = _currentPage >= pageCount - 1;
    if (!finished) {
      toPage(_currentPage + 1);
    } else {
      submit();
    }
    return finished;
  }
}

class SurveyProvider extends InheritedWidget {
  final s.Survey survey;
  final FormGroup formGroup;

  final int currentPage;
  final int initialPage;

  final ElementNode rootNode;

  const SurveyProvider({
    Key? key,
    required Widget child,
    required this.survey,
    required this.formGroup,
    required this.rootNode,
    required this.currentPage,
    required this.initialPage,
  }) : super(key: key, child: child);

  static SurveyProvider of(BuildContext context) {
    return context.dependOnInheritedWidgetOfExactType<SurveyProvider>()!;
  }

  @override
  bool updateShouldNotify(covariant SurveyProvider oldWidget) => true;
}

// SurveyController use to control SurveyWidget behavior
class SurveyController {
  SurveyWidgetState? _widgetState;

  int get currentPage {
    assert(_widgetState != null, "SurveyWidget not initialized");
    return _widgetState!._currentPage;
  }

  int get pageCount {
    assert(_widgetState != null, "SurveyWidget not initialized");
    return _widgetState!.pageCount;
  }

  void _bind(SurveyWidgetState state) {
    assert(_widgetState == null,
        "Don't use one SurveyController to multiple SurveyWidget");
    _widgetState = state;
  }

  void _detach() {
    _widgetState = null;
  }

  bool submit() {
    assert(_widgetState != null, "SurveyWidget not initialized");
    return _widgetState!.submit();
  }

  // nextPageOrSubmit return true if submit or return false for next page
  bool nextPageOrSubmit() {
    assert(_widgetState != null, "SurveyWidget not initialized");
    return _widgetState!.nextPageOrSubmit();
  }

  void prePage() {
    assert(_widgetState != null, "SurveyWidget not initialized");
    toPage(currentPage - 1);
  }

  void toPage(int newPage) {
    assert(_widgetState != null, "SurveyWidget not initialized");
    _widgetState!.toPage(newPage);
  }
}

extension SurveyExtension on s.Survey {
  int getPageCount() {
    return (pages?.toList() ?? []).length;
  }
}
