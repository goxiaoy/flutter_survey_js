import 'package:flutter_survey_js/survey.dart';

class TestData {
  static Survey survey({
    String? locale,
    String? title,
    String? description,
    String? logo,
    String? logoWidth,
    String? logoFit,
    String? logoPosition,
    bool? focusFirstQuestionAutomatic,
    bool? focusOnFirstError,
    String? completedHtml,
    String? completedBeforeHtml,
    List<HtmlConditionItem>? completedHtmlOnCondition,
    String? loadingHtml,
    List<Page>? pages,
    List<ElementBase>? questions,
    List<SurveyTrigger>? triggers,
    List<CalculatedValue>? calculatedValues,
    String? surveyId,
    String? surveyPostId,
    bool? surveyShowDataSaving,
    String? cookieName,
    bool? sendResultOnPageNext,
    String? showNavigationButtons,
    bool? showPrevButton,
    bool? showTitle,
    bool? showPageTitles,
    bool? showCompletedPage,
    String? navigateToUrl,
    List<UrlConditionItem>? navigateToUrlOnCondition,
    String? questionsOrder,
    bool? showPageNumbers,
    String? showQuestionNumbers,
    String? questionTitleLocation,
    String? questionDescriptionLocation,
    String? questionErrorLocation,
    String? showProgressBar,
    String? progressBarType,
    String? mode,
    bool? storeOthersAsComment,
    num? maxTextLength,
    num? maxOthersLength,
    bool? goNextPageAutomatic,
    String? clearInvisibleValues,
    String? checkErrorsMode,
    String? textUpdateMode,
    String? startSurveyText,
    String? pagePrevText,
    String? pageNextText,
    String? completeText,
    String? previewText,
    String? editText,
    String? requiredText,
    String? questionStartIndex,
    String? questionTitlePattern,
    String? questionTitleTemplate,
    bool? firstPageIsStarted,
    bool? isSinglePage,
    String? questionsOnPageMode,
    String? showPreviewBeforeComplete,
    int? maxTimeToFinish,
    int? maxTimeToFinishPage,
    String? showTimerPanel,
    String? showTimerPanelMode,
  }) =>
      Survey()
        ..locale = locale ?? 'some locale'
        ..title = title ?? 'some title'
        ..description = description ?? 'some description'
        ..logo = logo ?? 'some logo'
        ..logoWidth = logoWidth ?? 'some logo width'
        ..logoFit = logoFit ?? 'some logo fit'
        ..logoPosition = logoPosition ?? 'some logo position'
        ..focusFirstQuestionAutomatic = focusFirstQuestionAutomatic ?? false
        ..focusOnFirstError = focusOnFirstError ?? false
        ..completedHtml = completedHtml ?? 'some completed html'
        ..completedBeforeHtml =
            completedBeforeHtml ?? 'some completed before html'
        ..completedHtmlOnCondition =
            completedHtmlOnCondition ?? [htmlConditionItem()]
        ..loadingHtml = loadingHtml ?? 'some loading html'
        ..pages = pages ?? [page()]
        ..questions = questions ?? [elementBase()]
        ..triggers = triggers ?? [surveyTrigger()]
        ..calculatedValues = calculatedValues ?? [calculatedValue()]
        ..surveyId = surveyId ?? 'some survey id'
        ..surveyPostId = surveyPostId ?? 'some survey post id'
        ..surveyShowDataSaving = surveyShowDataSaving ?? false
        ..cookieName = cookieName ?? 'some cookie name'
        ..sendResultOnPageNext = sendResultOnPageNext ?? false
        ..showNavigationButtons =
            showNavigationButtons ?? 'some show navigation buttons'
        ..showPrevButton = showPrevButton ?? false
        ..showTitle = showTitle ?? false
        ..showPageTitles = showPageTitles ?? false
        ..showCompletedPage = showCompletedPage ?? false
        ..navigateToUrl = navigateToUrl ?? 'some navigate to url'
        ..navigateToUrlOnCondition =
            navigateToUrlOnCondition ?? [urlConditionItem()]
        ..questionsOrder = questionsOrder ?? 'some questions order'
        ..showPageNumbers = showPageNumbers ?? false
        ..showQuestionNumbers =
            showQuestionNumbers ?? 'some show question numbers'
        ..questionTitleLocation =
            questionTitleLocation ?? 'some question title location'
        ..questionDescriptionLocation =
            questionDescriptionLocation ?? 'some question description location'
        ..questionErrorLocation =
            questionErrorLocation ?? 'some question error location'
        ..showProgressBar = showProgressBar ?? 'some show progress bar'
        ..progressBarType = progressBarType ?? 'some progress bar type'
        ..mode = mode ?? 'some mode'
        ..storeOthersAsComment = storeOthersAsComment ?? false
        ..maxTextLength = maxTextLength ?? 10
        ..maxOthersLength = maxOthersLength ?? 10
        ..goNextPageAutomatic = goNextPageAutomatic ?? false
        ..clearInvisibleValues =
            clearInvisibleValues ?? 'some clear invisible values'
        ..checkErrorsMode = checkErrorsMode ?? 'some check errors mode'
        ..textUpdateMode = textUpdateMode ?? 'some text update mode'
        ..startSurveyText = startSurveyText ?? 'some start survey text'
        ..pagePrevText = pagePrevText ?? 'some page prev text'
        ..pageNextText = pageNextText ?? 'some page next text'
        ..completeText = completeText ?? 'some complete text'
        ..previewText = previewText ?? 'some preview text'
        ..editText = editText ?? 'some edit text'
        ..requiredText = requiredText ?? 'some required text'
        ..questionStartIndex = questionStartIndex ?? 'some question start index'
        ..questionTitlePattern =
            questionTitlePattern ?? 'some question title pattern'
        ..questionTitleTemplate =
            questionTitleTemplate ?? 'some question title template'
        ..firstPageIsStarted = firstPageIsStarted ?? false
        ..isSinglePage = isSinglePage ?? false
        ..questionsOnPageMode =
            questionsOnPageMode ?? 'some questions on page mode'
        ..showPreviewBeforeComplete =
            showPreviewBeforeComplete ?? 'showPreviewBeforeComplete'
        ..maxTimeToFinish = maxTimeToFinish ?? 60
        ..maxTimeToFinishPage = maxTimeToFinishPage ?? 60
        ..showTimerPanel = showTimerPanel ?? 'some show timer panel'
        ..showTimerPanelMode =
            showTimerPanelMode ?? 'some show timer panel mode';

  static HtmlConditionItem htmlConditionItem(
          {String? expression, String? html}) =>
      HtmlConditionItem()
        ..expression = expression ?? 'some expression'
        ..html = html ?? 'some html';
  static ElementBase elementBase({String? type, String? name}) =>
      TestElementBase()
        ..type = type ?? 'some type'
        ..name = name ?? 'some name';
  static Page page(
          {String? name,
          List<ElementBase>? elements,
          bool? visible,
          String? visibleIf,
          String? enableIf,
          String? requiredIf,
          bool? readOnly,
          String? questionTitleLocation,
          String? title,
          String? description,
          String? navigationButtonsVisibility,
          String? questionsOrder,
          int? maxTimeToFinish,
          String? navigationTitle,
          String? navigationDescription}) =>
      Page()
        ..name = name ?? 'some name'
        ..elements = elements ?? [elementBase()]
        ..visible = visible ?? false
        ..visibleIf = visibleIf ?? 'some visibleIf'
        ..enableIf = enableIf ?? 'some enableIf'
        ..requiredIf = requiredIf ?? 'some requiredIf'
        ..readOnly = readOnly ?? false
        ..questionTitleLocation =
            questionTitleLocation ?? 'some question title location'
        ..title = title ?? 'some title'
        ..description = description ?? 'some description'
        ..navigationButtonsVisibility =
            navigationButtonsVisibility ?? 'some navigation buttons visibility'
        ..questionsOrder = questionsOrder ?? 'some questions order'
        ..maxTimeToFinish = maxTimeToFinish ?? 60
        ..navigationTitle = navigationTitle ?? 'some navigation title'
        ..navigationDescription =
            navigationDescription ?? 'some navigation description';

  static SurveyTrigger surveyTrigger(
          {String? operator,
          String? value,
          String? expression,
          String? name}) =>
      TestSurveyTrigger()
        ..operator = operator ?? 'some operator'
        ..value = value ?? 'some value'
        ..expression = expression ?? 'some expression'
        ..name = name ?? 'some name';
  static CalculatedValue calculatedValue(
          {String? name, String? expression, bool? includeIntoResult}) =>
      CalculatedValue()
        ..name = name ?? 'some name'
        ..expression = expression ?? 'some expression'
        ..includeIntoResult = includeIntoResult ?? false;
  static UrlConditionItem urlConditionItem({String? expression, String? url}) =>
      UrlConditionItem()
        ..expression = expression ?? 'some expression'
        ..url = url ?? 'some url';
}

class TestElementBase extends ElementBase {
  String? type;
  String? name;

  @override
  Map<String, dynamic> toJson() {
    return {
      'type': type,
      'name': name,
    };
  }
}

class TestSurveyTrigger extends SurveyTrigger {
  String? operator;
  String? value;
  String? expression;
  String? name;

  @override
  Map<String, dynamic> toJson() {
    return {
      'operator': operator,
      'value': value,
      'expression': expression,
      'name': name,
    };
  }
}
