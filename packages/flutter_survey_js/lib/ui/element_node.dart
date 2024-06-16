import 'package:flutter/widgets.dart';
import 'package:flutter_survey_js/flutter_survey_js.dart' as s;
import 'package:flutter_survey_js/ui/elements/matrix_dropdown_base.dart';
import 'package:flutter_survey_js/ui/reactive/reactive.dart';
import 'package:flutter_survey_js/ui/survey_configuration.dart';
import 'package:flutter_survey_js/ui/survey_element_factory.dart';
import 'package:flutter_survey_js/ui/validators.dart';
import 'package:flutter_survey_js_model/flutter_survey_js_model.dart';
import 'package:reactive_forms/reactive_forms.dart';
import 'elements/multiple_text.dart';

class IndexParams {
  int preIndexInPageOfAll;
  int preIndexInPage;

  int prePanelIndex;
  int prePanelIndexOfAll;

  int preIndexOfAll;
  int pageIndex;

  IndexParams({
    required this.preIndexInPageOfAll,
    required this.preIndexInPage,
    required this.preIndexOfAll,
    required this.prePanelIndex,
    required this.prePanelIndexOfAll,
    required this.pageIndex,
  });

  factory IndexParams.root() {
    return IndexParams(
        preIndexInPageOfAll: 0,
        preIndexInPage: 0,
        preIndexOfAll: 0,
        prePanelIndex: 0,
        prePanelIndexOfAll: 0,
        pageIndex: 0);
  }
}

class ElementNode {
  ElementNode(
      {required this.element,
      required this.rawElement,
      required this.survey,
      this.isRootSurvey = false,
      this.parent});

  final Object? rawElement;

  final s.Elementbase? element;

  AbstractControl? control;

  s.Survey survey;
  bool isRootSurvey = false;
  ElementNode? parent;
  List<ElementNode> children = [];

  bool? visibleIf;

  bool? enableIf;

  bool? requireIf;

  bool? columnsVisibleIf;
  bool? rowsVisibleIf;

  bool? choicesVisible;
  bool? choicesEnable;
  bool? templateVisible;

  //element index
  int? indexAll;

  //not including invisible panel items
  int? panelIndex;

  int? panelIndexOfAll;

  int? indexInPage;

  int pageIndex = 0;

  bool? isInsideDynamic;

  // index in dynamic panel
  int? dynamicPanelIndex;

  Object? defaultValue;

  bool isLatestUnfinishedQuestion = false;

  int? rowIndex;
  String? rowName;

  Object? minValue;
  Object? maxValue;
  Object? expressionValue;

  Object? get value {
    //for some elements implements Panelbase(like Panel and Page), control ==null;
    if (control != null) {
      return control!.value;
    }
    Map<String, Object?> ret = {};
    for (final child in children) {
      final v = child.value;
      if (v != null) {
        if (v is Map<String, Object?>) {
          ret.addEntries(v.entries);
        }
      }
    }
    return ret;
  }

  void addChild(ElementNode node) {
    node.parent = this;
    children.add(node);
  }

  void setEnabled(bool enabled) {
    if (control != null) {
      if (enabled) {
        control!.markAsEnabled();
      } else {
        control!.markAsDisabled();
        control!.value = null;
      }
    }
    for (final v in children) {
      v.setEnabled(enabled);
    }
  }

  void calIndexAfterExpression(IndexParams params,
      {bool insideDynamic = false}) {
    if (element == null && !isRootSurvey) {
      for (final c in children) {
        c.calIndexAfterExpression(params, insideDynamic: true);
      }
      return;
    }
    if (element is s.Matrixdynamic || element is s.Paneldynamic) {
      params.prePanelIndex = 0;
      params.prePanelIndexOfAll = 0;
      if (visibleIf ?? true) {
        indexInPage = params.preIndexInPage;
        params.preIndexInPage++;
        indexAll = params.preIndexOfAll;
        params.preIndexOfAll++;
      }
      for (final c in children) {
        c.calIndexAfterExpression(params, insideDynamic: true);
      }
    } else if (element is s.Question && element is! Nonvalue) {
      isInsideDynamic = insideDynamic;
      pageIndex = params.pageIndex;
      if (insideDynamic) {
        panelIndexOfAll = params.prePanelIndexOfAll;
        params.prePanelIndexOfAll++;
        if (visibleIf ?? true) {
          panelIndex = params.prePanelIndex;
          params.prePanelIndex++;
        }
      } else {
        if (visibleIf ?? true) {
          indexInPage = params.preIndexInPage;
          params.preIndexInPage++;
          indexAll = params.preIndexOfAll;
          params.preIndexOfAll++;
        }
      }
    } else if (element is s.Page) {
      params.preIndexInPage = 0;
      params.preIndexInPageOfAll = 0;

      for (final c in children) {
        c.calIndexAfterExpression(params);
      }
      params.pageIndex++;
    } else {
      for (final c in children) {
        c.calIndexAfterExpression(params);
      }
    }
  }

  void runExpression(
      Map<String, Object?> values, Map<String, Object?> properties) {
    final newValues = Map.fromEntries(values.entries);
    final newProperties = Map.fromEntries(properties.entries);

    // add addition context values
    {
      if (element is s.Question) {
        newProperties["question"] = s.surveySerializers.serialize(element);
      }

      if (element is s.Matrixdropdownbase) {
        newValues[MaxtrixDropdownBaseVar.ownerVariableName] = value;
        newValues[MaxtrixDropdownBaseVar.indexVariableName] = rowIndex;
        newValues[MaxtrixDropdownBaseVar.rowValueVariableName] = rowName;

        //TODO difference of MaxtrixDropdownBaseVar.rowVariableName and MaxtrixDropdownBaseVar.ownerVariableName ?

        newProperties[MaxtrixDropdownBaseVar.rowVariableName] = value;
      }
      if (element is s.Paneldynamic) {
        newValues[QuestionPanelDynamicVar.parentItemVariableName] =
            parent?.value;
      }
    }

    //run self expression
    {
      if (element is s.Question) {
        final e = element as s.Question;
        if (e.requiredIf?.isNotEmpty ?? false) {
          requireIf = s.getRunner().runCondition(e.requiredIf!, newValues,
                  properties: newProperties) ??
              false;
        }
        if (e.enableIf?.isNotEmpty ?? false) {
          enableIf = s.getRunner().runCondition(e.enableIf!, newValues,
                  properties: newProperties) ??
              true;
        }
        if (e.visibleIf?.isNotEmpty ?? false) {
          visibleIf = s.getRunner().runCondition(e.visibleIf!, newValues,
                  properties: newProperties) ??
              true;
        }
        if (e.defaultValueExpression?.isNotEmpty ?? false) {
          defaultValue = s.getRunner().runExpression(
                  e.defaultValueExpression!, newValues,
                  properties: newProperties) ??
              true;
        }
      }
      if (element is s.Panelbase) {
        final e = element as s.Panelbase;
        if (e.requiredIf?.isNotEmpty ?? false) {
          requireIf = s.getRunner().runCondition(e.requiredIf!, newValues,
                  properties: newProperties) ??
              false;
        }
        if (e.enableIf?.isNotEmpty ?? false) {
          enableIf = s.getRunner().runCondition(e.enableIf!, newValues,
                  properties: newProperties) ??
              true;
        }
        if (e.visibleIf?.isNotEmpty ?? false) {
          visibleIf = s.getRunner().runCondition(e.visibleIf!, newValues,
                  properties: newProperties) ??
              true;
        }
      }
      if (element is s.Text) {
        final e = element as s.Text;
        if (e.minValueExpression?.isNotEmpty ?? false) {
          minValue = s.getRunner().runExpression(
              e.minValueExpression!, newValues,
              properties: newProperties);
        }
        if (e.maxValueExpression?.isNotEmpty ?? false) {
          maxValue = s.getRunner().runExpression(
              e.maxValueExpression!, newValues,
              properties: newProperties);
        }
      }
      if (element is s.Expression) {
        final e = element as s.Expression;
        expressionValue = s
            .getRunner()
            .runExpression(e.expression!, newValues, properties: newProperties);
      }
      if (element is s.Matrixbase) {
        final e = element as s.Matrixbase;
        if (e.columnsVisibleIf?.isNotEmpty ?? false) {
          columnsVisibleIf = s.getRunner().runCondition(
                  e.columnsVisibleIf!, newValues,
                  properties: newProperties) ??
              true;
        }
        if (e.rowsVisibleIf?.isNotEmpty ?? false) {
          rowsVisibleIf = s.getRunner().runCondition(
                  e.rowsVisibleIf!, newValues,
                  properties: newProperties) ??
              true;
        }
      }
      if (element is s.Selectbase) {
        final e = element as s.Selectbase;
        if (e.choicesVisibleIf?.isNotEmpty ?? false) {
          choicesVisible = s.getRunner().runCondition(
                  e.choicesVisibleIf!, newValues,
                  properties: newProperties) ??
              true;
        }
        if (e.choicesEnableIf?.isNotEmpty ?? false) {
          choicesEnable = s.getRunner().runCondition(
                  e.choicesEnableIf!, newValues,
                  properties: newProperties) ??
              true;
        }
      }
      if (element is s.Paneldynamic) {
        final e = element as s.Paneldynamic;
        if (e.templateVisibleIf?.isNotEmpty ?? false) {
          templateVisible = s.getRunner().runCondition(
                  e.templateVisibleIf!, newValues,
                  properties: newProperties) ??
              true;
        }
      }
    }

    //run children
    {
      bool hasRunChildren = false;
      if (element is s.Paneldynamic) {
        for (var panelIndex = 0; panelIndex < children.length; panelIndex++) {
          newValues[QuestionPanelDynamicVar.itemVariableName] =
              children[panelIndex].value;
          newValues[QuestionPanelDynamicVar.indexVariableName] = panelIndex;
          children[panelIndex].dynamicPanelIndex = panelIndex;
          children[panelIndex].runExpression(newValues, newProperties);
        }
        hasRunChildren = true;
      }
      //TODO matrixdynamic?
      if (!hasRunChildren) {
        for (var c in children) {
          c.runExpression(newValues, newProperties);
        }
      }

      if (isRootSurvey) {
        calIndexAfterExpression(IndexParams.root());
      }
    }
  }

  ElementNode? findByCondition(bool Function(ElementNode node) condition) {
    if (condition(this)) {
      return this;
    }
    for (final child in children) {
      final f = child.findByCondition(condition);
      if (f != null) {
        return f;
      }
    }
    return null;
  }

  ElementNode? findByElement({Object? rawElement, Elementbase? element}) {
    assert(rawElement != null || element != null);
    return findByCondition((node) {
      final r =
          (rawElement != null && identical(rawElement, node.rawElement)) ||
              (element != null && identical(element, node.element));
      return r;
    });
  }

  FormArray get dynamicFormArray {
    assert(control is FormArray);
    return control as FormArray;
  }

  void dynamicArrayAddNew(BuildContext context,
      {List<Validator> validators = const [],
      List<AsyncValidator> asyncValidators = const [],
      Object? value}) {
    assert(control is FormArray);
    final formArray = control as FormArray;

    if (element is s.Matrixdynamic) {
      final matrix = element as s.Matrixdynamic;
      final rowNode =
          ElementNode(element: null, rawElement: null, survey: survey);
      final rowNodeControl = surveyfb.group({}, validators, asyncValidators);
      rowNode.control = rowNodeControl;
      final columns = (matrix.columns?.toList() ?? []);
      for (var columnIndex = 0; columnIndex < columns.length; columnIndex++) {
        final columnElement =
            matrixDropdownColumnToQuestion(matrix, columns[columnIndex]);
        final columnNode = ElementNode(
            element: columnElement,
            rawElement: columns[columnIndex],
            survey: survey);
        rowNode.addChild(columnNode);
        constructElementNode(context, columnNode,
            asyncValidators: asyncValidators,
            validators: validators,
            value: columnNode.element is Panelbase
                ? value
                : tryGetValue(columnElement.name!, value));
        rowNodeControl.addAll({columnElement.name!: columnNode.control!});
      }
      addChild(rowNode);
      formArray.add(rowNodeControl);
    } else if (element is s.Paneldynamic) {
      final panelDynamic = element as s.Paneldynamic;
      final rowNode =
          ElementNode(element: null, rawElement: null, survey: survey);
      final rowNodeControl = surveyfb.group({}, validators, asyncValidators);
      rowNode.control = rowNodeControl;
      final questions = panelDynamic.getElements();
      for (var questionIndex = 0;
          questionIndex < questions.length;
          questionIndex++) {
        final questionNode = ElementNode(
            element: questions[questionIndex],
            rawElement: questions[questionIndex],
            survey: survey);
        rowNode.addChild(questionNode);
        constructElementNode(context, questionNode,
            asyncValidators: asyncValidators,
            validators: validators,
            value: questionNode.element is Panelbase
                ? value
                : tryGetValue(questionNode.element!.name!, value));
        //panel name could be null, and all of it's controls will be handled later
        if (questions[questionIndex].name != null &&
            questionNode.control != null) {
          rowNodeControl
              .addAll({questions[questionIndex].name!: questionNode.control!});
        }
      }
      addChild(rowNode);
      formArray.add(rowNodeControl);
    }
  }

  void dynamicArrayRemoveNode(ElementNode node) {
    assert(control is FormArray);
    final formArray = control as FormArray;
    children.remove(node);
    formArray.remove(node.control!);
  }

  void dynamicArrayRemoveAll() {
    assert(control is FormArray);
    final formArray = control as FormArray;

    for (final node in List.from(children)) {
      children.remove(node);
    }
    formArray.clear();
  }
}

class MaxtrixDropdownBaseVar {
  static const rowVariableName = "row";
  static const ownerVariableName = "self";
  static const indexVariableName = "rowIndex";
  static const rowValueVariableName = "rowValue";
}

class QuestionPanelDynamicVar {
  static const itemVariableName = "panel";
  static const parentItemVariableName = "parentpanel";
  static const indexVariableName = "panelIndex";
  static const visibleIndexVariableName = "visiblePanelIndex";
}

// constructElementNode set node.control
void constructElementNode(BuildContext context, ElementNode node,
    {List<Validator> validators = const [],
    List<AsyncValidator> asyncValidators = const [],
    Object? value}) {
  if (node.isRootSurvey) {
    final survey = node.survey;
    final pages = (survey.pages?.toList() ?? []);
    node.control = surveyfb.group({}, validators, asyncValidators);
    for (var i = 0; i < pages.length; i++) {
      //page node get no control
      final pageNode = ElementNode(
          rawElement: pages[i],
          element: pages[i],
          survey: node.survey,
          parent: node);
      pageNode.control = surveyfb.group({}, validators, asyncValidators);
      node.addChild(pageNode);
      constructElementNode(context, pageNode,
          validators: validators,
          asyncValidators: asyncValidators,
          value: value);
    }
  } else {
    final nodeElement = node.element;

    if (nodeElement is s.Matrixdropdown) {
      final rows =
          (nodeElement.rows?.map((p) => p.castToItemvalue()) ?? []).toList();
      final nodeControl = surveyfb.group({}, validators, asyncValidators);
      node.control = nodeControl;
      for (var rowIndex = 0; rowIndex < rows.length; rowIndex++) {
        final rowName = rows[rowIndex].value.toString();
        final rowNode = ElementNode(
            element: null, rawElement: rows[rowIndex], survey: node.survey);
        node.addChild(rowNode);
        rowNode.rowIndex = rowIndex;
        rowNode.rowName = rowName;
        final rowNodeControl = surveyfb.group({}, validators, asyncValidators);
        rowNode.control = rowNodeControl;
        final columns = (nodeElement.columns?.toList() ?? []);
        for (var columnIndex = 0; columnIndex < columns.length; columnIndex++) {
          final element =
              matrixDropdownColumnToQuestion(nodeElement, columns[columnIndex]);
          final columnNode = ElementNode(
              element: element,
              rawElement: columns[columnIndex],
              survey: node.survey);
          rowNode.addChild(columnNode);
          constructElementNode(context, columnNode,
              asyncValidators: asyncValidators,
              validators: validators,
              value: tryGetValue(rowName, getDefaultValue(nodeElement, value)));
          rowNodeControl.addAll({element.name!: columnNode.control!});
        }

        nodeControl.addAll({rowName: rowNode.control!});
      }
    } else if (nodeElement is s.Panelbase) {
      //could be page or panel
      final questions = nodeElement.getElements();
      final panelControl = surveyfb.group({}, validators, asyncValidators);
      node.control = panelControl;
      for (var panelIndex = 0; panelIndex < questions.length; panelIndex++) {
        final questionNode = ElementNode(
            element: questions[panelIndex],
            rawElement: questions[panelIndex],
            survey: node.survey);
        node.addChild(questionNode);
        questionNode.dynamicPanelIndex = panelIndex;
        constructElementNode(context, questionNode,
            asyncValidators: asyncValidators,
            validators: validators,
            value: questionNode.element is Panelbase
                ? value
                : tryGetValue(questionNode.element!.name!, value));
        //panel name could be null, and all of it's controls will be handled later
        if (questions[panelIndex].name != null &&
            questionNode.control != null) {
          panelControl
              .addAll({questions[panelIndex].name!: questionNode.control!});
        }
      }
    } else if (nodeElement is s.Multipletext) {
      final texts = nodeElement.items.toList().map(toText).toList();
      final nodeControl = surveyfb.group({}, validators, asyncValidators);
      node.control = nodeControl;
      for (var i = 0; i < texts.length; i++) {
        final questionNode = ElementNode(
            element: texts[i],
            rawElement: nodeElement.items[i],
            survey: node.survey);
        node.addChild(questionNode);
        constructElementNode(context, questionNode,
            asyncValidators: asyncValidators,
            validators: validators,
            value: tryGetValue(
                texts[i].name!, getDefaultValue(nodeElement, value)));
        nodeControl.addAll({texts[i].name!: questionNode.control!});
      }
    } else if (nodeElement is Matrixdynamic) {
      final nodeControl = surveyfb.array([]);
      node.control = nodeControl;
      //handle default value
      final values = nodeElement.defaultValue.tryCastToListObj() ??
          value.tryCastToList() ??
          [];
      for (final v in values) {
        node.dynamicArrayAddNew(context,
            validators: validators, asyncValidators: asyncValidators, value: v);
      }
    } else if (nodeElement is Paneldynamic) {
      final nodeControl = surveyfb.array([]);
      node.control = nodeControl;
      //handle default value
      final values = nodeElement.defaultValue.tryCastToListObj() ??
          value.tryCastToList() ??
          [];
      for (final v in values) {
        node.dynamicArrayAddNew(context,
            validators: validators, asyncValidators: asyncValidators, value: v);
      }
    } else {
      node.control = toFormObject(context, node.element!,
          value: value, validators: validators);
    }

    if (nodeElement is s.Selectbase) {
      final commentName = "${nodeElement.name}-Comment";
      final commentNode =
          ElementNode(element: null, rawElement: null, survey: node.survey);
      //always add comment control for selectbase, so that the answer patch will work
      node.parent!.addChild(commentNode);
      (node.parent!.control as FormGroup).addAll({
        commentName: fb.control<String>("", [NonEmptyValidator()])
      });
    }

    if (nodeElement is s.Panelbase) {
      if (node.control is FormGroup) {
        (node.parent!.control as FormGroup)
            .addAll((node.control as FormGroup).controls);
        node.control = null;
      }
    }

    if (nodeElement is s.Question) {
      node.control!.setValidators(
          [...node.control!.validators, ...questionToValidators(nodeElement)],
          autoValidate: true);
    }
  }
}

// toFormObject convert question json element to FromControl
// [value] default value passed down by parent
AbstractControl? toFormObject(BuildContext context, s.Elementbase element,
    {Object? value, List<Validator> validators = const []}) {
  final obj =
      ((SurveyConfiguration.of(context)?.factory) ?? SurveyElementFactory())
          .resolveFormControl(context, element,
              value: value, validators: validators);
  return obj;
}

Object? getDefaultValue(s.Elementbase element, Object? value) {
  if (element is s.Question) {
    return value ?? element.defaultValue?.value;
  }
  return value;
}

Object? tryGetValue(String name, Object? value) {
  if (value == null) return null;
  if (value is Map<String, Object?>) {
    return value[name];
  }
  return null;
}
