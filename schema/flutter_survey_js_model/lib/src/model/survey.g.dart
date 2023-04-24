// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'survey.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$Survey extends Survey {
  @override
  final SurveyLocale? locale;
  @override
  final String? title;
  @override
  final String? description;
  @override
  final String? logo;
  @override
  final String? logoWidth;
  @override
  final String? logoHeight;
  @override
  final SurveyLogoFit? logoFit;
  @override
  final SurveyLogoPosition? logoPosition;
  @override
  final bool? focusFirstQuestionAutomatic;
  @override
  final bool? focusOnFirstError;
  @override
  final String? completedHtml;
  @override
  final String? completedBeforeHtml;
  @override
  final BuiltList<Htmlconditionitem>? completedHtmlOnCondition;
  @override
  final String? loadingHtml;
  @override
  final BuiltList<Page>? pages;
  @override
  final BuiltList<SurveyQuestionsInner>? questions;
  @override
  final SurveyTriggers? triggers;
  @override
  final BuiltList<Calculatedvalue>? calculatedValues;
  @override
  final String? surveyId;
  @override
  final String? surveyPostId;
  @override
  final bool? surveyShowDataSaving;
  @override
  final String? cookieName;
  @override
  final bool? sendResultOnPageNext;
  @override
  final SurveyShowNavigationButtons? showNavigationButtons;
  @override
  final bool? showPrevButton;
  @override
  final bool? showTitle;
  @override
  final bool? showPageTitles;
  @override
  final bool? showCompletedPage;
  @override
  final String? navigateToUrl;
  @override
  final BuiltList<Urlconditionitem>? navigateToUrlOnCondition;
  @override
  final SurveyQuestionsOrder? questionsOrder;
  @override
  final bool? showPageNumbers;
  @override
  final SurveyShowQuestionNumbers? showQuestionNumbers;
  @override
  final SurveyQuestionTitleLocation? questionTitleLocation;
  @override
  final SurveyQuestionDescriptionLocation? questionDescriptionLocation;
  @override
  final SurveyQuestionErrorLocation? questionErrorLocation;
  @override
  final SurveyShowProgressBar? showProgressBar;
  @override
  final SurveyProgressBarType? progressBarType;
  @override
  final String? showTOC;
  @override
  final SurveyTocLocation? tocLocation;
  @override
  final SurveyMode? mode;
  @override
  final bool? storeOthersAsComment;
  @override
  final num? maxTextLength;
  @override
  final num? maxOthersLength;
  @override
  final bool? goNextPageAutomatic;
  @override
  final SurveyClearInvisibleValues? clearInvisibleValues;
  @override
  final SurveyCheckErrorsMode? checkErrorsMode;
  @override
  final SurveyTextUpdateMode? textUpdateMode;
  @override
  final bool? autoGrowComment;
  @override
  final String? startSurveyText;
  @override
  final String? pagePrevText;
  @override
  final String? pageNextText;
  @override
  final String? completeText;
  @override
  final String? previewText;
  @override
  final String? editText;
  @override
  final String? requiredText;
  @override
  final String? questionStartIndex;
  @override
  final String? questionTitlePattern;
  @override
  final String? questionTitleTemplate;
  @override
  final bool? firstPageIsStarted;
  @override
  final bool? isSinglePage;
  @override
  final SurveyQuestionsOnPageMode? questionsOnPageMode;
  @override
  final SurveyShowPreviewBeforeComplete? showPreviewBeforeComplete;
  @override
  final num? maxTimeToFinish;
  @override
  final num? maxTimeToFinishPage;
  @override
  final SurveyShowTimerPanel? showTimerPanel;
  @override
  final SurveyShowTimerPanelMode? showTimerPanelMode;
  @override
  final SurveyWidthMode? widthMode;
  @override
  final String? width;
  @override
  final String? backgroundImage;
  @override
  final num? backgroundOpacity;
  @override
  final bool? showBrandInfo;

  factory _$Survey([void Function(SurveyBuilder)? updates]) =>
      (new SurveyBuilder()..update(updates))._build();

  _$Survey._(
      {this.locale,
      this.title,
      this.description,
      this.logo,
      this.logoWidth,
      this.logoHeight,
      this.logoFit,
      this.logoPosition,
      this.focusFirstQuestionAutomatic,
      this.focusOnFirstError,
      this.completedHtml,
      this.completedBeforeHtml,
      this.completedHtmlOnCondition,
      this.loadingHtml,
      this.pages,
      this.questions,
      this.triggers,
      this.calculatedValues,
      this.surveyId,
      this.surveyPostId,
      this.surveyShowDataSaving,
      this.cookieName,
      this.sendResultOnPageNext,
      this.showNavigationButtons,
      this.showPrevButton,
      this.showTitle,
      this.showPageTitles,
      this.showCompletedPage,
      this.navigateToUrl,
      this.navigateToUrlOnCondition,
      this.questionsOrder,
      this.showPageNumbers,
      this.showQuestionNumbers,
      this.questionTitleLocation,
      this.questionDescriptionLocation,
      this.questionErrorLocation,
      this.showProgressBar,
      this.progressBarType,
      this.showTOC,
      this.tocLocation,
      this.mode,
      this.storeOthersAsComment,
      this.maxTextLength,
      this.maxOthersLength,
      this.goNextPageAutomatic,
      this.clearInvisibleValues,
      this.checkErrorsMode,
      this.textUpdateMode,
      this.autoGrowComment,
      this.startSurveyText,
      this.pagePrevText,
      this.pageNextText,
      this.completeText,
      this.previewText,
      this.editText,
      this.requiredText,
      this.questionStartIndex,
      this.questionTitlePattern,
      this.questionTitleTemplate,
      this.firstPageIsStarted,
      this.isSinglePage,
      this.questionsOnPageMode,
      this.showPreviewBeforeComplete,
      this.maxTimeToFinish,
      this.maxTimeToFinishPage,
      this.showTimerPanel,
      this.showTimerPanelMode,
      this.widthMode,
      this.width,
      this.backgroundImage,
      this.backgroundOpacity,
      this.showBrandInfo})
      : super._();

  @override
  Survey rebuild(void Function(SurveyBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  SurveyBuilder toBuilder() => new SurveyBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Survey &&
        locale == other.locale &&
        title == other.title &&
        description == other.description &&
        logo == other.logo &&
        logoWidth == other.logoWidth &&
        logoHeight == other.logoHeight &&
        logoFit == other.logoFit &&
        logoPosition == other.logoPosition &&
        focusFirstQuestionAutomatic == other.focusFirstQuestionAutomatic &&
        focusOnFirstError == other.focusOnFirstError &&
        completedHtml == other.completedHtml &&
        completedBeforeHtml == other.completedBeforeHtml &&
        completedHtmlOnCondition == other.completedHtmlOnCondition &&
        loadingHtml == other.loadingHtml &&
        pages == other.pages &&
        questions == other.questions &&
        triggers == other.triggers &&
        calculatedValues == other.calculatedValues &&
        surveyId == other.surveyId &&
        surveyPostId == other.surveyPostId &&
        surveyShowDataSaving == other.surveyShowDataSaving &&
        cookieName == other.cookieName &&
        sendResultOnPageNext == other.sendResultOnPageNext &&
        showNavigationButtons == other.showNavigationButtons &&
        showPrevButton == other.showPrevButton &&
        showTitle == other.showTitle &&
        showPageTitles == other.showPageTitles &&
        showCompletedPage == other.showCompletedPage &&
        navigateToUrl == other.navigateToUrl &&
        navigateToUrlOnCondition == other.navigateToUrlOnCondition &&
        questionsOrder == other.questionsOrder &&
        showPageNumbers == other.showPageNumbers &&
        showQuestionNumbers == other.showQuestionNumbers &&
        questionTitleLocation == other.questionTitleLocation &&
        questionDescriptionLocation == other.questionDescriptionLocation &&
        questionErrorLocation == other.questionErrorLocation &&
        showProgressBar == other.showProgressBar &&
        progressBarType == other.progressBarType &&
        showTOC == other.showTOC &&
        tocLocation == other.tocLocation &&
        mode == other.mode &&
        storeOthersAsComment == other.storeOthersAsComment &&
        maxTextLength == other.maxTextLength &&
        maxOthersLength == other.maxOthersLength &&
        goNextPageAutomatic == other.goNextPageAutomatic &&
        clearInvisibleValues == other.clearInvisibleValues &&
        checkErrorsMode == other.checkErrorsMode &&
        textUpdateMode == other.textUpdateMode &&
        autoGrowComment == other.autoGrowComment &&
        startSurveyText == other.startSurveyText &&
        pagePrevText == other.pagePrevText &&
        pageNextText == other.pageNextText &&
        completeText == other.completeText &&
        previewText == other.previewText &&
        editText == other.editText &&
        requiredText == other.requiredText &&
        questionStartIndex == other.questionStartIndex &&
        questionTitlePattern == other.questionTitlePattern &&
        questionTitleTemplate == other.questionTitleTemplate &&
        firstPageIsStarted == other.firstPageIsStarted &&
        isSinglePage == other.isSinglePage &&
        questionsOnPageMode == other.questionsOnPageMode &&
        showPreviewBeforeComplete == other.showPreviewBeforeComplete &&
        maxTimeToFinish == other.maxTimeToFinish &&
        maxTimeToFinishPage == other.maxTimeToFinishPage &&
        showTimerPanel == other.showTimerPanel &&
        showTimerPanelMode == other.showTimerPanelMode &&
        widthMode == other.widthMode &&
        width == other.width &&
        backgroundImage == other.backgroundImage &&
        backgroundOpacity == other.backgroundOpacity &&
        showBrandInfo == other.showBrandInfo;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, locale.hashCode);
    _$hash = $jc(_$hash, title.hashCode);
    _$hash = $jc(_$hash, description.hashCode);
    _$hash = $jc(_$hash, logo.hashCode);
    _$hash = $jc(_$hash, logoWidth.hashCode);
    _$hash = $jc(_$hash, logoHeight.hashCode);
    _$hash = $jc(_$hash, logoFit.hashCode);
    _$hash = $jc(_$hash, logoPosition.hashCode);
    _$hash = $jc(_$hash, focusFirstQuestionAutomatic.hashCode);
    _$hash = $jc(_$hash, focusOnFirstError.hashCode);
    _$hash = $jc(_$hash, completedHtml.hashCode);
    _$hash = $jc(_$hash, completedBeforeHtml.hashCode);
    _$hash = $jc(_$hash, completedHtmlOnCondition.hashCode);
    _$hash = $jc(_$hash, loadingHtml.hashCode);
    _$hash = $jc(_$hash, pages.hashCode);
    _$hash = $jc(_$hash, questions.hashCode);
    _$hash = $jc(_$hash, triggers.hashCode);
    _$hash = $jc(_$hash, calculatedValues.hashCode);
    _$hash = $jc(_$hash, surveyId.hashCode);
    _$hash = $jc(_$hash, surveyPostId.hashCode);
    _$hash = $jc(_$hash, surveyShowDataSaving.hashCode);
    _$hash = $jc(_$hash, cookieName.hashCode);
    _$hash = $jc(_$hash, sendResultOnPageNext.hashCode);
    _$hash = $jc(_$hash, showNavigationButtons.hashCode);
    _$hash = $jc(_$hash, showPrevButton.hashCode);
    _$hash = $jc(_$hash, showTitle.hashCode);
    _$hash = $jc(_$hash, showPageTitles.hashCode);
    _$hash = $jc(_$hash, showCompletedPage.hashCode);
    _$hash = $jc(_$hash, navigateToUrl.hashCode);
    _$hash = $jc(_$hash, navigateToUrlOnCondition.hashCode);
    _$hash = $jc(_$hash, questionsOrder.hashCode);
    _$hash = $jc(_$hash, showPageNumbers.hashCode);
    _$hash = $jc(_$hash, showQuestionNumbers.hashCode);
    _$hash = $jc(_$hash, questionTitleLocation.hashCode);
    _$hash = $jc(_$hash, questionDescriptionLocation.hashCode);
    _$hash = $jc(_$hash, questionErrorLocation.hashCode);
    _$hash = $jc(_$hash, showProgressBar.hashCode);
    _$hash = $jc(_$hash, progressBarType.hashCode);
    _$hash = $jc(_$hash, showTOC.hashCode);
    _$hash = $jc(_$hash, tocLocation.hashCode);
    _$hash = $jc(_$hash, mode.hashCode);
    _$hash = $jc(_$hash, storeOthersAsComment.hashCode);
    _$hash = $jc(_$hash, maxTextLength.hashCode);
    _$hash = $jc(_$hash, maxOthersLength.hashCode);
    _$hash = $jc(_$hash, goNextPageAutomatic.hashCode);
    _$hash = $jc(_$hash, clearInvisibleValues.hashCode);
    _$hash = $jc(_$hash, checkErrorsMode.hashCode);
    _$hash = $jc(_$hash, textUpdateMode.hashCode);
    _$hash = $jc(_$hash, autoGrowComment.hashCode);
    _$hash = $jc(_$hash, startSurveyText.hashCode);
    _$hash = $jc(_$hash, pagePrevText.hashCode);
    _$hash = $jc(_$hash, pageNextText.hashCode);
    _$hash = $jc(_$hash, completeText.hashCode);
    _$hash = $jc(_$hash, previewText.hashCode);
    _$hash = $jc(_$hash, editText.hashCode);
    _$hash = $jc(_$hash, requiredText.hashCode);
    _$hash = $jc(_$hash, questionStartIndex.hashCode);
    _$hash = $jc(_$hash, questionTitlePattern.hashCode);
    _$hash = $jc(_$hash, questionTitleTemplate.hashCode);
    _$hash = $jc(_$hash, firstPageIsStarted.hashCode);
    _$hash = $jc(_$hash, isSinglePage.hashCode);
    _$hash = $jc(_$hash, questionsOnPageMode.hashCode);
    _$hash = $jc(_$hash, showPreviewBeforeComplete.hashCode);
    _$hash = $jc(_$hash, maxTimeToFinish.hashCode);
    _$hash = $jc(_$hash, maxTimeToFinishPage.hashCode);
    _$hash = $jc(_$hash, showTimerPanel.hashCode);
    _$hash = $jc(_$hash, showTimerPanelMode.hashCode);
    _$hash = $jc(_$hash, widthMode.hashCode);
    _$hash = $jc(_$hash, width.hashCode);
    _$hash = $jc(_$hash, backgroundImage.hashCode);
    _$hash = $jc(_$hash, backgroundOpacity.hashCode);
    _$hash = $jc(_$hash, showBrandInfo.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'Survey')
          ..add('locale', locale)
          ..add('title', title)
          ..add('description', description)
          ..add('logo', logo)
          ..add('logoWidth', logoWidth)
          ..add('logoHeight', logoHeight)
          ..add('logoFit', logoFit)
          ..add('logoPosition', logoPosition)
          ..add('focusFirstQuestionAutomatic', focusFirstQuestionAutomatic)
          ..add('focusOnFirstError', focusOnFirstError)
          ..add('completedHtml', completedHtml)
          ..add('completedBeforeHtml', completedBeforeHtml)
          ..add('completedHtmlOnCondition', completedHtmlOnCondition)
          ..add('loadingHtml', loadingHtml)
          ..add('pages', pages)
          ..add('questions', questions)
          ..add('triggers', triggers)
          ..add('calculatedValues', calculatedValues)
          ..add('surveyId', surveyId)
          ..add('surveyPostId', surveyPostId)
          ..add('surveyShowDataSaving', surveyShowDataSaving)
          ..add('cookieName', cookieName)
          ..add('sendResultOnPageNext', sendResultOnPageNext)
          ..add('showNavigationButtons', showNavigationButtons)
          ..add('showPrevButton', showPrevButton)
          ..add('showTitle', showTitle)
          ..add('showPageTitles', showPageTitles)
          ..add('showCompletedPage', showCompletedPage)
          ..add('navigateToUrl', navigateToUrl)
          ..add('navigateToUrlOnCondition', navigateToUrlOnCondition)
          ..add('questionsOrder', questionsOrder)
          ..add('showPageNumbers', showPageNumbers)
          ..add('showQuestionNumbers', showQuestionNumbers)
          ..add('questionTitleLocation', questionTitleLocation)
          ..add('questionDescriptionLocation', questionDescriptionLocation)
          ..add('questionErrorLocation', questionErrorLocation)
          ..add('showProgressBar', showProgressBar)
          ..add('progressBarType', progressBarType)
          ..add('showTOC', showTOC)
          ..add('tocLocation', tocLocation)
          ..add('mode', mode)
          ..add('storeOthersAsComment', storeOthersAsComment)
          ..add('maxTextLength', maxTextLength)
          ..add('maxOthersLength', maxOthersLength)
          ..add('goNextPageAutomatic', goNextPageAutomatic)
          ..add('clearInvisibleValues', clearInvisibleValues)
          ..add('checkErrorsMode', checkErrorsMode)
          ..add('textUpdateMode', textUpdateMode)
          ..add('autoGrowComment', autoGrowComment)
          ..add('startSurveyText', startSurveyText)
          ..add('pagePrevText', pagePrevText)
          ..add('pageNextText', pageNextText)
          ..add('completeText', completeText)
          ..add('previewText', previewText)
          ..add('editText', editText)
          ..add('requiredText', requiredText)
          ..add('questionStartIndex', questionStartIndex)
          ..add('questionTitlePattern', questionTitlePattern)
          ..add('questionTitleTemplate', questionTitleTemplate)
          ..add('firstPageIsStarted', firstPageIsStarted)
          ..add('isSinglePage', isSinglePage)
          ..add('questionsOnPageMode', questionsOnPageMode)
          ..add('showPreviewBeforeComplete', showPreviewBeforeComplete)
          ..add('maxTimeToFinish', maxTimeToFinish)
          ..add('maxTimeToFinishPage', maxTimeToFinishPage)
          ..add('showTimerPanel', showTimerPanel)
          ..add('showTimerPanelMode', showTimerPanelMode)
          ..add('widthMode', widthMode)
          ..add('width', width)
          ..add('backgroundImage', backgroundImage)
          ..add('backgroundOpacity', backgroundOpacity)
          ..add('showBrandInfo', showBrandInfo))
        .toString();
  }
}

class SurveyBuilder implements Builder<Survey, SurveyBuilder> {
  _$Survey? _$v;

  SurveyLocale? _locale;
  SurveyLocale? get locale => _$this._locale;
  set locale(SurveyLocale? locale) => _$this._locale = locale;

  String? _title;
  String? get title => _$this._title;
  set title(String? title) => _$this._title = title;

  String? _description;
  String? get description => _$this._description;
  set description(String? description) => _$this._description = description;

  String? _logo;
  String? get logo => _$this._logo;
  set logo(String? logo) => _$this._logo = logo;

  String? _logoWidth;
  String? get logoWidth => _$this._logoWidth;
  set logoWidth(String? logoWidth) => _$this._logoWidth = logoWidth;

  String? _logoHeight;
  String? get logoHeight => _$this._logoHeight;
  set logoHeight(String? logoHeight) => _$this._logoHeight = logoHeight;

  SurveyLogoFit? _logoFit;
  SurveyLogoFit? get logoFit => _$this._logoFit;
  set logoFit(SurveyLogoFit? logoFit) => _$this._logoFit = logoFit;

  SurveyLogoPosition? _logoPosition;
  SurveyLogoPosition? get logoPosition => _$this._logoPosition;
  set logoPosition(SurveyLogoPosition? logoPosition) =>
      _$this._logoPosition = logoPosition;

  bool? _focusFirstQuestionAutomatic;
  bool? get focusFirstQuestionAutomatic => _$this._focusFirstQuestionAutomatic;
  set focusFirstQuestionAutomatic(bool? focusFirstQuestionAutomatic) =>
      _$this._focusFirstQuestionAutomatic = focusFirstQuestionAutomatic;

  bool? _focusOnFirstError;
  bool? get focusOnFirstError => _$this._focusOnFirstError;
  set focusOnFirstError(bool? focusOnFirstError) =>
      _$this._focusOnFirstError = focusOnFirstError;

  String? _completedHtml;
  String? get completedHtml => _$this._completedHtml;
  set completedHtml(String? completedHtml) =>
      _$this._completedHtml = completedHtml;

  String? _completedBeforeHtml;
  String? get completedBeforeHtml => _$this._completedBeforeHtml;
  set completedBeforeHtml(String? completedBeforeHtml) =>
      _$this._completedBeforeHtml = completedBeforeHtml;

  ListBuilder<Htmlconditionitem>? _completedHtmlOnCondition;
  ListBuilder<Htmlconditionitem> get completedHtmlOnCondition =>
      _$this._completedHtmlOnCondition ??= new ListBuilder<Htmlconditionitem>();
  set completedHtmlOnCondition(
          ListBuilder<Htmlconditionitem>? completedHtmlOnCondition) =>
      _$this._completedHtmlOnCondition = completedHtmlOnCondition;

  String? _loadingHtml;
  String? get loadingHtml => _$this._loadingHtml;
  set loadingHtml(String? loadingHtml) => _$this._loadingHtml = loadingHtml;

  ListBuilder<Page>? _pages;
  ListBuilder<Page> get pages => _$this._pages ??= new ListBuilder<Page>();
  set pages(ListBuilder<Page>? pages) => _$this._pages = pages;

  ListBuilder<SurveyQuestionsInner>? _questions;
  ListBuilder<SurveyQuestionsInner> get questions =>
      _$this._questions ??= new ListBuilder<SurveyQuestionsInner>();
  set questions(ListBuilder<SurveyQuestionsInner>? questions) =>
      _$this._questions = questions;

  SurveyTriggersBuilder? _triggers;
  SurveyTriggersBuilder get triggers =>
      _$this._triggers ??= new SurveyTriggersBuilder();
  set triggers(SurveyTriggersBuilder? triggers) => _$this._triggers = triggers;

  ListBuilder<Calculatedvalue>? _calculatedValues;
  ListBuilder<Calculatedvalue> get calculatedValues =>
      _$this._calculatedValues ??= new ListBuilder<Calculatedvalue>();
  set calculatedValues(ListBuilder<Calculatedvalue>? calculatedValues) =>
      _$this._calculatedValues = calculatedValues;

  String? _surveyId;
  String? get surveyId => _$this._surveyId;
  set surveyId(String? surveyId) => _$this._surveyId = surveyId;

  String? _surveyPostId;
  String? get surveyPostId => _$this._surveyPostId;
  set surveyPostId(String? surveyPostId) => _$this._surveyPostId = surveyPostId;

  bool? _surveyShowDataSaving;
  bool? get surveyShowDataSaving => _$this._surveyShowDataSaving;
  set surveyShowDataSaving(bool? surveyShowDataSaving) =>
      _$this._surveyShowDataSaving = surveyShowDataSaving;

  String? _cookieName;
  String? get cookieName => _$this._cookieName;
  set cookieName(String? cookieName) => _$this._cookieName = cookieName;

  bool? _sendResultOnPageNext;
  bool? get sendResultOnPageNext => _$this._sendResultOnPageNext;
  set sendResultOnPageNext(bool? sendResultOnPageNext) =>
      _$this._sendResultOnPageNext = sendResultOnPageNext;

  SurveyShowNavigationButtons? _showNavigationButtons;
  SurveyShowNavigationButtons? get showNavigationButtons =>
      _$this._showNavigationButtons;
  set showNavigationButtons(
          SurveyShowNavigationButtons? showNavigationButtons) =>
      _$this._showNavigationButtons = showNavigationButtons;

  bool? _showPrevButton;
  bool? get showPrevButton => _$this._showPrevButton;
  set showPrevButton(bool? showPrevButton) =>
      _$this._showPrevButton = showPrevButton;

  bool? _showTitle;
  bool? get showTitle => _$this._showTitle;
  set showTitle(bool? showTitle) => _$this._showTitle = showTitle;

  bool? _showPageTitles;
  bool? get showPageTitles => _$this._showPageTitles;
  set showPageTitles(bool? showPageTitles) =>
      _$this._showPageTitles = showPageTitles;

  bool? _showCompletedPage;
  bool? get showCompletedPage => _$this._showCompletedPage;
  set showCompletedPage(bool? showCompletedPage) =>
      _$this._showCompletedPage = showCompletedPage;

  String? _navigateToUrl;
  String? get navigateToUrl => _$this._navigateToUrl;
  set navigateToUrl(String? navigateToUrl) =>
      _$this._navigateToUrl = navigateToUrl;

  ListBuilder<Urlconditionitem>? _navigateToUrlOnCondition;
  ListBuilder<Urlconditionitem> get navigateToUrlOnCondition =>
      _$this._navigateToUrlOnCondition ??= new ListBuilder<Urlconditionitem>();
  set navigateToUrlOnCondition(
          ListBuilder<Urlconditionitem>? navigateToUrlOnCondition) =>
      _$this._navigateToUrlOnCondition = navigateToUrlOnCondition;

  SurveyQuestionsOrder? _questionsOrder;
  SurveyQuestionsOrder? get questionsOrder => _$this._questionsOrder;
  set questionsOrder(SurveyQuestionsOrder? questionsOrder) =>
      _$this._questionsOrder = questionsOrder;

  bool? _showPageNumbers;
  bool? get showPageNumbers => _$this._showPageNumbers;
  set showPageNumbers(bool? showPageNumbers) =>
      _$this._showPageNumbers = showPageNumbers;

  SurveyShowQuestionNumbersBuilder? _showQuestionNumbers;
  SurveyShowQuestionNumbersBuilder get showQuestionNumbers =>
      _$this._showQuestionNumbers ??= new SurveyShowQuestionNumbersBuilder();
  set showQuestionNumbers(
          SurveyShowQuestionNumbersBuilder? showQuestionNumbers) =>
      _$this._showQuestionNumbers = showQuestionNumbers;

  SurveyQuestionTitleLocation? _questionTitleLocation;
  SurveyQuestionTitleLocation? get questionTitleLocation =>
      _$this._questionTitleLocation;
  set questionTitleLocation(
          SurveyQuestionTitleLocation? questionTitleLocation) =>
      _$this._questionTitleLocation = questionTitleLocation;

  SurveyQuestionDescriptionLocation? _questionDescriptionLocation;
  SurveyQuestionDescriptionLocation? get questionDescriptionLocation =>
      _$this._questionDescriptionLocation;
  set questionDescriptionLocation(
          SurveyQuestionDescriptionLocation? questionDescriptionLocation) =>
      _$this._questionDescriptionLocation = questionDescriptionLocation;

  SurveyQuestionErrorLocation? _questionErrorLocation;
  SurveyQuestionErrorLocation? get questionErrorLocation =>
      _$this._questionErrorLocation;
  set questionErrorLocation(
          SurveyQuestionErrorLocation? questionErrorLocation) =>
      _$this._questionErrorLocation = questionErrorLocation;

  SurveyShowProgressBar? _showProgressBar;
  SurveyShowProgressBar? get showProgressBar => _$this._showProgressBar;
  set showProgressBar(SurveyShowProgressBar? showProgressBar) =>
      _$this._showProgressBar = showProgressBar;

  SurveyProgressBarType? _progressBarType;
  SurveyProgressBarType? get progressBarType => _$this._progressBarType;
  set progressBarType(SurveyProgressBarType? progressBarType) =>
      _$this._progressBarType = progressBarType;

  String? _showTOC;
  String? get showTOC => _$this._showTOC;
  set showTOC(String? showTOC) => _$this._showTOC = showTOC;

  SurveyTocLocation? _tocLocation;
  SurveyTocLocation? get tocLocation => _$this._tocLocation;
  set tocLocation(SurveyTocLocation? tocLocation) =>
      _$this._tocLocation = tocLocation;

  SurveyMode? _mode;
  SurveyMode? get mode => _$this._mode;
  set mode(SurveyMode? mode) => _$this._mode = mode;

  bool? _storeOthersAsComment;
  bool? get storeOthersAsComment => _$this._storeOthersAsComment;
  set storeOthersAsComment(bool? storeOthersAsComment) =>
      _$this._storeOthersAsComment = storeOthersAsComment;

  num? _maxTextLength;
  num? get maxTextLength => _$this._maxTextLength;
  set maxTextLength(num? maxTextLength) =>
      _$this._maxTextLength = maxTextLength;

  num? _maxOthersLength;
  num? get maxOthersLength => _$this._maxOthersLength;
  set maxOthersLength(num? maxOthersLength) =>
      _$this._maxOthersLength = maxOthersLength;

  bool? _goNextPageAutomatic;
  bool? get goNextPageAutomatic => _$this._goNextPageAutomatic;
  set goNextPageAutomatic(bool? goNextPageAutomatic) =>
      _$this._goNextPageAutomatic = goNextPageAutomatic;

  SurveyClearInvisibleValues? _clearInvisibleValues;
  SurveyClearInvisibleValues? get clearInvisibleValues =>
      _$this._clearInvisibleValues;
  set clearInvisibleValues(SurveyClearInvisibleValues? clearInvisibleValues) =>
      _$this._clearInvisibleValues = clearInvisibleValues;

  SurveyCheckErrorsMode? _checkErrorsMode;
  SurveyCheckErrorsMode? get checkErrorsMode => _$this._checkErrorsMode;
  set checkErrorsMode(SurveyCheckErrorsMode? checkErrorsMode) =>
      _$this._checkErrorsMode = checkErrorsMode;

  SurveyTextUpdateMode? _textUpdateMode;
  SurveyTextUpdateMode? get textUpdateMode => _$this._textUpdateMode;
  set textUpdateMode(SurveyTextUpdateMode? textUpdateMode) =>
      _$this._textUpdateMode = textUpdateMode;

  bool? _autoGrowComment;
  bool? get autoGrowComment => _$this._autoGrowComment;
  set autoGrowComment(bool? autoGrowComment) =>
      _$this._autoGrowComment = autoGrowComment;

  String? _startSurveyText;
  String? get startSurveyText => _$this._startSurveyText;
  set startSurveyText(String? startSurveyText) =>
      _$this._startSurveyText = startSurveyText;

  String? _pagePrevText;
  String? get pagePrevText => _$this._pagePrevText;
  set pagePrevText(String? pagePrevText) => _$this._pagePrevText = pagePrevText;

  String? _pageNextText;
  String? get pageNextText => _$this._pageNextText;
  set pageNextText(String? pageNextText) => _$this._pageNextText = pageNextText;

  String? _completeText;
  String? get completeText => _$this._completeText;
  set completeText(String? completeText) => _$this._completeText = completeText;

  String? _previewText;
  String? get previewText => _$this._previewText;
  set previewText(String? previewText) => _$this._previewText = previewText;

  String? _editText;
  String? get editText => _$this._editText;
  set editText(String? editText) => _$this._editText = editText;

  String? _requiredText;
  String? get requiredText => _$this._requiredText;
  set requiredText(String? requiredText) => _$this._requiredText = requiredText;

  String? _questionStartIndex;
  String? get questionStartIndex => _$this._questionStartIndex;
  set questionStartIndex(String? questionStartIndex) =>
      _$this._questionStartIndex = questionStartIndex;

  String? _questionTitlePattern;
  String? get questionTitlePattern => _$this._questionTitlePattern;
  set questionTitlePattern(String? questionTitlePattern) =>
      _$this._questionTitlePattern = questionTitlePattern;

  String? _questionTitleTemplate;
  String? get questionTitleTemplate => _$this._questionTitleTemplate;
  set questionTitleTemplate(String? questionTitleTemplate) =>
      _$this._questionTitleTemplate = questionTitleTemplate;

  bool? _firstPageIsStarted;
  bool? get firstPageIsStarted => _$this._firstPageIsStarted;
  set firstPageIsStarted(bool? firstPageIsStarted) =>
      _$this._firstPageIsStarted = firstPageIsStarted;

  bool? _isSinglePage;
  bool? get isSinglePage => _$this._isSinglePage;
  set isSinglePage(bool? isSinglePage) => _$this._isSinglePage = isSinglePage;

  SurveyQuestionsOnPageMode? _questionsOnPageMode;
  SurveyQuestionsOnPageMode? get questionsOnPageMode =>
      _$this._questionsOnPageMode;
  set questionsOnPageMode(SurveyQuestionsOnPageMode? questionsOnPageMode) =>
      _$this._questionsOnPageMode = questionsOnPageMode;

  SurveyShowPreviewBeforeComplete? _showPreviewBeforeComplete;
  SurveyShowPreviewBeforeComplete? get showPreviewBeforeComplete =>
      _$this._showPreviewBeforeComplete;
  set showPreviewBeforeComplete(
          SurveyShowPreviewBeforeComplete? showPreviewBeforeComplete) =>
      _$this._showPreviewBeforeComplete = showPreviewBeforeComplete;

  num? _maxTimeToFinish;
  num? get maxTimeToFinish => _$this._maxTimeToFinish;
  set maxTimeToFinish(num? maxTimeToFinish) =>
      _$this._maxTimeToFinish = maxTimeToFinish;

  num? _maxTimeToFinishPage;
  num? get maxTimeToFinishPage => _$this._maxTimeToFinishPage;
  set maxTimeToFinishPage(num? maxTimeToFinishPage) =>
      _$this._maxTimeToFinishPage = maxTimeToFinishPage;

  SurveyShowTimerPanel? _showTimerPanel;
  SurveyShowTimerPanel? get showTimerPanel => _$this._showTimerPanel;
  set showTimerPanel(SurveyShowTimerPanel? showTimerPanel) =>
      _$this._showTimerPanel = showTimerPanel;

  SurveyShowTimerPanelMode? _showTimerPanelMode;
  SurveyShowTimerPanelMode? get showTimerPanelMode =>
      _$this._showTimerPanelMode;
  set showTimerPanelMode(SurveyShowTimerPanelMode? showTimerPanelMode) =>
      _$this._showTimerPanelMode = showTimerPanelMode;

  SurveyWidthMode? _widthMode;
  SurveyWidthMode? get widthMode => _$this._widthMode;
  set widthMode(SurveyWidthMode? widthMode) => _$this._widthMode = widthMode;

  String? _width;
  String? get width => _$this._width;
  set width(String? width) => _$this._width = width;

  String? _backgroundImage;
  String? get backgroundImage => _$this._backgroundImage;
  set backgroundImage(String? backgroundImage) =>
      _$this._backgroundImage = backgroundImage;

  num? _backgroundOpacity;
  num? get backgroundOpacity => _$this._backgroundOpacity;
  set backgroundOpacity(num? backgroundOpacity) =>
      _$this._backgroundOpacity = backgroundOpacity;

  bool? _showBrandInfo;
  bool? get showBrandInfo => _$this._showBrandInfo;
  set showBrandInfo(bool? showBrandInfo) =>
      _$this._showBrandInfo = showBrandInfo;

  SurveyBuilder() {
    Survey._defaults(this);
  }

  SurveyBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _locale = $v.locale;
      _title = $v.title;
      _description = $v.description;
      _logo = $v.logo;
      _logoWidth = $v.logoWidth;
      _logoHeight = $v.logoHeight;
      _logoFit = $v.logoFit;
      _logoPosition = $v.logoPosition;
      _focusFirstQuestionAutomatic = $v.focusFirstQuestionAutomatic;
      _focusOnFirstError = $v.focusOnFirstError;
      _completedHtml = $v.completedHtml;
      _completedBeforeHtml = $v.completedBeforeHtml;
      _completedHtmlOnCondition = $v.completedHtmlOnCondition?.toBuilder();
      _loadingHtml = $v.loadingHtml;
      _pages = $v.pages?.toBuilder();
      _questions = $v.questions?.toBuilder();
      _triggers = $v.triggers?.toBuilder();
      _calculatedValues = $v.calculatedValues?.toBuilder();
      _surveyId = $v.surveyId;
      _surveyPostId = $v.surveyPostId;
      _surveyShowDataSaving = $v.surveyShowDataSaving;
      _cookieName = $v.cookieName;
      _sendResultOnPageNext = $v.sendResultOnPageNext;
      _showNavigationButtons = $v.showNavigationButtons;
      _showPrevButton = $v.showPrevButton;
      _showTitle = $v.showTitle;
      _showPageTitles = $v.showPageTitles;
      _showCompletedPage = $v.showCompletedPage;
      _navigateToUrl = $v.navigateToUrl;
      _navigateToUrlOnCondition = $v.navigateToUrlOnCondition?.toBuilder();
      _questionsOrder = $v.questionsOrder;
      _showPageNumbers = $v.showPageNumbers;
      _showQuestionNumbers = $v.showQuestionNumbers?.toBuilder();
      _questionTitleLocation = $v.questionTitleLocation;
      _questionDescriptionLocation = $v.questionDescriptionLocation;
      _questionErrorLocation = $v.questionErrorLocation;
      _showProgressBar = $v.showProgressBar;
      _progressBarType = $v.progressBarType;
      _showTOC = $v.showTOC;
      _tocLocation = $v.tocLocation;
      _mode = $v.mode;
      _storeOthersAsComment = $v.storeOthersAsComment;
      _maxTextLength = $v.maxTextLength;
      _maxOthersLength = $v.maxOthersLength;
      _goNextPageAutomatic = $v.goNextPageAutomatic;
      _clearInvisibleValues = $v.clearInvisibleValues;
      _checkErrorsMode = $v.checkErrorsMode;
      _textUpdateMode = $v.textUpdateMode;
      _autoGrowComment = $v.autoGrowComment;
      _startSurveyText = $v.startSurveyText;
      _pagePrevText = $v.pagePrevText;
      _pageNextText = $v.pageNextText;
      _completeText = $v.completeText;
      _previewText = $v.previewText;
      _editText = $v.editText;
      _requiredText = $v.requiredText;
      _questionStartIndex = $v.questionStartIndex;
      _questionTitlePattern = $v.questionTitlePattern;
      _questionTitleTemplate = $v.questionTitleTemplate;
      _firstPageIsStarted = $v.firstPageIsStarted;
      _isSinglePage = $v.isSinglePage;
      _questionsOnPageMode = $v.questionsOnPageMode;
      _showPreviewBeforeComplete = $v.showPreviewBeforeComplete;
      _maxTimeToFinish = $v.maxTimeToFinish;
      _maxTimeToFinishPage = $v.maxTimeToFinishPage;
      _showTimerPanel = $v.showTimerPanel;
      _showTimerPanelMode = $v.showTimerPanelMode;
      _widthMode = $v.widthMode;
      _width = $v.width;
      _backgroundImage = $v.backgroundImage;
      _backgroundOpacity = $v.backgroundOpacity;
      _showBrandInfo = $v.showBrandInfo;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Survey other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$Survey;
  }

  @override
  void update(void Function(SurveyBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  Survey build() => _build();

  _$Survey _build() {
    _$Survey _$result;
    try {
      _$result = _$v ??
          new _$Survey._(
              locale: locale,
              title: title,
              description: description,
              logo: logo,
              logoWidth: logoWidth,
              logoHeight: logoHeight,
              logoFit: logoFit,
              logoPosition: logoPosition,
              focusFirstQuestionAutomatic: focusFirstQuestionAutomatic,
              focusOnFirstError: focusOnFirstError,
              completedHtml: completedHtml,
              completedBeforeHtml: completedBeforeHtml,
              completedHtmlOnCondition: _completedHtmlOnCondition?.build(),
              loadingHtml: loadingHtml,
              pages: _pages?.build(),
              questions: _questions?.build(),
              triggers: _triggers?.build(),
              calculatedValues: _calculatedValues?.build(),
              surveyId: surveyId,
              surveyPostId: surveyPostId,
              surveyShowDataSaving: surveyShowDataSaving,
              cookieName: cookieName,
              sendResultOnPageNext: sendResultOnPageNext,
              showNavigationButtons: showNavigationButtons,
              showPrevButton: showPrevButton,
              showTitle: showTitle,
              showPageTitles: showPageTitles,
              showCompletedPage: showCompletedPage,
              navigateToUrl: navigateToUrl,
              navigateToUrlOnCondition: _navigateToUrlOnCondition?.build(),
              questionsOrder: questionsOrder,
              showPageNumbers: showPageNumbers,
              showQuestionNumbers: _showQuestionNumbers?.build(),
              questionTitleLocation: questionTitleLocation,
              questionDescriptionLocation: questionDescriptionLocation,
              questionErrorLocation: questionErrorLocation,
              showProgressBar: showProgressBar,
              progressBarType: progressBarType,
              showTOC: showTOC,
              tocLocation: tocLocation,
              mode: mode,
              storeOthersAsComment: storeOthersAsComment,
              maxTextLength: maxTextLength,
              maxOthersLength: maxOthersLength,
              goNextPageAutomatic: goNextPageAutomatic,
              clearInvisibleValues: clearInvisibleValues,
              checkErrorsMode: checkErrorsMode,
              textUpdateMode: textUpdateMode,
              autoGrowComment: autoGrowComment,
              startSurveyText: startSurveyText,
              pagePrevText: pagePrevText,
              pageNextText: pageNextText,
              completeText: completeText,
              previewText: previewText,
              editText: editText,
              requiredText: requiredText,
              questionStartIndex: questionStartIndex,
              questionTitlePattern: questionTitlePattern,
              questionTitleTemplate: questionTitleTemplate,
              firstPageIsStarted: firstPageIsStarted,
              isSinglePage: isSinglePage,
              questionsOnPageMode: questionsOnPageMode,
              showPreviewBeforeComplete: showPreviewBeforeComplete,
              maxTimeToFinish: maxTimeToFinish,
              maxTimeToFinishPage: maxTimeToFinishPage,
              showTimerPanel: showTimerPanel,
              showTimerPanelMode: showTimerPanelMode,
              widthMode: widthMode,
              width: width,
              backgroundImage: backgroundImage,
              backgroundOpacity: backgroundOpacity,
              showBrandInfo: showBrandInfo);
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'completedHtmlOnCondition';
        _completedHtmlOnCondition?.build();

        _$failedField = 'pages';
        _pages?.build();
        _$failedField = 'questions';
        _questions?.build();
        _$failedField = 'triggers';
        _triggers?.build();
        _$failedField = 'calculatedValues';
        _calculatedValues?.build();

        _$failedField = 'navigateToUrlOnCondition';
        _navigateToUrlOnCondition?.build();

        _$failedField = 'showQuestionNumbers';
        _showQuestionNumbers?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'Survey', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
