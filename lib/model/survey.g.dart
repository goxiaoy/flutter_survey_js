// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'survey.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Survey _$SurveyFromJson(Map<String, dynamic> json) => Survey()
  ..locale = json['locale'] as String?
  ..title = json['title'] as String?
  ..description = json['description'] as String?
  ..logo = json['logo'] as String?
  ..logoWidth = json['logoWidth'] as String?
  ..logoFit = json['logoFit'] as String?
  ..logoPosition = json['logoPosition'] as String?
  ..focusFirstQuestionAutomatic = json['focusFirstQuestionAutomatic'] as bool?
  ..focusOnFirstError = json['focusOnFirstError'] as bool?
  ..completedHtml = json['completedHtml'] as String?
  ..completedBeforeHtml = json['completedBeforeHtml'] as String?
  ..completedHtmlOnCondition =
      (json['completedHtmlOnCondition'] as List<dynamic>?)
          ?.map((e) => HtmlConditionItem.fromJson(e as Map<String, dynamic>))
          .toList()
  ..loadingHtml = json['loadingHtml'] as String?
  ..pages = (json['pages'] as List<dynamic>?)
      ?.map((e) => Page.fromJson(e as Map<String, dynamic>))
      .toList()
  ..questions = (json['questions'] as List<dynamic>?)
      ?.map((e) => ElementBase.fromJson(e as Map<String, dynamic>))
      .toList()
  ..triggers = (json['triggers'] as List<dynamic>?)
      ?.map((e) => SurveyTrigger.fromJson(e as Map<String, dynamic>))
      .toList()
  ..calculatedValues = (json['calculatedValues'] as List<dynamic>?)
      ?.map((e) => CalculatedValue.fromJson(e as Map<String, dynamic>))
      .toList()
  ..surveyId = json['surveyId'] as String?
  ..surveyPostId = json['surveyPostId'] as String?
  ..surveyShowDataSaving = json['surveyShowDataSaving'] as bool?
  ..cookieName = json['cookieName'] as String?
  ..sendResultOnPageNext = json['sendResultOnPageNext'] as bool?
  ..showNavigationButtons = json['showNavigationButtons'] as String?
  ..showPrevButton = json['showPrevButton'] as bool?
  ..showTitle = json['showTitle'] as bool?
  ..showPageTitles = json['showPageTitles'] as bool?
  ..showCompletedPage = json['showCompletedPage'] as bool?
  ..navigateToUrl = json['navigateToUrl'] as String?
  ..navigateToUrlOnCondition =
      (json['navigateToUrlOnCondition'] as List<dynamic>?)
          ?.map((e) => UrlConditionItem.fromJson(e as Map<String, dynamic>))
          .toList()
  ..questionsOrder = json['questionsOrder'] as String?
  ..showPageNumbers = json['showPageNumbers'] as bool?
  ..showQuestionNumbers = Survey._boolToString(json['showQuestionNumbers'])
  ..questionTitleLocation = json['questionTitleLocation'] as String?
  ..questionDescriptionLocation = json['questionDescriptionLocation'] as String?
  ..questionErrorLocation = json['questionErrorLocation'] as String?
  ..showProgressBar = json['showProgressBar'] as String?
  ..progressBarType = json['progressBarType'] as String?
  ..mode = json['mode'] as String?
  ..storeOthersAsComment = json['storeOthersAsComment'] as bool?
  ..maxTextLength = json['maxTextLength'] as num?
  ..maxOthersLength = json['maxOthersLength'] as num?
  ..goNextPageAutomatic = json['goNextPageAutomatic'] as bool?
  ..clearInvisibleValues = json['clearInvisibleValues'] as String?
  ..checkErrorsMode = json['checkErrorsMode'] as String?
  ..textUpdateMode = json['textUpdateMode'] as String?
  ..startSurveyText = json['startSurveyText'] as String?
  ..pagePrevText = json['pagePrevText'] as String?
  ..pageNextText = json['pageNextText'] as String?
  ..completeText = json['completeText'] as String?
  ..previewText = json['previewText'] as String?
  ..editText = json['editText'] as String?
  ..requiredText = json['requiredText'] as String?
  ..questionStartIndex = json['questionStartIndex'] as String?
  ..questionTitlePattern = json['questionTitlePattern'] as String?
  ..questionTitleTemplate = json['questionTitleTemplate'] as String?
  ..firstPageIsStarted = json['firstPageIsStarted'] as bool?
  ..isSinglePage = json['isSinglePage'] as bool?
  ..questionsOnPageMode = json['questionsOnPageMode'] as String?
  ..showPreviewBeforeComplete = json['showPreviewBeforeComplete'] as String?
  ..maxTimeToFinish = json['maxTimeToFinish'] as int?
  ..maxTimeToFinishPage = json['maxTimeToFinishPage'] as int?
  ..showTimerPanel = json['showTimerPanel'] as String?
  ..showTimerPanelMode = json['showTimerPanelMode'] as String?;

Map<String, dynamic> _$SurveyToJson(Survey instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('locale', instance.locale);
  writeNotNull('title', instance.title);
  writeNotNull('description', instance.description);
  writeNotNull('logo', instance.logo);
  writeNotNull('logoWidth', instance.logoWidth);
  writeNotNull('logoFit', instance.logoFit);
  writeNotNull('logoPosition', instance.logoPosition);
  writeNotNull(
      'focusFirstQuestionAutomatic', instance.focusFirstQuestionAutomatic);
  writeNotNull('focusOnFirstError', instance.focusOnFirstError);
  writeNotNull('completedHtml', instance.completedHtml);
  writeNotNull('completedBeforeHtml', instance.completedBeforeHtml);
  writeNotNull('completedHtmlOnCondition', instance.completedHtmlOnCondition);
  writeNotNull('loadingHtml', instance.loadingHtml);
  writeNotNull('pages', instance.pages);
  writeNotNull('questions', instance.questions);
  writeNotNull('triggers', instance.triggers);
  writeNotNull('calculatedValues', instance.calculatedValues);
  writeNotNull('surveyId', instance.surveyId);
  writeNotNull('surveyPostId', instance.surveyPostId);
  writeNotNull('surveyShowDataSaving', instance.surveyShowDataSaving);
  writeNotNull('cookieName', instance.cookieName);
  writeNotNull('sendResultOnPageNext', instance.sendResultOnPageNext);
  writeNotNull('showNavigationButtons', instance.showNavigationButtons);
  writeNotNull('showPrevButton', instance.showPrevButton);
  writeNotNull('showTitle', instance.showTitle);
  writeNotNull('showPageTitles', instance.showPageTitles);
  writeNotNull('showCompletedPage', instance.showCompletedPage);
  writeNotNull('navigateToUrl', instance.navigateToUrl);
  writeNotNull('navigateToUrlOnCondition', instance.navigateToUrlOnCondition);
  writeNotNull('questionsOrder', instance.questionsOrder);
  writeNotNull('showPageNumbers', instance.showPageNumbers);
  writeNotNull('showQuestionNumbers', instance.showQuestionNumbers);
  writeNotNull('questionTitleLocation', instance.questionTitleLocation);
  writeNotNull(
      'questionDescriptionLocation', instance.questionDescriptionLocation);
  writeNotNull('questionErrorLocation', instance.questionErrorLocation);
  writeNotNull('showProgressBar', instance.showProgressBar);
  writeNotNull('progressBarType', instance.progressBarType);
  writeNotNull('mode', instance.mode);
  writeNotNull('storeOthersAsComment', instance.storeOthersAsComment);
  writeNotNull('maxTextLength', instance.maxTextLength);
  writeNotNull('maxOthersLength', instance.maxOthersLength);
  writeNotNull('goNextPageAutomatic', instance.goNextPageAutomatic);
  writeNotNull('clearInvisibleValues', instance.clearInvisibleValues);
  writeNotNull('checkErrorsMode', instance.checkErrorsMode);
  writeNotNull('textUpdateMode', instance.textUpdateMode);
  writeNotNull('startSurveyText', instance.startSurveyText);
  writeNotNull('pagePrevText', instance.pagePrevText);
  writeNotNull('pageNextText', instance.pageNextText);
  writeNotNull('completeText', instance.completeText);
  writeNotNull('previewText', instance.previewText);
  writeNotNull('editText', instance.editText);
  writeNotNull('requiredText', instance.requiredText);
  writeNotNull('questionStartIndex', instance.questionStartIndex);
  writeNotNull('questionTitlePattern', instance.questionTitlePattern);
  writeNotNull('questionTitleTemplate', instance.questionTitleTemplate);
  writeNotNull('firstPageIsStarted', instance.firstPageIsStarted);
  writeNotNull('isSinglePage', instance.isSinglePage);
  writeNotNull('questionsOnPageMode', instance.questionsOnPageMode);
  writeNotNull('showPreviewBeforeComplete', instance.showPreviewBeforeComplete);
  writeNotNull('maxTimeToFinish', instance.maxTimeToFinish);
  writeNotNull('maxTimeToFinishPage', instance.maxTimeToFinishPage);
  writeNotNull('showTimerPanel', instance.showTimerPanel);
  writeNotNull('showTimerPanelMode', instance.showTimerPanelMode);
  return val;
}

ChoicesRestful _$ChoicesRestfulFromJson(Map<String, dynamic> json) =>
    ChoicesRestful();

Map<String, dynamic> _$ChoicesRestfulToJson(ChoicesRestful instance) =>
    <String, dynamic>{};

CheckBox _$CheckBoxFromJson(Map<String, dynamic> json) => CheckBox()
  ..state = json['state'] as String?
  ..name = json['name'] as String?
  ..visible = json['visible'] as bool?
  ..useDisplayValuesInTitle = json['useDisplayValuesInTitle'] as bool?
  ..visibleIf = json['visibleIf'] as String?
  ..width = json['width'] as String?
  ..minWidth = json['minWidth'] as String?
  ..maxWidth = json['maxWidth'] as String?
  ..startWithNewLine = json['startWithNewLine'] as bool?
  ..indent = json['indent'] as int?
  ..page = json['page'] as String?
  ..title = json['title'] as String?
  ..titleLocation = json['titleLocation'] as String?
  ..description = json['description'] as String?
  ..descriptionLocation = json['descriptionLocation'] as String?
  ..hideNumber = json['hideNumber'] as bool?
  ..valueName = json['valueName'] as String?
  ..enableIf = json['enableIf'] as String?
  ..defaultValue = json['defaultValue']
  ..defaultValueExpression = json['defaultValueExpression'] as String?
  ..correctAnswer = json['correctAnswer'] as String?
  ..isRequired = json['isRequired'] as bool?
  ..requiredIf = json['requiredIf'] as String?
  ..requiredErrorText = json['requiredErrorText'] as String?
  ..readOnly = json['readOnly'] as bool?
  ..validators = (json['validators'] as List<dynamic>?)
      ?.map((e) => SurveyValidator.fromJson(e as Map<String, dynamic>))
      .toList()
  ..bindings = json['bindings'] as String?
  ..renderAs = json['renderAs'] as String?
  ..hasComment = json['hasComment'] as String?
  ..commentText = json['commentText'] as String?
  ..choicesFromQuestion = json['choicesFromQuestion'] as String?
  ..choices = ItemValue.fromListJson(json['choices'] as List?)
  ..choicesFromQuestionMode = json['choicesFromQuestionMode'] as String?
  ..choicesOrder = json['choicesOrder'] as String?
  ..choicesByUrl = json['choicesByUrl'] == null
      ? null
      : ChoicesRestful.fromJson(json['choicesByUrl'] as Map<String, dynamic>)
  ..hideIfChoicesEmpty = json['hideIfChoicesEmpty'] as bool?
  ..choicesVisibleIf = json['choicesVisibleIf'] as String?
  ..choicesEnableIf = json['choicesEnableIf'] as String?
  ..hasOther = json['hasOther'] as bool?
  ..hasNone = json['hasNone'] as bool?
  ..otherPlaceHolder = json['otherPlaceHolder'] as String?
  ..noneText = json['noneText'] as String?
  ..otherText = json['otherText'] as String?
  ..otherErrorText = json['otherErrorText'] as String?
  ..storeOthersAsComment = json['storeOthersAsComment'] as String?
  ..colCount = json['colCount'] as int?
  ..type = json['type'] as String?
  ..hasSelectAll = json['hasSelectAll'] as bool?
  ..maxSelectedChoices = json['maxSelectedChoices'] as int?
  ..selectAllText = json['selectAllText'] as String?;

Map<String, dynamic> _$CheckBoxToJson(CheckBox instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('state', instance.state);
  writeNotNull('name', instance.name);
  writeNotNull('visible', instance.visible);
  writeNotNull('useDisplayValuesInTitle', instance.useDisplayValuesInTitle);
  writeNotNull('visibleIf', instance.visibleIf);
  writeNotNull('width', instance.width);
  writeNotNull('minWidth', instance.minWidth);
  writeNotNull('maxWidth', instance.maxWidth);
  writeNotNull('startWithNewLine', instance.startWithNewLine);
  writeNotNull('indent', instance.indent);
  writeNotNull('page', instance.page);
  writeNotNull('title', instance.title);
  writeNotNull('titleLocation', instance.titleLocation);
  writeNotNull('description', instance.description);
  writeNotNull('descriptionLocation', instance.descriptionLocation);
  writeNotNull('hideNumber', instance.hideNumber);
  writeNotNull('valueName', instance.valueName);
  writeNotNull('enableIf', instance.enableIf);
  writeNotNull('defaultValue', instance.defaultValue);
  writeNotNull('defaultValueExpression', instance.defaultValueExpression);
  writeNotNull('correctAnswer', instance.correctAnswer);
  writeNotNull('isRequired', instance.isRequired);
  writeNotNull('requiredIf', instance.requiredIf);
  writeNotNull('requiredErrorText', instance.requiredErrorText);
  writeNotNull('readOnly', instance.readOnly);
  writeNotNull('validators', instance.validators);
  writeNotNull('bindings', instance.bindings);
  writeNotNull('renderAs', instance.renderAs);
  writeNotNull('hasComment', instance.hasComment);
  writeNotNull('commentText', instance.commentText);
  writeNotNull('choicesFromQuestion', instance.choicesFromQuestion);
  writeNotNull('choices', instance.choices);
  writeNotNull('choicesFromQuestionMode', instance.choicesFromQuestionMode);
  writeNotNull('choicesOrder', instance.choicesOrder);
  writeNotNull('choicesByUrl', instance.choicesByUrl);
  writeNotNull('hideIfChoicesEmpty', instance.hideIfChoicesEmpty);
  writeNotNull('choicesVisibleIf', instance.choicesVisibleIf);
  writeNotNull('choicesEnableIf', instance.choicesEnableIf);
  writeNotNull('hasOther', instance.hasOther);
  writeNotNull('hasNone', instance.hasNone);
  writeNotNull('otherPlaceHolder', instance.otherPlaceHolder);
  writeNotNull('noneText', instance.noneText);
  writeNotNull('otherText', instance.otherText);
  writeNotNull('otherErrorText', instance.otherErrorText);
  writeNotNull('storeOthersAsComment', instance.storeOthersAsComment);
  writeNotNull('colCount', instance.colCount);
  writeNotNull('type', instance.type);
  writeNotNull('hasSelectAll', instance.hasSelectAll);
  writeNotNull('maxSelectedChoices', instance.maxSelectedChoices);
  writeNotNull('selectAllText', instance.selectAllText);
  return val;
}

Ranking _$RankingFromJson(Map<String, dynamic> json) => Ranking()
  ..state = json['state'] as String?
  ..name = json['name'] as String?
  ..visible = json['visible'] as bool?
  ..useDisplayValuesInTitle = json['useDisplayValuesInTitle'] as bool?
  ..visibleIf = json['visibleIf'] as String?
  ..width = json['width'] as String?
  ..minWidth = json['minWidth'] as String?
  ..maxWidth = json['maxWidth'] as String?
  ..startWithNewLine = json['startWithNewLine'] as bool?
  ..indent = json['indent'] as int?
  ..page = json['page'] as String?
  ..title = json['title'] as String?
  ..titleLocation = json['titleLocation'] as String?
  ..description = json['description'] as String?
  ..descriptionLocation = json['descriptionLocation'] as String?
  ..hideNumber = json['hideNumber'] as bool?
  ..valueName = json['valueName'] as String?
  ..enableIf = json['enableIf'] as String?
  ..defaultValue = json['defaultValue']
  ..defaultValueExpression = json['defaultValueExpression'] as String?
  ..correctAnswer = json['correctAnswer'] as String?
  ..isRequired = json['isRequired'] as bool?
  ..requiredIf = json['requiredIf'] as String?
  ..requiredErrorText = json['requiredErrorText'] as String?
  ..readOnly = json['readOnly'] as bool?
  ..validators = (json['validators'] as List<dynamic>?)
      ?.map((e) => SurveyValidator.fromJson(e as Map<String, dynamic>))
      .toList()
  ..bindings = json['bindings'] as String?
  ..renderAs = json['renderAs'] as String?
  ..hasComment = json['hasComment'] as String?
  ..commentText = json['commentText'] as String?
  ..choicesFromQuestion = json['choicesFromQuestion'] as String?
  ..choices = ItemValue.fromListJson(json['choices'] as List?)
  ..choicesFromQuestionMode = json['choicesFromQuestionMode'] as String?
  ..choicesOrder = json['choicesOrder'] as String?
  ..choicesByUrl = json['choicesByUrl'] == null
      ? null
      : ChoicesRestful.fromJson(json['choicesByUrl'] as Map<String, dynamic>)
  ..hideIfChoicesEmpty = json['hideIfChoicesEmpty'] as bool?
  ..choicesVisibleIf = json['choicesVisibleIf'] as String?
  ..choicesEnableIf = json['choicesEnableIf'] as String?
  ..hasOther = json['hasOther'] as bool?
  ..hasNone = json['hasNone'] as bool?
  ..otherPlaceHolder = json['otherPlaceHolder'] as String?
  ..hasSelectAll = json['hasSelectAll'] as bool?
  ..maxSelectedChoices = json['maxSelectedChoices'] as int?
  ..type = json['type'] as String?
  ..otherText = json['otherText'] as String?
  ..otherErrorText = json['otherErrorText'] as String?
  ..storeOthersAsComment = json['storeOthersAsComment'] as String?
  ..noneText = json['noneText'] as String?
  ..selectAllText = json['selectAllText'] as String?
  ..colCount = json['colCount'] as int?;

Map<String, dynamic> _$RankingToJson(Ranking instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('state', instance.state);
  writeNotNull('name', instance.name);
  writeNotNull('visible', instance.visible);
  writeNotNull('useDisplayValuesInTitle', instance.useDisplayValuesInTitle);
  writeNotNull('visibleIf', instance.visibleIf);
  writeNotNull('width', instance.width);
  writeNotNull('minWidth', instance.minWidth);
  writeNotNull('maxWidth', instance.maxWidth);
  writeNotNull('startWithNewLine', instance.startWithNewLine);
  writeNotNull('indent', instance.indent);
  writeNotNull('page', instance.page);
  writeNotNull('title', instance.title);
  writeNotNull('titleLocation', instance.titleLocation);
  writeNotNull('description', instance.description);
  writeNotNull('descriptionLocation', instance.descriptionLocation);
  writeNotNull('hideNumber', instance.hideNumber);
  writeNotNull('valueName', instance.valueName);
  writeNotNull('enableIf', instance.enableIf);
  writeNotNull('defaultValue', instance.defaultValue);
  writeNotNull('defaultValueExpression', instance.defaultValueExpression);
  writeNotNull('correctAnswer', instance.correctAnswer);
  writeNotNull('isRequired', instance.isRequired);
  writeNotNull('requiredIf', instance.requiredIf);
  writeNotNull('requiredErrorText', instance.requiredErrorText);
  writeNotNull('readOnly', instance.readOnly);
  writeNotNull('validators', instance.validators);
  writeNotNull('bindings', instance.bindings);
  writeNotNull('renderAs', instance.renderAs);
  writeNotNull('hasComment', instance.hasComment);
  writeNotNull('commentText', instance.commentText);
  writeNotNull('choicesFromQuestion', instance.choicesFromQuestion);
  writeNotNull('choices', instance.choices);
  writeNotNull('choicesFromQuestionMode', instance.choicesFromQuestionMode);
  writeNotNull('choicesOrder', instance.choicesOrder);
  writeNotNull('choicesByUrl', instance.choicesByUrl);
  writeNotNull('hideIfChoicesEmpty', instance.hideIfChoicesEmpty);
  writeNotNull('choicesVisibleIf', instance.choicesVisibleIf);
  writeNotNull('choicesEnableIf', instance.choicesEnableIf);
  writeNotNull('hasOther', instance.hasOther);
  writeNotNull('hasNone', instance.hasNone);
  writeNotNull('otherPlaceHolder', instance.otherPlaceHolder);
  writeNotNull('hasSelectAll', instance.hasSelectAll);
  writeNotNull('maxSelectedChoices', instance.maxSelectedChoices);
  writeNotNull('type', instance.type);
  writeNotNull('otherText', instance.otherText);
  writeNotNull('otherErrorText', instance.otherErrorText);
  writeNotNull('storeOthersAsComment', instance.storeOthersAsComment);
  writeNotNull('noneText', instance.noneText);
  writeNotNull('selectAllText', instance.selectAllText);
  writeNotNull('colCount', instance.colCount);
  return val;
}

RadioGroup _$RadioGroupFromJson(Map<String, dynamic> json) => RadioGroup()
  ..state = json['state'] as String?
  ..name = json['name'] as String?
  ..visible = json['visible'] as bool?
  ..useDisplayValuesInTitle = json['useDisplayValuesInTitle'] as bool?
  ..visibleIf = json['visibleIf'] as String?
  ..width = json['width'] as String?
  ..minWidth = json['minWidth'] as String?
  ..maxWidth = json['maxWidth'] as String?
  ..startWithNewLine = json['startWithNewLine'] as bool?
  ..indent = json['indent'] as int?
  ..page = json['page'] as String?
  ..title = json['title'] as String?
  ..titleLocation = json['titleLocation'] as String?
  ..description = json['description'] as String?
  ..descriptionLocation = json['descriptionLocation'] as String?
  ..hideNumber = json['hideNumber'] as bool?
  ..valueName = json['valueName'] as String?
  ..enableIf = json['enableIf'] as String?
  ..defaultValue = json['defaultValue']
  ..defaultValueExpression = json['defaultValueExpression'] as String?
  ..correctAnswer = json['correctAnswer'] as String?
  ..isRequired = json['isRequired'] as bool?
  ..requiredIf = json['requiredIf'] as String?
  ..requiredErrorText = json['requiredErrorText'] as String?
  ..readOnly = json['readOnly'] as bool?
  ..validators = (json['validators'] as List<dynamic>?)
      ?.map((e) => SurveyValidator.fromJson(e as Map<String, dynamic>))
      .toList()
  ..bindings = json['bindings'] as String?
  ..renderAs = json['renderAs'] as String?
  ..hasComment = json['hasComment'] as String?
  ..commentText = json['commentText'] as String?
  ..choicesFromQuestion = json['choicesFromQuestion'] as String?
  ..choices = ItemValue.fromListJson(json['choices'] as List?)
  ..choicesFromQuestionMode = json['choicesFromQuestionMode'] as String?
  ..choicesOrder = json['choicesOrder'] as String?
  ..choicesByUrl = json['choicesByUrl'] == null
      ? null
      : ChoicesRestful.fromJson(json['choicesByUrl'] as Map<String, dynamic>)
  ..hideIfChoicesEmpty = json['hideIfChoicesEmpty'] as bool?
  ..choicesVisibleIf = json['choicesVisibleIf'] as String?
  ..choicesEnableIf = json['choicesEnableIf'] as String?
  ..hasOther = json['hasOther'] as bool?
  ..hasNone = json['hasNone'] as bool?
  ..otherPlaceHolder = json['otherPlaceHolder'] as String?
  ..noneText = json['noneText'] as String?
  ..otherText = json['otherText'] as String?
  ..otherErrorText = json['otherErrorText'] as String?
  ..storeOthersAsComment = json['storeOthersAsComment'] as String?
  ..colCount = json['colCount'] as int?
  ..type = json['type'] as String?
  ..showClearButton = json['showClearButton'] as bool?;

Map<String, dynamic> _$RadioGroupToJson(RadioGroup instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('state', instance.state);
  writeNotNull('name', instance.name);
  writeNotNull('visible', instance.visible);
  writeNotNull('useDisplayValuesInTitle', instance.useDisplayValuesInTitle);
  writeNotNull('visibleIf', instance.visibleIf);
  writeNotNull('width', instance.width);
  writeNotNull('minWidth', instance.minWidth);
  writeNotNull('maxWidth', instance.maxWidth);
  writeNotNull('startWithNewLine', instance.startWithNewLine);
  writeNotNull('indent', instance.indent);
  writeNotNull('page', instance.page);
  writeNotNull('title', instance.title);
  writeNotNull('titleLocation', instance.titleLocation);
  writeNotNull('description', instance.description);
  writeNotNull('descriptionLocation', instance.descriptionLocation);
  writeNotNull('hideNumber', instance.hideNumber);
  writeNotNull('valueName', instance.valueName);
  writeNotNull('enableIf', instance.enableIf);
  writeNotNull('defaultValue', instance.defaultValue);
  writeNotNull('defaultValueExpression', instance.defaultValueExpression);
  writeNotNull('correctAnswer', instance.correctAnswer);
  writeNotNull('isRequired', instance.isRequired);
  writeNotNull('requiredIf', instance.requiredIf);
  writeNotNull('requiredErrorText', instance.requiredErrorText);
  writeNotNull('readOnly', instance.readOnly);
  writeNotNull('validators', instance.validators);
  writeNotNull('bindings', instance.bindings);
  writeNotNull('renderAs', instance.renderAs);
  writeNotNull('hasComment', instance.hasComment);
  writeNotNull('commentText', instance.commentText);
  writeNotNull('choicesFromQuestion', instance.choicesFromQuestion);
  writeNotNull('choices', instance.choices);
  writeNotNull('choicesFromQuestionMode', instance.choicesFromQuestionMode);
  writeNotNull('choicesOrder', instance.choicesOrder);
  writeNotNull('choicesByUrl', instance.choicesByUrl);
  writeNotNull('hideIfChoicesEmpty', instance.hideIfChoicesEmpty);
  writeNotNull('choicesVisibleIf', instance.choicesVisibleIf);
  writeNotNull('choicesEnableIf', instance.choicesEnableIf);
  writeNotNull('hasOther', instance.hasOther);
  writeNotNull('hasNone', instance.hasNone);
  writeNotNull('otherPlaceHolder', instance.otherPlaceHolder);
  writeNotNull('noneText', instance.noneText);
  writeNotNull('otherText', instance.otherText);
  writeNotNull('otherErrorText', instance.otherErrorText);
  writeNotNull('storeOthersAsComment', instance.storeOthersAsComment);
  writeNotNull('colCount', instance.colCount);
  writeNotNull('type', instance.type);
  writeNotNull('showClearButton', instance.showClearButton);
  return val;
}

ImagePicker _$ImagePickerFromJson(Map<String, dynamic> json) => ImagePicker()
  ..state = json['state'] as String?
  ..name = json['name'] as String?
  ..visible = json['visible'] as bool?
  ..useDisplayValuesInTitle = json['useDisplayValuesInTitle'] as bool?
  ..visibleIf = json['visibleIf'] as String?
  ..width = json['width'] as String?
  ..minWidth = json['minWidth'] as String?
  ..maxWidth = json['maxWidth'] as String?
  ..startWithNewLine = json['startWithNewLine'] as bool?
  ..indent = json['indent'] as int?
  ..page = json['page'] as String?
  ..title = json['title'] as String?
  ..titleLocation = json['titleLocation'] as String?
  ..description = json['description'] as String?
  ..descriptionLocation = json['descriptionLocation'] as String?
  ..hideNumber = json['hideNumber'] as bool?
  ..valueName = json['valueName'] as String?
  ..enableIf = json['enableIf'] as String?
  ..defaultValue = json['defaultValue']
  ..defaultValueExpression = json['defaultValueExpression'] as String?
  ..correctAnswer = json['correctAnswer'] as String?
  ..isRequired = json['isRequired'] as bool?
  ..requiredIf = json['requiredIf'] as String?
  ..requiredErrorText = json['requiredErrorText'] as String?
  ..readOnly = json['readOnly'] as bool?
  ..validators = (json['validators'] as List<dynamic>?)
      ?.map((e) => SurveyValidator.fromJson(e as Map<String, dynamic>))
      .toList()
  ..bindings = json['bindings'] as String?
  ..renderAs = json['renderAs'] as String?
  ..hasComment = json['hasComment'] as String?
  ..commentText = json['commentText'] as String?
  ..choicesFromQuestion = json['choicesFromQuestion'] as String?
  ..choicesFromQuestionMode = json['choicesFromQuestionMode'] as String?
  ..choicesOrder = json['choicesOrder'] as String?
  ..choicesByUrl = json['choicesByUrl'] == null
      ? null
      : ChoicesRestful.fromJson(json['choicesByUrl'] as Map<String, dynamic>)
  ..hideIfChoicesEmpty = json['hideIfChoicesEmpty'] as bool?
  ..choicesVisibleIf = json['choicesVisibleIf'] as String?
  ..choicesEnableIf = json['choicesEnableIf'] as String?
  ..hasOther = json['hasOther'] as bool?
  ..hasNone = json['hasNone'] as bool?
  ..otherPlaceHolder = json['otherPlaceHolder'] as String?
  ..type = json['type'] as String?
  ..otherText = json['otherText'] as String?
  ..noneText = json['noneText'] as String?
  ..optionsCaption = json['optionsCaption'] as String?
  ..otherErrorText = json['otherErrorText'] as String?
  ..storeOthersAsComment = json['storeOthersAsComment'] as String?
  ..contentMode = json['contentMode'] as String?
  ..imageFit = json['imageFit'] as String?
  ..imageHeight = json['imageHeight'] as int?
  ..imageWidth = json['imageWidth'] as int?
  ..showLabel = json['showLabel'] as bool?
  ..colCount = json['colCount'] as int?
  ..multiSelect = json['multiSelect'] as bool?
  ..choices = ImageItemValue.fromListJson(json['choices'] as List?);

Map<String, dynamic> _$ImagePickerToJson(ImagePicker instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('state', instance.state);
  writeNotNull('name', instance.name);
  writeNotNull('visible', instance.visible);
  writeNotNull('useDisplayValuesInTitle', instance.useDisplayValuesInTitle);
  writeNotNull('visibleIf', instance.visibleIf);
  writeNotNull('width', instance.width);
  writeNotNull('minWidth', instance.minWidth);
  writeNotNull('maxWidth', instance.maxWidth);
  writeNotNull('startWithNewLine', instance.startWithNewLine);
  writeNotNull('indent', instance.indent);
  writeNotNull('page', instance.page);
  writeNotNull('title', instance.title);
  writeNotNull('titleLocation', instance.titleLocation);
  writeNotNull('description', instance.description);
  writeNotNull('descriptionLocation', instance.descriptionLocation);
  writeNotNull('hideNumber', instance.hideNumber);
  writeNotNull('valueName', instance.valueName);
  writeNotNull('enableIf', instance.enableIf);
  writeNotNull('defaultValue', instance.defaultValue);
  writeNotNull('defaultValueExpression', instance.defaultValueExpression);
  writeNotNull('correctAnswer', instance.correctAnswer);
  writeNotNull('isRequired', instance.isRequired);
  writeNotNull('requiredIf', instance.requiredIf);
  writeNotNull('requiredErrorText', instance.requiredErrorText);
  writeNotNull('readOnly', instance.readOnly);
  writeNotNull('validators', instance.validators);
  writeNotNull('bindings', instance.bindings);
  writeNotNull('renderAs', instance.renderAs);
  writeNotNull('hasComment', instance.hasComment);
  writeNotNull('commentText', instance.commentText);
  writeNotNull('choicesFromQuestion', instance.choicesFromQuestion);
  writeNotNull('choicesFromQuestionMode', instance.choicesFromQuestionMode);
  writeNotNull('choicesOrder', instance.choicesOrder);
  writeNotNull('choicesByUrl', instance.choicesByUrl);
  writeNotNull('hideIfChoicesEmpty', instance.hideIfChoicesEmpty);
  writeNotNull('choicesVisibleIf', instance.choicesVisibleIf);
  writeNotNull('choicesEnableIf', instance.choicesEnableIf);
  writeNotNull('hasOther', instance.hasOther);
  writeNotNull('hasNone', instance.hasNone);
  writeNotNull('otherPlaceHolder', instance.otherPlaceHolder);
  writeNotNull('type', instance.type);
  writeNotNull('otherText', instance.otherText);
  writeNotNull('noneText', instance.noneText);
  writeNotNull('optionsCaption', instance.optionsCaption);
  writeNotNull('otherErrorText', instance.otherErrorText);
  writeNotNull('storeOthersAsComment', instance.storeOthersAsComment);
  writeNotNull('contentMode', instance.contentMode);
  writeNotNull('imageFit', instance.imageFit);
  writeNotNull('imageHeight', instance.imageHeight);
  writeNotNull('imageWidth', instance.imageWidth);
  writeNotNull('showLabel', instance.showLabel);
  writeNotNull('colCount', instance.colCount);
  writeNotNull('multiSelect', instance.multiSelect);
  writeNotNull('choices', instance.choices);
  return val;
}

Dropdown _$DropdownFromJson(Map<String, dynamic> json) => Dropdown()
  ..state = json['state'] as String?
  ..name = json['name'] as String?
  ..visible = json['visible'] as bool?
  ..useDisplayValuesInTitle = json['useDisplayValuesInTitle'] as bool?
  ..visibleIf = json['visibleIf'] as String?
  ..width = json['width'] as String?
  ..minWidth = json['minWidth'] as String?
  ..maxWidth = json['maxWidth'] as String?
  ..startWithNewLine = json['startWithNewLine'] as bool?
  ..indent = json['indent'] as int?
  ..page = json['page'] as String?
  ..title = json['title'] as String?
  ..titleLocation = json['titleLocation'] as String?
  ..description = json['description'] as String?
  ..descriptionLocation = json['descriptionLocation'] as String?
  ..hideNumber = json['hideNumber'] as bool?
  ..valueName = json['valueName'] as String?
  ..enableIf = json['enableIf'] as String?
  ..defaultValue = json['defaultValue']
  ..defaultValueExpression = json['defaultValueExpression'] as String?
  ..correctAnswer = json['correctAnswer'] as String?
  ..isRequired = json['isRequired'] as bool?
  ..requiredIf = json['requiredIf'] as String?
  ..requiredErrorText = json['requiredErrorText'] as String?
  ..readOnly = json['readOnly'] as bool?
  ..validators = (json['validators'] as List<dynamic>?)
      ?.map((e) => SurveyValidator.fromJson(e as Map<String, dynamic>))
      .toList()
  ..bindings = json['bindings'] as String?
  ..renderAs = json['renderAs'] as String?
  ..hasComment = json['hasComment'] as String?
  ..commentText = json['commentText'] as String?
  ..choicesFromQuestion = json['choicesFromQuestion'] as String?
  ..choices = ItemValue.fromListJson(json['choices'] as List?)
  ..choicesFromQuestionMode = json['choicesFromQuestionMode'] as String?
  ..choicesOrder = json['choicesOrder'] as String?
  ..choicesByUrl = json['choicesByUrl'] == null
      ? null
      : ChoicesRestful.fromJson(json['choicesByUrl'] as Map<String, dynamic>)
  ..hideIfChoicesEmpty = json['hideIfChoicesEmpty'] as bool?
  ..choicesVisibleIf = json['choicesVisibleIf'] as String?
  ..choicesEnableIf = json['choicesEnableIf'] as String?
  ..hasOther = json['hasOther'] as bool?
  ..hasNone = json['hasNone'] as bool?
  ..otherPlaceHolder = json['otherPlaceHolder'] as String?
  ..noneText = json['noneText'] as String?
  ..otherText = json['otherText'] as String?
  ..otherErrorText = json['otherErrorText'] as String?
  ..storeOthersAsComment = json['storeOthersAsComment'] as String?
  ..type = json['type'] as String?
  ..optionsCaption = json['optionsCaption'] as String?
  ..showOptionsCaption = json['showOptionsCaption'] as bool?
  ..choicesMin = json['choicesMin'] as num?
  ..choicesMax = json['choicesMax'] as num?
  ..choicesStep = json['choicesStep'] as num?
  ..autoComplete = json['autoComplete'] as String?
  ..placeholder = json['placeholder'] as String?;

Map<String, dynamic> _$DropdownToJson(Dropdown instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('state', instance.state);
  writeNotNull('name', instance.name);
  writeNotNull('visible', instance.visible);
  writeNotNull('useDisplayValuesInTitle', instance.useDisplayValuesInTitle);
  writeNotNull('visibleIf', instance.visibleIf);
  writeNotNull('width', instance.width);
  writeNotNull('minWidth', instance.minWidth);
  writeNotNull('maxWidth', instance.maxWidth);
  writeNotNull('startWithNewLine', instance.startWithNewLine);
  writeNotNull('indent', instance.indent);
  writeNotNull('page', instance.page);
  writeNotNull('title', instance.title);
  writeNotNull('titleLocation', instance.titleLocation);
  writeNotNull('description', instance.description);
  writeNotNull('descriptionLocation', instance.descriptionLocation);
  writeNotNull('hideNumber', instance.hideNumber);
  writeNotNull('valueName', instance.valueName);
  writeNotNull('enableIf', instance.enableIf);
  writeNotNull('defaultValue', instance.defaultValue);
  writeNotNull('defaultValueExpression', instance.defaultValueExpression);
  writeNotNull('correctAnswer', instance.correctAnswer);
  writeNotNull('isRequired', instance.isRequired);
  writeNotNull('requiredIf', instance.requiredIf);
  writeNotNull('requiredErrorText', instance.requiredErrorText);
  writeNotNull('readOnly', instance.readOnly);
  writeNotNull('validators', instance.validators);
  writeNotNull('bindings', instance.bindings);
  writeNotNull('renderAs', instance.renderAs);
  writeNotNull('hasComment', instance.hasComment);
  writeNotNull('commentText', instance.commentText);
  writeNotNull('choicesFromQuestion', instance.choicesFromQuestion);
  writeNotNull('choices', instance.choices);
  writeNotNull('choicesFromQuestionMode', instance.choicesFromQuestionMode);
  writeNotNull('choicesOrder', instance.choicesOrder);
  writeNotNull('choicesByUrl', instance.choicesByUrl);
  writeNotNull('hideIfChoicesEmpty', instance.hideIfChoicesEmpty);
  writeNotNull('choicesVisibleIf', instance.choicesVisibleIf);
  writeNotNull('choicesEnableIf', instance.choicesEnableIf);
  writeNotNull('hasOther', instance.hasOther);
  writeNotNull('hasNone', instance.hasNone);
  writeNotNull('otherPlaceHolder', instance.otherPlaceHolder);
  writeNotNull('noneText', instance.noneText);
  writeNotNull('otherText', instance.otherText);
  writeNotNull('otherErrorText', instance.otherErrorText);
  writeNotNull('storeOthersAsComment', instance.storeOthersAsComment);
  writeNotNull('type', instance.type);
  writeNotNull('optionsCaption', instance.optionsCaption);
  writeNotNull('showOptionsCaption', instance.showOptionsCaption);
  writeNotNull('choicesMin', instance.choicesMin);
  writeNotNull('choicesMax', instance.choicesMax);
  writeNotNull('choicesStep', instance.choicesStep);
  writeNotNull('autoComplete', instance.autoComplete);
  writeNotNull('placeholder', instance.placeholder);
  return val;
}

Text _$TextFromJson(Map<String, dynamic> json) => Text()
  ..state = json['state'] as String?
  ..name = json['name'] as String?
  ..visible = json['visible'] as bool?
  ..useDisplayValuesInTitle = json['useDisplayValuesInTitle'] as bool?
  ..visibleIf = json['visibleIf'] as String?
  ..width = json['width'] as String?
  ..minWidth = json['minWidth'] as String?
  ..maxWidth = json['maxWidth'] as String?
  ..startWithNewLine = json['startWithNewLine'] as bool?
  ..indent = json['indent'] as int?
  ..page = json['page'] as String?
  ..title = json['title'] as String?
  ..titleLocation = json['titleLocation'] as String?
  ..description = json['description'] as String?
  ..descriptionLocation = json['descriptionLocation'] as String?
  ..hideNumber = json['hideNumber'] as bool?
  ..valueName = json['valueName'] as String?
  ..enableIf = json['enableIf'] as String?
  ..defaultValue = json['defaultValue']
  ..defaultValueExpression = json['defaultValueExpression'] as String?
  ..correctAnswer = json['correctAnswer'] as String?
  ..isRequired = json['isRequired'] as bool?
  ..requiredIf = json['requiredIf'] as String?
  ..requiredErrorText = json['requiredErrorText'] as String?
  ..readOnly = json['readOnly'] as bool?
  ..validators = (json['validators'] as List<dynamic>?)
      ?.map((e) => SurveyValidator.fromJson(e as Map<String, dynamic>))
      .toList()
  ..bindings = json['bindings'] as String?
  ..renderAs = json['renderAs'] as String?
  ..type = json['type'] as String?
  ..inputType = json['inputType'] as String?
  ..size = json['size'] as int?
  ..textUpdateMode = json['textUpdateMode'] as String?
  ..autoComplete = json['autoComplete'] as String?
  ..min = json['min'] as String?
  ..max = json['max'] as String?
  ..minValueExpression = json['minValueExpression'] as String?
  ..maxValueExpression = json['maxValueExpression'] as String?
  ..minErrorText = json['minErrorText'] as String?
  ..maxErrorText = json['maxErrorText'] as String?
  ..step = json['step'] as int?
  ..maxLength = json['maxLength'] as int?
  ..placeholder = json['placeholder'] as String?
  ..dataList =
      (json['dataList'] as List<dynamic>?)?.map((e) => e as String).toList();

Map<String, dynamic> _$TextToJson(Text instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('state', instance.state);
  writeNotNull('name', instance.name);
  writeNotNull('visible', instance.visible);
  writeNotNull('useDisplayValuesInTitle', instance.useDisplayValuesInTitle);
  writeNotNull('visibleIf', instance.visibleIf);
  writeNotNull('width', instance.width);
  writeNotNull('minWidth', instance.minWidth);
  writeNotNull('maxWidth', instance.maxWidth);
  writeNotNull('startWithNewLine', instance.startWithNewLine);
  writeNotNull('indent', instance.indent);
  writeNotNull('page', instance.page);
  writeNotNull('title', instance.title);
  writeNotNull('titleLocation', instance.titleLocation);
  writeNotNull('description', instance.description);
  writeNotNull('descriptionLocation', instance.descriptionLocation);
  writeNotNull('hideNumber', instance.hideNumber);
  writeNotNull('valueName', instance.valueName);
  writeNotNull('enableIf', instance.enableIf);
  writeNotNull('defaultValue', instance.defaultValue);
  writeNotNull('defaultValueExpression', instance.defaultValueExpression);
  writeNotNull('correctAnswer', instance.correctAnswer);
  writeNotNull('isRequired', instance.isRequired);
  writeNotNull('requiredIf', instance.requiredIf);
  writeNotNull('requiredErrorText', instance.requiredErrorText);
  writeNotNull('readOnly', instance.readOnly);
  writeNotNull('validators', instance.validators);
  writeNotNull('bindings', instance.bindings);
  writeNotNull('renderAs', instance.renderAs);
  writeNotNull('type', instance.type);
  writeNotNull('inputType', instance.inputType);
  writeNotNull('size', instance.size);
  writeNotNull('textUpdateMode', instance.textUpdateMode);
  writeNotNull('autoComplete', instance.autoComplete);
  writeNotNull('min', instance.min);
  writeNotNull('max', instance.max);
  writeNotNull('minValueExpression', instance.minValueExpression);
  writeNotNull('maxValueExpression', instance.maxValueExpression);
  writeNotNull('minErrorText', instance.minErrorText);
  writeNotNull('maxErrorText', instance.maxErrorText);
  writeNotNull('step', instance.step);
  writeNotNull('maxLength', instance.maxLength);
  writeNotNull('placeholder', instance.placeholder);
  writeNotNull('dataList', instance.dataList);
  return val;
}

MultipleText _$MultipleTextFromJson(Map<String, dynamic> json) => MultipleText()
  ..state = json['state'] as String?
  ..name = json['name'] as String?
  ..visible = json['visible'] as bool?
  ..useDisplayValuesInTitle = json['useDisplayValuesInTitle'] as bool?
  ..visibleIf = json['visibleIf'] as String?
  ..width = json['width'] as String?
  ..minWidth = json['minWidth'] as String?
  ..maxWidth = json['maxWidth'] as String?
  ..startWithNewLine = json['startWithNewLine'] as bool?
  ..indent = json['indent'] as int?
  ..page = json['page'] as String?
  ..title = json['title'] as String?
  ..titleLocation = json['titleLocation'] as String?
  ..description = json['description'] as String?
  ..descriptionLocation = json['descriptionLocation'] as String?
  ..hideNumber = json['hideNumber'] as bool?
  ..valueName = json['valueName'] as String?
  ..enableIf = json['enableIf'] as String?
  ..defaultValue = json['defaultValue']
  ..defaultValueExpression = json['defaultValueExpression'] as String?
  ..correctAnswer = json['correctAnswer'] as String?
  ..isRequired = json['isRequired'] as bool?
  ..requiredIf = json['requiredIf'] as String?
  ..requiredErrorText = json['requiredErrorText'] as String?
  ..readOnly = json['readOnly'] as bool?
  ..validators = (json['validators'] as List<dynamic>?)
      ?.map((e) => SurveyValidator.fromJson(e as Map<String, dynamic>))
      .toList()
  ..bindings = json['bindings'] as String?
  ..renderAs = json['renderAs'] as String?
  ..type = json['type'] as String?
  ..items = (json['items'] as List<dynamic>?)
      ?.map((e) => MultipleTextItem.fromJson(e as Map<String, dynamic>))
      .toList()
  ..itemSize = json['itemSize'] as int?
  ..colCount = json['colCount'] as int?;

Map<String, dynamic> _$MultipleTextToJson(MultipleText instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('state', instance.state);
  writeNotNull('name', instance.name);
  writeNotNull('visible', instance.visible);
  writeNotNull('useDisplayValuesInTitle', instance.useDisplayValuesInTitle);
  writeNotNull('visibleIf', instance.visibleIf);
  writeNotNull('width', instance.width);
  writeNotNull('minWidth', instance.minWidth);
  writeNotNull('maxWidth', instance.maxWidth);
  writeNotNull('startWithNewLine', instance.startWithNewLine);
  writeNotNull('indent', instance.indent);
  writeNotNull('page', instance.page);
  writeNotNull('title', instance.title);
  writeNotNull('titleLocation', instance.titleLocation);
  writeNotNull('description', instance.description);
  writeNotNull('descriptionLocation', instance.descriptionLocation);
  writeNotNull('hideNumber', instance.hideNumber);
  writeNotNull('valueName', instance.valueName);
  writeNotNull('enableIf', instance.enableIf);
  writeNotNull('defaultValue', instance.defaultValue);
  writeNotNull('defaultValueExpression', instance.defaultValueExpression);
  writeNotNull('correctAnswer', instance.correctAnswer);
  writeNotNull('isRequired', instance.isRequired);
  writeNotNull('requiredIf', instance.requiredIf);
  writeNotNull('requiredErrorText', instance.requiredErrorText);
  writeNotNull('readOnly', instance.readOnly);
  writeNotNull('validators', instance.validators);
  writeNotNull('bindings', instance.bindings);
  writeNotNull('renderAs', instance.renderAs);
  writeNotNull('type', instance.type);
  writeNotNull('items', instance.items);
  writeNotNull('itemSize', instance.itemSize);
  writeNotNull('colCount', instance.colCount);
  return val;
}

MultipleTextItem _$MultipleTextItemFromJson(Map<String, dynamic> json) =>
    MultipleTextItem()
      ..name = json['name'] as String?
      ..isRequired = json['isRequired'] as bool?
      ..inputType = json['inputType'] as String?
      ..title = json['title'] as String?
      ..maxLength = json['maxLength'] as int?
      ..size = json['size'] as int?
      ..requiredErrorText = json['requiredErrorText'] as String?
      ..validators = (json['validators'] as List<dynamic>?)
          ?.map((e) => SurveyValidator.fromJson(e as Map<String, dynamic>))
          .toList();

Map<String, dynamic> _$MultipleTextItemToJson(MultipleTextItem instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('name', instance.name);
  writeNotNull('isRequired', instance.isRequired);
  writeNotNull('inputType', instance.inputType);
  writeNotNull('title', instance.title);
  writeNotNull('maxLength', instance.maxLength);
  writeNotNull('size', instance.size);
  writeNotNull('requiredErrorText', instance.requiredErrorText);
  writeNotNull('validators', instance.validators);
  return val;
}

NonValue _$NonValueFromJson(Map<String, dynamic> json) => NonValue()
  ..state = json['state'] as String?
  ..name = json['name'] as String?
  ..visible = json['visible'] as bool?
  ..useDisplayValuesInTitle = json['useDisplayValuesInTitle'] as bool?
  ..visibleIf = json['visibleIf'] as String?
  ..width = json['width'] as String?
  ..minWidth = json['minWidth'] as String?
  ..maxWidth = json['maxWidth'] as String?
  ..startWithNewLine = json['startWithNewLine'] as bool?
  ..indent = json['indent'] as int?
  ..page = json['page'] as String?
  ..descriptionLocation = json['descriptionLocation'] as String?
  ..hideNumber = json['hideNumber'] as bool?
  ..defaultValue = json['defaultValue']
  ..defaultValueExpression = json['defaultValueExpression'] as String?
  ..readOnly = json['readOnly'] as bool?
  ..validators = (json['validators'] as List<dynamic>?)
      ?.map((e) => SurveyValidator.fromJson(e as Map<String, dynamic>))
      .toList()
  ..bindings = json['bindings'] as String?
  ..renderAs = json['renderAs'] as String?
  ..type = json['type'] as String?
  ..title = json['title'] as String?
  ..description = json['description'] as String?
  ..valueName = json['valueName'] as String?
  ..enableIf = json['enableIf'] as String?
  ..correctAnswer = json['correctAnswer'] as String?
  ..isRequired = json['isRequired'] as bool?
  ..requiredErrorText = json['requiredErrorText'] as String?
  ..requiredIf = json['requiredIf'] as String?
  ..titleLocation = json['titleLocation'] as String?;

Map<String, dynamic> _$NonValueToJson(NonValue instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('state', instance.state);
  writeNotNull('name', instance.name);
  writeNotNull('visible', instance.visible);
  writeNotNull('useDisplayValuesInTitle', instance.useDisplayValuesInTitle);
  writeNotNull('visibleIf', instance.visibleIf);
  writeNotNull('width', instance.width);
  writeNotNull('minWidth', instance.minWidth);
  writeNotNull('maxWidth', instance.maxWidth);
  writeNotNull('startWithNewLine', instance.startWithNewLine);
  writeNotNull('indent', instance.indent);
  writeNotNull('page', instance.page);
  writeNotNull('descriptionLocation', instance.descriptionLocation);
  writeNotNull('hideNumber', instance.hideNumber);
  writeNotNull('defaultValue', instance.defaultValue);
  writeNotNull('defaultValueExpression', instance.defaultValueExpression);
  writeNotNull('readOnly', instance.readOnly);
  writeNotNull('validators', instance.validators);
  writeNotNull('bindings', instance.bindings);
  writeNotNull('renderAs', instance.renderAs);
  writeNotNull('type', instance.type);
  writeNotNull('title', instance.title);
  writeNotNull('description', instance.description);
  writeNotNull('valueName', instance.valueName);
  writeNotNull('enableIf', instance.enableIf);
  writeNotNull('correctAnswer', instance.correctAnswer);
  writeNotNull('isRequired', instance.isRequired);
  writeNotNull('requiredErrorText', instance.requiredErrorText);
  writeNotNull('requiredIf', instance.requiredIf);
  writeNotNull('titleLocation', instance.titleLocation);
  return val;
}

Html _$HtmlFromJson(Map<String, dynamic> json) => Html()
  ..state = json['state'] as String?
  ..name = json['name'] as String?
  ..visible = json['visible'] as bool?
  ..useDisplayValuesInTitle = json['useDisplayValuesInTitle'] as bool?
  ..visibleIf = json['visibleIf'] as String?
  ..width = json['width'] as String?
  ..minWidth = json['minWidth'] as String?
  ..maxWidth = json['maxWidth'] as String?
  ..startWithNewLine = json['startWithNewLine'] as bool?
  ..indent = json['indent'] as int?
  ..page = json['page'] as String?
  ..descriptionLocation = json['descriptionLocation'] as String?
  ..hideNumber = json['hideNumber'] as bool?
  ..defaultValue = json['defaultValue']
  ..defaultValueExpression = json['defaultValueExpression'] as String?
  ..readOnly = json['readOnly'] as bool?
  ..validators = (json['validators'] as List<dynamic>?)
      ?.map((e) => SurveyValidator.fromJson(e as Map<String, dynamic>))
      .toList()
  ..bindings = json['bindings'] as String?
  ..renderAs = json['renderAs'] as String?
  ..title = json['title'] as String?
  ..description = json['description'] as String?
  ..valueName = json['valueName'] as String?
  ..enableIf = json['enableIf'] as String?
  ..correctAnswer = json['correctAnswer'] as String?
  ..isRequired = json['isRequired'] as bool?
  ..requiredErrorText = json['requiredErrorText'] as String?
  ..requiredIf = json['requiredIf'] as String?
  ..titleLocation = json['titleLocation'] as String?
  ..type = json['type'] as String?
  ..html = json['html'] as String?;

Map<String, dynamic> _$HtmlToJson(Html instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('state', instance.state);
  writeNotNull('name', instance.name);
  writeNotNull('visible', instance.visible);
  writeNotNull('useDisplayValuesInTitle', instance.useDisplayValuesInTitle);
  writeNotNull('visibleIf', instance.visibleIf);
  writeNotNull('width', instance.width);
  writeNotNull('minWidth', instance.minWidth);
  writeNotNull('maxWidth', instance.maxWidth);
  writeNotNull('startWithNewLine', instance.startWithNewLine);
  writeNotNull('indent', instance.indent);
  writeNotNull('page', instance.page);
  writeNotNull('descriptionLocation', instance.descriptionLocation);
  writeNotNull('hideNumber', instance.hideNumber);
  writeNotNull('defaultValue', instance.defaultValue);
  writeNotNull('defaultValueExpression', instance.defaultValueExpression);
  writeNotNull('readOnly', instance.readOnly);
  writeNotNull('validators', instance.validators);
  writeNotNull('bindings', instance.bindings);
  writeNotNull('renderAs', instance.renderAs);
  writeNotNull('title', instance.title);
  writeNotNull('description', instance.description);
  writeNotNull('valueName', instance.valueName);
  writeNotNull('enableIf', instance.enableIf);
  writeNotNull('correctAnswer', instance.correctAnswer);
  writeNotNull('isRequired', instance.isRequired);
  writeNotNull('requiredErrorText', instance.requiredErrorText);
  writeNotNull('requiredIf', instance.requiredIf);
  writeNotNull('titleLocation', instance.titleLocation);
  writeNotNull('type', instance.type);
  writeNotNull('html', instance.html);
  return val;
}

Image _$ImageFromJson(Map<String, dynamic> json) => Image()
  ..state = json['state'] as String?
  ..name = json['name'] as String?
  ..visible = json['visible'] as bool?
  ..useDisplayValuesInTitle = json['useDisplayValuesInTitle'] as bool?
  ..visibleIf = json['visibleIf'] as String?
  ..width = json['width'] as String?
  ..minWidth = json['minWidth'] as String?
  ..maxWidth = json['maxWidth'] as String?
  ..startWithNewLine = json['startWithNewLine'] as bool?
  ..indent = json['indent'] as int?
  ..page = json['page'] as String?
  ..descriptionLocation = json['descriptionLocation'] as String?
  ..hideNumber = json['hideNumber'] as bool?
  ..defaultValue = json['defaultValue']
  ..defaultValueExpression = json['defaultValueExpression'] as String?
  ..readOnly = json['readOnly'] as bool?
  ..validators = (json['validators'] as List<dynamic>?)
      ?.map((e) => SurveyValidator.fromJson(e as Map<String, dynamic>))
      .toList()
  ..bindings = json['bindings'] as String?
  ..renderAs = json['renderAs'] as String?
  ..title = json['title'] as String?
  ..description = json['description'] as String?
  ..valueName = json['valueName'] as String?
  ..enableIf = json['enableIf'] as String?
  ..correctAnswer = json['correctAnswer'] as String?
  ..isRequired = json['isRequired'] as bool?
  ..requiredErrorText = json['requiredErrorText'] as String?
  ..requiredIf = json['requiredIf'] as String?
  ..titleLocation = json['titleLocation'] as String?
  ..type = json['type'] as String?
  ..imageLink = json['imageLink'] as String?
  ..text = json['text'] as String?
  ..contentMode = json['contentMode'] as String?
  ..imageFit = json['imageFit'] as String?
  ..imageHeight = json['imageHeight'] as int?
  ..imageWidth = json['imageWidth'] as int?;

Map<String, dynamic> _$ImageToJson(Image instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('state', instance.state);
  writeNotNull('name', instance.name);
  writeNotNull('visible', instance.visible);
  writeNotNull('useDisplayValuesInTitle', instance.useDisplayValuesInTitle);
  writeNotNull('visibleIf', instance.visibleIf);
  writeNotNull('width', instance.width);
  writeNotNull('minWidth', instance.minWidth);
  writeNotNull('maxWidth', instance.maxWidth);
  writeNotNull('startWithNewLine', instance.startWithNewLine);
  writeNotNull('indent', instance.indent);
  writeNotNull('page', instance.page);
  writeNotNull('descriptionLocation', instance.descriptionLocation);
  writeNotNull('hideNumber', instance.hideNumber);
  writeNotNull('defaultValue', instance.defaultValue);
  writeNotNull('defaultValueExpression', instance.defaultValueExpression);
  writeNotNull('readOnly', instance.readOnly);
  writeNotNull('validators', instance.validators);
  writeNotNull('bindings', instance.bindings);
  writeNotNull('renderAs', instance.renderAs);
  writeNotNull('title', instance.title);
  writeNotNull('description', instance.description);
  writeNotNull('valueName', instance.valueName);
  writeNotNull('enableIf', instance.enableIf);
  writeNotNull('correctAnswer', instance.correctAnswer);
  writeNotNull('isRequired', instance.isRequired);
  writeNotNull('requiredErrorText', instance.requiredErrorText);
  writeNotNull('requiredIf', instance.requiredIf);
  writeNotNull('titleLocation', instance.titleLocation);
  writeNotNull('type', instance.type);
  writeNotNull('imageLink', instance.imageLink);
  writeNotNull('text', instance.text);
  writeNotNull('contentMode', instance.contentMode);
  writeNotNull('imageFit', instance.imageFit);
  writeNotNull('imageHeight', instance.imageHeight);
  writeNotNull('imageWidth', instance.imageWidth);
  return val;
}

Empty _$EmptyFromJson(Map<String, dynamic> json) => Empty()
  ..state = json['state'] as String?
  ..name = json['name'] as String?
  ..visible = json['visible'] as bool?
  ..useDisplayValuesInTitle = json['useDisplayValuesInTitle'] as bool?
  ..visibleIf = json['visibleIf'] as String?
  ..width = json['width'] as String?
  ..minWidth = json['minWidth'] as String?
  ..maxWidth = json['maxWidth'] as String?
  ..startWithNewLine = json['startWithNewLine'] as bool?
  ..indent = json['indent'] as int?
  ..page = json['page'] as String?
  ..title = json['title'] as String?
  ..titleLocation = json['titleLocation'] as String?
  ..description = json['description'] as String?
  ..descriptionLocation = json['descriptionLocation'] as String?
  ..hideNumber = json['hideNumber'] as bool?
  ..valueName = json['valueName'] as String?
  ..enableIf = json['enableIf'] as String?
  ..defaultValue = json['defaultValue']
  ..defaultValueExpression = json['defaultValueExpression'] as String?
  ..correctAnswer = json['correctAnswer'] as String?
  ..isRequired = json['isRequired'] as bool?
  ..requiredIf = json['requiredIf'] as String?
  ..requiredErrorText = json['requiredErrorText'] as String?
  ..readOnly = json['readOnly'] as bool?
  ..validators = (json['validators'] as List<dynamic>?)
      ?.map((e) => SurveyValidator.fromJson(e as Map<String, dynamic>))
      .toList()
  ..bindings = json['bindings'] as String?
  ..renderAs = json['renderAs'] as String?
  ..type = json['type'] as String?;

Map<String, dynamic> _$EmptyToJson(Empty instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('state', instance.state);
  writeNotNull('name', instance.name);
  writeNotNull('visible', instance.visible);
  writeNotNull('useDisplayValuesInTitle', instance.useDisplayValuesInTitle);
  writeNotNull('visibleIf', instance.visibleIf);
  writeNotNull('width', instance.width);
  writeNotNull('minWidth', instance.minWidth);
  writeNotNull('maxWidth', instance.maxWidth);
  writeNotNull('startWithNewLine', instance.startWithNewLine);
  writeNotNull('indent', instance.indent);
  writeNotNull('page', instance.page);
  writeNotNull('title', instance.title);
  writeNotNull('titleLocation', instance.titleLocation);
  writeNotNull('description', instance.description);
  writeNotNull('descriptionLocation', instance.descriptionLocation);
  writeNotNull('hideNumber', instance.hideNumber);
  writeNotNull('valueName', instance.valueName);
  writeNotNull('enableIf', instance.enableIf);
  writeNotNull('defaultValue', instance.defaultValue);
  writeNotNull('defaultValueExpression', instance.defaultValueExpression);
  writeNotNull('correctAnswer', instance.correctAnswer);
  writeNotNull('isRequired', instance.isRequired);
  writeNotNull('requiredIf', instance.requiredIf);
  writeNotNull('requiredErrorText', instance.requiredErrorText);
  writeNotNull('readOnly', instance.readOnly);
  writeNotNull('validators', instance.validators);
  writeNotNull('bindings', instance.bindings);
  writeNotNull('renderAs', instance.renderAs);
  writeNotNull('type', instance.type);
  return val;
}

Comment _$CommentFromJson(Map<String, dynamic> json) => Comment()
  ..state = json['state'] as String?
  ..name = json['name'] as String?
  ..visible = json['visible'] as bool?
  ..useDisplayValuesInTitle = json['useDisplayValuesInTitle'] as bool?
  ..visibleIf = json['visibleIf'] as String?
  ..width = json['width'] as String?
  ..minWidth = json['minWidth'] as String?
  ..maxWidth = json['maxWidth'] as String?
  ..startWithNewLine = json['startWithNewLine'] as bool?
  ..indent = json['indent'] as int?
  ..page = json['page'] as String?
  ..title = json['title'] as String?
  ..titleLocation = json['titleLocation'] as String?
  ..description = json['description'] as String?
  ..descriptionLocation = json['descriptionLocation'] as String?
  ..hideNumber = json['hideNumber'] as bool?
  ..valueName = json['valueName'] as String?
  ..enableIf = json['enableIf'] as String?
  ..defaultValue = json['defaultValue']
  ..defaultValueExpression = json['defaultValueExpression'] as String?
  ..correctAnswer = json['correctAnswer'] as String?
  ..isRequired = json['isRequired'] as bool?
  ..requiredIf = json['requiredIf'] as String?
  ..requiredErrorText = json['requiredErrorText'] as String?
  ..readOnly = json['readOnly'] as bool?
  ..validators = (json['validators'] as List<dynamic>?)
      ?.map((e) => SurveyValidator.fromJson(e as Map<String, dynamic>))
      .toList()
  ..bindings = json['bindings'] as String?
  ..renderAs = json['renderAs'] as String?
  ..type = json['type'] as String?
  ..maxLength = json['maxLength'] as int?
  ..cols = json['cols'] as int?
  ..rows = json['rows'] as int?
  ..placeholder = json['placeholder'] as String?
  ..textUpdateMode = json['textUpdateMode'] as String?;

Map<String, dynamic> _$CommentToJson(Comment instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('state', instance.state);
  writeNotNull('name', instance.name);
  writeNotNull('visible', instance.visible);
  writeNotNull('useDisplayValuesInTitle', instance.useDisplayValuesInTitle);
  writeNotNull('visibleIf', instance.visibleIf);
  writeNotNull('width', instance.width);
  writeNotNull('minWidth', instance.minWidth);
  writeNotNull('maxWidth', instance.maxWidth);
  writeNotNull('startWithNewLine', instance.startWithNewLine);
  writeNotNull('indent', instance.indent);
  writeNotNull('page', instance.page);
  writeNotNull('title', instance.title);
  writeNotNull('titleLocation', instance.titleLocation);
  writeNotNull('description', instance.description);
  writeNotNull('descriptionLocation', instance.descriptionLocation);
  writeNotNull('hideNumber', instance.hideNumber);
  writeNotNull('valueName', instance.valueName);
  writeNotNull('enableIf', instance.enableIf);
  writeNotNull('defaultValue', instance.defaultValue);
  writeNotNull('defaultValueExpression', instance.defaultValueExpression);
  writeNotNull('correctAnswer', instance.correctAnswer);
  writeNotNull('isRequired', instance.isRequired);
  writeNotNull('requiredIf', instance.requiredIf);
  writeNotNull('requiredErrorText', instance.requiredErrorText);
  writeNotNull('readOnly', instance.readOnly);
  writeNotNull('validators', instance.validators);
  writeNotNull('bindings', instance.bindings);
  writeNotNull('renderAs', instance.renderAs);
  writeNotNull('type', instance.type);
  writeNotNull('maxLength', instance.maxLength);
  writeNotNull('cols', instance.cols);
  writeNotNull('rows', instance.rows);
  writeNotNull('placeholder', instance.placeholder);
  writeNotNull('textUpdateMode', instance.textUpdateMode);
  return val;
}

File _$FileFromJson(Map<String, dynamic> json) => File()
  ..state = json['state'] as String?
  ..name = json['name'] as String?
  ..visible = json['visible'] as bool?
  ..useDisplayValuesInTitle = json['useDisplayValuesInTitle'] as bool?
  ..visibleIf = json['visibleIf'] as String?
  ..width = json['width'] as String?
  ..minWidth = json['minWidth'] as String?
  ..maxWidth = json['maxWidth'] as String?
  ..startWithNewLine = json['startWithNewLine'] as bool?
  ..indent = json['indent'] as int?
  ..page = json['page'] as String?
  ..title = json['title'] as String?
  ..titleLocation = json['titleLocation'] as String?
  ..description = json['description'] as String?
  ..descriptionLocation = json['descriptionLocation'] as String?
  ..hideNumber = json['hideNumber'] as bool?
  ..valueName = json['valueName'] as String?
  ..enableIf = json['enableIf'] as String?
  ..defaultValue = json['defaultValue']
  ..defaultValueExpression = json['defaultValueExpression'] as String?
  ..isRequired = json['isRequired'] as bool?
  ..requiredIf = json['requiredIf'] as String?
  ..requiredErrorText = json['requiredErrorText'] as String?
  ..readOnly = json['readOnly'] as bool?
  ..validators = (json['validators'] as List<dynamic>?)
      ?.map((e) => SurveyValidator.fromJson(e as Map<String, dynamic>))
      .toList()
  ..bindings = json['bindings'] as String?
  ..renderAs = json['renderAs'] as String?
  ..type = json['type'] as String?
  ..hasComment = json['hasComment'] as String?
  ..commentText = json['commentText'] as String?
  ..showPreview = json['showPreview'] as bool?
  ..allowMultiple = json['allowMultiple'] as bool?
  ..allowImagesPreview = json['allowImagesPreview'] as bool?
  ..imageHeight = json['imageHeight'] as int?
  ..imageWidth = json['imageWidth'] as int?
  ..acceptedTypes = json['acceptedTypes'] as String?
  ..storeDataAsText = json['storeDataAsText'] as bool?
  ..waitForUpload = json['waitForUpload'] as bool?
  ..maxSize = json['maxSize'] as int?
  ..correctAnswer = json['correctAnswer'] as String?
  ..needConfirmRemoveFile = json['needConfirmRemoveFile'] as bool?;

Map<String, dynamic> _$FileToJson(File instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('state', instance.state);
  writeNotNull('name', instance.name);
  writeNotNull('visible', instance.visible);
  writeNotNull('useDisplayValuesInTitle', instance.useDisplayValuesInTitle);
  writeNotNull('visibleIf', instance.visibleIf);
  writeNotNull('width', instance.width);
  writeNotNull('minWidth', instance.minWidth);
  writeNotNull('maxWidth', instance.maxWidth);
  writeNotNull('startWithNewLine', instance.startWithNewLine);
  writeNotNull('indent', instance.indent);
  writeNotNull('page', instance.page);
  writeNotNull('title', instance.title);
  writeNotNull('titleLocation', instance.titleLocation);
  writeNotNull('description', instance.description);
  writeNotNull('descriptionLocation', instance.descriptionLocation);
  writeNotNull('hideNumber', instance.hideNumber);
  writeNotNull('valueName', instance.valueName);
  writeNotNull('enableIf', instance.enableIf);
  writeNotNull('defaultValue', instance.defaultValue);
  writeNotNull('defaultValueExpression', instance.defaultValueExpression);
  writeNotNull('isRequired', instance.isRequired);
  writeNotNull('requiredIf', instance.requiredIf);
  writeNotNull('requiredErrorText', instance.requiredErrorText);
  writeNotNull('readOnly', instance.readOnly);
  writeNotNull('validators', instance.validators);
  writeNotNull('bindings', instance.bindings);
  writeNotNull('renderAs', instance.renderAs);
  writeNotNull('type', instance.type);
  writeNotNull('hasComment', instance.hasComment);
  writeNotNull('commentText', instance.commentText);
  writeNotNull('showPreview', instance.showPreview);
  writeNotNull('allowMultiple', instance.allowMultiple);
  writeNotNull('allowImagesPreview', instance.allowImagesPreview);
  writeNotNull('imageHeight', instance.imageHeight);
  writeNotNull('imageWidth', instance.imageWidth);
  writeNotNull('acceptedTypes', instance.acceptedTypes);
  writeNotNull('storeDataAsText', instance.storeDataAsText);
  writeNotNull('waitForUpload', instance.waitForUpload);
  writeNotNull('maxSize', instance.maxSize);
  writeNotNull('correctAnswer', instance.correctAnswer);
  writeNotNull('needConfirmRemoveFile', instance.needConfirmRemoveFile);
  return val;
}

Rating _$RatingFromJson(Map<String, dynamic> json) => Rating()
  ..state = json['state'] as String?
  ..name = json['name'] as String?
  ..visible = json['visible'] as bool?
  ..useDisplayValuesInTitle = json['useDisplayValuesInTitle'] as bool?
  ..visibleIf = json['visibleIf'] as String?
  ..width = json['width'] as String?
  ..minWidth = json['minWidth'] as String?
  ..maxWidth = json['maxWidth'] as String?
  ..startWithNewLine = json['startWithNewLine'] as bool?
  ..indent = json['indent'] as int?
  ..page = json['page'] as String?
  ..title = json['title'] as String?
  ..titleLocation = json['titleLocation'] as String?
  ..description = json['description'] as String?
  ..descriptionLocation = json['descriptionLocation'] as String?
  ..hideNumber = json['hideNumber'] as bool?
  ..valueName = json['valueName'] as String?
  ..enableIf = json['enableIf'] as String?
  ..defaultValue = json['defaultValue']
  ..defaultValueExpression = json['defaultValueExpression'] as String?
  ..correctAnswer = json['correctAnswer'] as String?
  ..isRequired = json['isRequired'] as bool?
  ..requiredIf = json['requiredIf'] as String?
  ..requiredErrorText = json['requiredErrorText'] as String?
  ..readOnly = json['readOnly'] as bool?
  ..validators = (json['validators'] as List<dynamic>?)
      ?.map((e) => SurveyValidator.fromJson(e as Map<String, dynamic>))
      .toList()
  ..bindings = json['bindings'] as String?
  ..renderAs = json['renderAs'] as String?
  ..type = json['type'] as String?
  ..hasComment = json['hasComment'] as String?
  ..commentText = json['commentText'] as String?
  ..rateValues = (json['rateValues'] as List<dynamic>?)
      ?.map((e) => ItemValue.fromJson(e as Map<String, dynamic>))
      .toList()
  ..rateMin = json['rateMin'] as int?
  ..rateMax = json['rateMax'] as int?
  ..rateStep = json['rateStep'] as int?
  ..minRateDescription = json['minRateDescription'] as String?
  ..maxRateDescription = json['maxRateDescription'] as String?;

Map<String, dynamic> _$RatingToJson(Rating instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('state', instance.state);
  writeNotNull('name', instance.name);
  writeNotNull('visible', instance.visible);
  writeNotNull('useDisplayValuesInTitle', instance.useDisplayValuesInTitle);
  writeNotNull('visibleIf', instance.visibleIf);
  writeNotNull('width', instance.width);
  writeNotNull('minWidth', instance.minWidth);
  writeNotNull('maxWidth', instance.maxWidth);
  writeNotNull('startWithNewLine', instance.startWithNewLine);
  writeNotNull('indent', instance.indent);
  writeNotNull('page', instance.page);
  writeNotNull('title', instance.title);
  writeNotNull('titleLocation', instance.titleLocation);
  writeNotNull('description', instance.description);
  writeNotNull('descriptionLocation', instance.descriptionLocation);
  writeNotNull('hideNumber', instance.hideNumber);
  writeNotNull('valueName', instance.valueName);
  writeNotNull('enableIf', instance.enableIf);
  writeNotNull('defaultValue', instance.defaultValue);
  writeNotNull('defaultValueExpression', instance.defaultValueExpression);
  writeNotNull('correctAnswer', instance.correctAnswer);
  writeNotNull('isRequired', instance.isRequired);
  writeNotNull('requiredIf', instance.requiredIf);
  writeNotNull('requiredErrorText', instance.requiredErrorText);
  writeNotNull('readOnly', instance.readOnly);
  writeNotNull('validators', instance.validators);
  writeNotNull('bindings', instance.bindings);
  writeNotNull('renderAs', instance.renderAs);
  writeNotNull('type', instance.type);
  writeNotNull('hasComment', instance.hasComment);
  writeNotNull('commentText', instance.commentText);
  writeNotNull('rateValues', instance.rateValues);
  writeNotNull('rateMin', instance.rateMin);
  writeNotNull('rateMax', instance.rateMax);
  writeNotNull('rateStep', instance.rateStep);
  writeNotNull('minRateDescription', instance.minRateDescription);
  writeNotNull('maxRateDescription', instance.maxRateDescription);
  return val;
}

Boolean _$BooleanFromJson(Map<String, dynamic> json) => Boolean()
  ..state = json['state'] as String?
  ..name = json['name'] as String?
  ..visible = json['visible'] as bool?
  ..useDisplayValuesInTitle = json['useDisplayValuesInTitle'] as bool?
  ..visibleIf = json['visibleIf'] as String?
  ..width = json['width'] as String?
  ..minWidth = json['minWidth'] as String?
  ..maxWidth = json['maxWidth'] as String?
  ..startWithNewLine = json['startWithNewLine'] as bool?
  ..indent = json['indent'] as int?
  ..page = json['page'] as String?
  ..title = json['title'] as String?
  ..titleLocation = json['titleLocation'] as String?
  ..description = json['description'] as String?
  ..descriptionLocation = json['descriptionLocation'] as String?
  ..hideNumber = json['hideNumber'] as bool?
  ..valueName = json['valueName'] as String?
  ..enableIf = json['enableIf'] as String?
  ..defaultValue = json['defaultValue']
  ..defaultValueExpression = json['defaultValueExpression'] as String?
  ..correctAnswer = json['correctAnswer'] as String?
  ..isRequired = json['isRequired'] as bool?
  ..requiredIf = json['requiredIf'] as String?
  ..requiredErrorText = json['requiredErrorText'] as String?
  ..readOnly = json['readOnly'] as bool?
  ..validators = (json['validators'] as List<dynamic>?)
      ?.map((e) => SurveyValidator.fromJson(e as Map<String, dynamic>))
      .toList()
  ..bindings = json['bindings'] as String?
  ..type = json['type'] as String?
  ..label = json['label'] as String?
  ..labelTrue = json['labelTrue'] as String?
  ..labelFalse = json['labelFalse'] as String?
  ..showTitle = json['showTitle'] as bool?
  ..valueTrue = json['valueTrue'] as String?
  ..valueFalse = json['valueFalse'] as String?
  ..renderAs = json['renderAs'] as String?;

Map<String, dynamic> _$BooleanToJson(Boolean instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('state', instance.state);
  writeNotNull('name', instance.name);
  writeNotNull('visible', instance.visible);
  writeNotNull('useDisplayValuesInTitle', instance.useDisplayValuesInTitle);
  writeNotNull('visibleIf', instance.visibleIf);
  writeNotNull('width', instance.width);
  writeNotNull('minWidth', instance.minWidth);
  writeNotNull('maxWidth', instance.maxWidth);
  writeNotNull('startWithNewLine', instance.startWithNewLine);
  writeNotNull('indent', instance.indent);
  writeNotNull('page', instance.page);
  writeNotNull('title', instance.title);
  writeNotNull('titleLocation', instance.titleLocation);
  writeNotNull('description', instance.description);
  writeNotNull('descriptionLocation', instance.descriptionLocation);
  writeNotNull('hideNumber', instance.hideNumber);
  writeNotNull('valueName', instance.valueName);
  writeNotNull('enableIf', instance.enableIf);
  writeNotNull('defaultValue', instance.defaultValue);
  writeNotNull('defaultValueExpression', instance.defaultValueExpression);
  writeNotNull('correctAnswer', instance.correctAnswer);
  writeNotNull('isRequired', instance.isRequired);
  writeNotNull('requiredIf', instance.requiredIf);
  writeNotNull('requiredErrorText', instance.requiredErrorText);
  writeNotNull('readOnly', instance.readOnly);
  writeNotNull('validators', instance.validators);
  writeNotNull('bindings', instance.bindings);
  writeNotNull('type', instance.type);
  writeNotNull('label', instance.label);
  writeNotNull('labelTrue', instance.labelTrue);
  writeNotNull('labelFalse', instance.labelFalse);
  writeNotNull('showTitle', instance.showTitle);
  writeNotNull('valueTrue', instance.valueTrue);
  writeNotNull('valueFalse', instance.valueFalse);
  writeNotNull('renderAs', instance.renderAs);
  return val;
}

SignaturePad _$SignaturePadFromJson(Map<String, dynamic> json) => SignaturePad()
  ..state = json['state'] as String?
  ..name = json['name'] as String?
  ..visible = json['visible'] as bool?
  ..useDisplayValuesInTitle = json['useDisplayValuesInTitle'] as bool?
  ..visibleIf = json['visibleIf'] as String?
  ..width = json['width'] as String?
  ..minWidth = json['minWidth'] as String?
  ..maxWidth = json['maxWidth'] as String?
  ..startWithNewLine = json['startWithNewLine'] as bool?
  ..indent = json['indent'] as int?
  ..page = json['page'] as String?
  ..title = json['title'] as String?
  ..titleLocation = json['titleLocation'] as String?
  ..description = json['description'] as String?
  ..descriptionLocation = json['descriptionLocation'] as String?
  ..hideNumber = json['hideNumber'] as bool?
  ..valueName = json['valueName'] as String?
  ..enableIf = json['enableIf'] as String?
  ..defaultValue = json['defaultValue']
  ..defaultValueExpression = json['defaultValueExpression'] as String?
  ..isRequired = json['isRequired'] as bool?
  ..requiredIf = json['requiredIf'] as String?
  ..requiredErrorText = json['requiredErrorText'] as String?
  ..readOnly = json['readOnly'] as bool?
  ..validators = (json['validators'] as List<dynamic>?)
      ?.map((e) => SurveyValidator.fromJson(e as Map<String, dynamic>))
      .toList()
  ..bindings = json['bindings'] as String?
  ..renderAs = json['renderAs'] as String?
  ..type = json['type'] as String?
  ..height = json['height'] as int?
  ..allowClear = json['allowClear'] as bool?
  ..penColor = json['penColor'] as String?
  ..backgroundColor = json['backgroundColor'] as String?
  ..dataFormat = json['dataFormat'] as String?
  ..correctAnswer = json['correctAnswer'] as String?;

Map<String, dynamic> _$SignaturePadToJson(SignaturePad instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('state', instance.state);
  writeNotNull('name', instance.name);
  writeNotNull('visible', instance.visible);
  writeNotNull('useDisplayValuesInTitle', instance.useDisplayValuesInTitle);
  writeNotNull('visibleIf', instance.visibleIf);
  writeNotNull('width', instance.width);
  writeNotNull('minWidth', instance.minWidth);
  writeNotNull('maxWidth', instance.maxWidth);
  writeNotNull('startWithNewLine', instance.startWithNewLine);
  writeNotNull('indent', instance.indent);
  writeNotNull('page', instance.page);
  writeNotNull('title', instance.title);
  writeNotNull('titleLocation', instance.titleLocation);
  writeNotNull('description', instance.description);
  writeNotNull('descriptionLocation', instance.descriptionLocation);
  writeNotNull('hideNumber', instance.hideNumber);
  writeNotNull('valueName', instance.valueName);
  writeNotNull('enableIf', instance.enableIf);
  writeNotNull('defaultValue', instance.defaultValue);
  writeNotNull('defaultValueExpression', instance.defaultValueExpression);
  writeNotNull('isRequired', instance.isRequired);
  writeNotNull('requiredIf', instance.requiredIf);
  writeNotNull('requiredErrorText', instance.requiredErrorText);
  writeNotNull('readOnly', instance.readOnly);
  writeNotNull('validators', instance.validators);
  writeNotNull('bindings', instance.bindings);
  writeNotNull('renderAs', instance.renderAs);
  writeNotNull('type', instance.type);
  writeNotNull('height', instance.height);
  writeNotNull('allowClear', instance.allowClear);
  writeNotNull('penColor', instance.penColor);
  writeNotNull('backgroundColor', instance.backgroundColor);
  writeNotNull('dataFormat', instance.dataFormat);
  writeNotNull('correctAnswer', instance.correctAnswer);
  return val;
}

CalculatedValue _$CalculatedValueFromJson(Map<String, dynamic> json) =>
    CalculatedValue()
      ..name = json['name'] as String?
      ..expression = json['expression'] as String?
      ..includeIntoResult = json['includeIntoResult'] as bool?;

Map<String, dynamic> _$CalculatedValueToJson(CalculatedValue instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('name', instance.name);
  writeNotNull('expression', instance.expression);
  writeNotNull('includeIntoResult', instance.includeIntoResult);
  return val;
}

ButtonGroup _$ButtonGroupFromJson(Map<String, dynamic> json) => ButtonGroup()
  ..state = json['state'] as String?
  ..name = json['name'] as String?
  ..visible = json['visible'] as bool?
  ..useDisplayValuesInTitle = json['useDisplayValuesInTitle'] as bool?
  ..visibleIf = json['visibleIf'] as String?
  ..width = json['width'] as String?
  ..minWidth = json['minWidth'] as String?
  ..maxWidth = json['maxWidth'] as String?
  ..startWithNewLine = json['startWithNewLine'] as bool?
  ..indent = json['indent'] as int?
  ..page = json['page'] as String?
  ..title = json['title'] as String?
  ..titleLocation = json['titleLocation'] as String?
  ..description = json['description'] as String?
  ..descriptionLocation = json['descriptionLocation'] as String?
  ..hideNumber = json['hideNumber'] as bool?
  ..valueName = json['valueName'] as String?
  ..enableIf = json['enableIf'] as String?
  ..defaultValue = json['defaultValue']
  ..defaultValueExpression = json['defaultValueExpression'] as String?
  ..correctAnswer = json['correctAnswer'] as String?
  ..isRequired = json['isRequired'] as bool?
  ..requiredIf = json['requiredIf'] as String?
  ..requiredErrorText = json['requiredErrorText'] as String?
  ..readOnly = json['readOnly'] as bool?
  ..validators = (json['validators'] as List<dynamic>?)
      ?.map((e) => SurveyValidator.fromJson(e as Map<String, dynamic>))
      .toList()
  ..bindings = json['bindings'] as String?
  ..renderAs = json['renderAs'] as String?
  ..hasComment = json['hasComment'] as String?
  ..commentText = json['commentText'] as String?
  ..choicesFromQuestion = json['choicesFromQuestion'] as String?
  ..choicesFromQuestionMode = json['choicesFromQuestionMode'] as String?
  ..choicesOrder = json['choicesOrder'] as String?
  ..choicesByUrl = json['choicesByUrl'] == null
      ? null
      : ChoicesRestful.fromJson(json['choicesByUrl'] as Map<String, dynamic>)
  ..hideIfChoicesEmpty = json['hideIfChoicesEmpty'] as bool?
  ..choicesVisibleIf = json['choicesVisibleIf'] as String?
  ..choicesEnableIf = json['choicesEnableIf'] as String?
  ..hasOther = json['hasOther'] as bool?
  ..hasNone = json['hasNone'] as bool?
  ..otherPlaceHolder = json['otherPlaceHolder'] as String?
  ..noneText = json['noneText'] as String?
  ..otherText = json['otherText'] as String?
  ..otherErrorText = json['otherErrorText'] as String?
  ..storeOthersAsComment = json['storeOthersAsComment'] as String?
  ..colCount = json['colCount'] as int?
  ..type = json['type'] as String?
  ..choices = ButtonGroupItemValue.fromListJson(json['choices'] as List?);

Map<String, dynamic> _$ButtonGroupToJson(ButtonGroup instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('state', instance.state);
  writeNotNull('name', instance.name);
  writeNotNull('visible', instance.visible);
  writeNotNull('useDisplayValuesInTitle', instance.useDisplayValuesInTitle);
  writeNotNull('visibleIf', instance.visibleIf);
  writeNotNull('width', instance.width);
  writeNotNull('minWidth', instance.minWidth);
  writeNotNull('maxWidth', instance.maxWidth);
  writeNotNull('startWithNewLine', instance.startWithNewLine);
  writeNotNull('indent', instance.indent);
  writeNotNull('page', instance.page);
  writeNotNull('title', instance.title);
  writeNotNull('titleLocation', instance.titleLocation);
  writeNotNull('description', instance.description);
  writeNotNull('descriptionLocation', instance.descriptionLocation);
  writeNotNull('hideNumber', instance.hideNumber);
  writeNotNull('valueName', instance.valueName);
  writeNotNull('enableIf', instance.enableIf);
  writeNotNull('defaultValue', instance.defaultValue);
  writeNotNull('defaultValueExpression', instance.defaultValueExpression);
  writeNotNull('correctAnswer', instance.correctAnswer);
  writeNotNull('isRequired', instance.isRequired);
  writeNotNull('requiredIf', instance.requiredIf);
  writeNotNull('requiredErrorText', instance.requiredErrorText);
  writeNotNull('readOnly', instance.readOnly);
  writeNotNull('validators', instance.validators);
  writeNotNull('bindings', instance.bindings);
  writeNotNull('renderAs', instance.renderAs);
  writeNotNull('hasComment', instance.hasComment);
  writeNotNull('commentText', instance.commentText);
  writeNotNull('choicesFromQuestion', instance.choicesFromQuestion);
  writeNotNull('choicesFromQuestionMode', instance.choicesFromQuestionMode);
  writeNotNull('choicesOrder', instance.choicesOrder);
  writeNotNull('choicesByUrl', instance.choicesByUrl);
  writeNotNull('hideIfChoicesEmpty', instance.hideIfChoicesEmpty);
  writeNotNull('choicesVisibleIf', instance.choicesVisibleIf);
  writeNotNull('choicesEnableIf', instance.choicesEnableIf);
  writeNotNull('hasOther', instance.hasOther);
  writeNotNull('hasNone', instance.hasNone);
  writeNotNull('otherPlaceHolder', instance.otherPlaceHolder);
  writeNotNull('noneText', instance.noneText);
  writeNotNull('otherText', instance.otherText);
  writeNotNull('otherErrorText', instance.otherErrorText);
  writeNotNull('storeOthersAsComment', instance.storeOthersAsComment);
  writeNotNull('colCount', instance.colCount);
  writeNotNull('type', instance.type);
  writeNotNull('choices', instance.choices);
  return val;
}

ItemValue _$ItemValueFromJson(Map<String, dynamic> json) => ItemValue()
  ..value = json['value']
  ..text = json['text'] as String?
  ..visibleIf = json['visibleIf'] as String?
  ..enableIf = json['enableIf'] as String?;

Map<String, dynamic> _$ItemValueToJson(ItemValue instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('value', instance.value);
  writeNotNull('text', instance.text);
  writeNotNull('visibleIf', instance.visibleIf);
  writeNotNull('enableIf', instance.enableIf);
  return val;
}

ImageItemValue _$ImageItemValueFromJson(Map<String, dynamic> json) =>
    ImageItemValue()
      ..value = json['value']
      ..text = json['text'] as String?
      ..visibleIf = json['visibleIf'] as String?
      ..enableIf = json['enableIf'] as String?
      ..imageLink = json['imageLink'] as String?;

Map<String, dynamic> _$ImageItemValueToJson(ImageItemValue instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('value', instance.value);
  writeNotNull('text', instance.text);
  writeNotNull('visibleIf', instance.visibleIf);
  writeNotNull('enableIf', instance.enableIf);
  writeNotNull('imageLink', instance.imageLink);
  return val;
}

ButtonGroupItemValue _$ButtonGroupItemValueFromJson(
        Map<String, dynamic> json) =>
    ButtonGroupItemValue()
      ..value = json['value']
      ..text = json['text'] as String?
      ..visibleIf = json['visibleIf'] as String?
      ..enableIf = json['enableIf'] as String?
      ..showCaption = json['showCaption'] as bool?
      ..iconName = json['iconName'] as String?
      ..iconSize = json['iconSize'] as int?;

Map<String, dynamic> _$ButtonGroupItemValueToJson(
    ButtonGroupItemValue instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('value', instance.value);
  writeNotNull('text', instance.text);
  writeNotNull('visibleIf', instance.visibleIf);
  writeNotNull('enableIf', instance.enableIf);
  writeNotNull('showCaption', instance.showCaption);
  writeNotNull('iconName', instance.iconName);
  writeNotNull('iconSize', instance.iconSize);
  return val;
}

Expression _$ExpressionFromJson(Map<String, dynamic> json) => Expression()
  ..state = json['state'] as String?
  ..name = json['name'] as String?
  ..visible = json['visible'] as bool?
  ..useDisplayValuesInTitle = json['useDisplayValuesInTitle'] as bool?
  ..visibleIf = json['visibleIf'] as String?
  ..width = json['width'] as String?
  ..minWidth = json['minWidth'] as String?
  ..maxWidth = json['maxWidth'] as String?
  ..startWithNewLine = json['startWithNewLine'] as bool?
  ..indent = json['indent'] as int?
  ..page = json['page'] as String?
  ..title = json['title'] as String?
  ..titleLocation = json['titleLocation'] as String?
  ..description = json['description'] as String?
  ..descriptionLocation = json['descriptionLocation'] as String?
  ..hideNumber = json['hideNumber'] as bool?
  ..valueName = json['valueName'] as String?
  ..defaultValue = json['defaultValue']
  ..defaultValueExpression = json['defaultValueExpression'] as String?
  ..readOnly = json['readOnly'] as bool?
  ..validators = (json['validators'] as List<dynamic>?)
      ?.map((e) => SurveyValidator.fromJson(e as Map<String, dynamic>))
      .toList()
  ..bindings = json['bindings'] as String?
  ..renderAs = json['renderAs'] as String?
  ..type = json['type'] as String?
  ..expression = json['expression'] as String?
  ..format = json['format'] as String?
  ..displayStyle = json['displayStyle'] as String?
  ..currency = json['currency'] as String?
  ..maximumFractionDigits = json['maximumFractionDigits'] as int?
  ..minimumFractionDigits = json['minimumFractionDigits'] as int?
  ..useGrouping = json['useGrouping'] as bool?
  ..enableIf = json['enableIf'] as String?
  ..isRequired = json['isRequired'] as bool?
  ..requiredErrorText = json['requiredErrorText'] as String?
  ..correctAnswer = json['correctAnswer'] as String?
  ..requiredIf = json['requiredIf'] as String?;

Map<String, dynamic> _$ExpressionToJson(Expression instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('state', instance.state);
  writeNotNull('name', instance.name);
  writeNotNull('visible', instance.visible);
  writeNotNull('useDisplayValuesInTitle', instance.useDisplayValuesInTitle);
  writeNotNull('visibleIf', instance.visibleIf);
  writeNotNull('width', instance.width);
  writeNotNull('minWidth', instance.minWidth);
  writeNotNull('maxWidth', instance.maxWidth);
  writeNotNull('startWithNewLine', instance.startWithNewLine);
  writeNotNull('indent', instance.indent);
  writeNotNull('page', instance.page);
  writeNotNull('title', instance.title);
  writeNotNull('titleLocation', instance.titleLocation);
  writeNotNull('description', instance.description);
  writeNotNull('descriptionLocation', instance.descriptionLocation);
  writeNotNull('hideNumber', instance.hideNumber);
  writeNotNull('valueName', instance.valueName);
  writeNotNull('defaultValue', instance.defaultValue);
  writeNotNull('defaultValueExpression', instance.defaultValueExpression);
  writeNotNull('readOnly', instance.readOnly);
  writeNotNull('validators', instance.validators);
  writeNotNull('bindings', instance.bindings);
  writeNotNull('renderAs', instance.renderAs);
  writeNotNull('type', instance.type);
  writeNotNull('expression', instance.expression);
  writeNotNull('format', instance.format);
  writeNotNull('displayStyle', instance.displayStyle);
  writeNotNull('currency', instance.currency);
  writeNotNull('maximumFractionDigits', instance.maximumFractionDigits);
  writeNotNull('minimumFractionDigits', instance.minimumFractionDigits);
  writeNotNull('useGrouping', instance.useGrouping);
  writeNotNull('enableIf', instance.enableIf);
  writeNotNull('isRequired', instance.isRequired);
  writeNotNull('requiredErrorText', instance.requiredErrorText);
  writeNotNull('correctAnswer', instance.correctAnswer);
  writeNotNull('requiredIf', instance.requiredIf);
  return val;
}

ExpressionItem _$ExpressionItemFromJson(Map<String, dynamic> json) =>
    ExpressionItem()..expression = json['expression'] as String?;

Map<String, dynamic> _$ExpressionItemToJson(ExpressionItem instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('expression', instance.expression);
  return val;
}

UrlConditionItem _$UrlConditionItemFromJson(Map<String, dynamic> json) =>
    UrlConditionItem()
      ..expression = json['expression'] as String?
      ..url = json['url'] as String?;

Map<String, dynamic> _$UrlConditionItemToJson(UrlConditionItem instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('expression', instance.expression);
  writeNotNull('url', instance.url);
  return val;
}

HtmlConditionItem _$HtmlConditionItemFromJson(Map<String, dynamic> json) =>
    HtmlConditionItem()
      ..expression = json['expression'] as String?
      ..html = json['html'] as String?;

Map<String, dynamic> _$HtmlConditionItemToJson(HtmlConditionItem instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('expression', instance.expression);
  writeNotNull('html', instance.html);
  return val;
}

MatrixDropdown _$MatrixDropdownFromJson(Map<String, dynamic> json) =>
    MatrixDropdown()
      ..state = json['state'] as String?
      ..name = json['name'] as String?
      ..visible = json['visible'] as bool?
      ..useDisplayValuesInTitle = json['useDisplayValuesInTitle'] as bool?
      ..visibleIf = json['visibleIf'] as String?
      ..width = json['width'] as String?
      ..minWidth = json['minWidth'] as String?
      ..maxWidth = json['maxWidth'] as String?
      ..startWithNewLine = json['startWithNewLine'] as bool?
      ..indent = json['indent'] as int?
      ..page = json['page'] as String?
      ..title = json['title'] as String?
      ..titleLocation = json['titleLocation'] as String?
      ..description = json['description'] as String?
      ..descriptionLocation = json['descriptionLocation'] as String?
      ..hideNumber = json['hideNumber'] as bool?
      ..valueName = json['valueName'] as String?
      ..enableIf = json['enableIf'] as String?
      ..defaultValue = json['defaultValue']
      ..defaultValueExpression = json['defaultValueExpression'] as String?
      ..correctAnswer = json['correctAnswer'] as String?
      ..isRequired = json['isRequired'] as bool?
      ..requiredIf = json['requiredIf'] as String?
      ..requiredErrorText = json['requiredErrorText'] as String?
      ..readOnly = json['readOnly'] as bool?
      ..validators = (json['validators'] as List<dynamic>?)
          ?.map((e) => SurveyValidator.fromJson(e as Map<String, dynamic>))
          .toList()
      ..bindings = json['bindings'] as String?
      ..renderAs = json['renderAs'] as String?
      ..columnsVisibleIf = json['columnsVisibleIf'] as String?
      ..showHeader = json['showHeader'] as bool?
      ..allowRowsDragAndDrop = json['allowRowsDragAndDrop'] as String?
      ..columns = (json['columns'] as List<dynamic>?)
          ?.map((e) => MatrixDropdownColumn.fromJson(e as Map<String, dynamic>))
          .toList()
      ..columnLayout = json['columnLayout'] as String?
      ..detailElements = json['detailElements'] as String?
      ..detailPanelMode = json['detailPanelMode'] as String?
      ..horizontalScroll = json['horizontalScroll'] as bool?
      ..optionsCaption = json['optionsCaption'] as String?
      ..choices = ItemValue.fromListJson(json['choices'] as List?)
      ..keyDuplicationError = json['keyDuplicationError'] as String?
      ..cellType = json['cellType'] as String?
      ..columnColCount = json['columnColCount'] as int?
      ..columnMinWidth = json['columnMinWidth'] as String?
      ..type = json['type'] as String?
      ..rows = ItemValue.fromListJson(json['rows'] as List?)
      ..rowsVisibleIf = json['rowsVisibleIf'] as String?
      ..rowTitleWidth = json['rowTitleWidth'] as String?
      ..totalText = json['totalText'] as String?;

Map<String, dynamic> _$MatrixDropdownToJson(MatrixDropdown instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('state', instance.state);
  writeNotNull('name', instance.name);
  writeNotNull('visible', instance.visible);
  writeNotNull('useDisplayValuesInTitle', instance.useDisplayValuesInTitle);
  writeNotNull('visibleIf', instance.visibleIf);
  writeNotNull('width', instance.width);
  writeNotNull('minWidth', instance.minWidth);
  writeNotNull('maxWidth', instance.maxWidth);
  writeNotNull('startWithNewLine', instance.startWithNewLine);
  writeNotNull('indent', instance.indent);
  writeNotNull('page', instance.page);
  writeNotNull('title', instance.title);
  writeNotNull('titleLocation', instance.titleLocation);
  writeNotNull('description', instance.description);
  writeNotNull('descriptionLocation', instance.descriptionLocation);
  writeNotNull('hideNumber', instance.hideNumber);
  writeNotNull('valueName', instance.valueName);
  writeNotNull('enableIf', instance.enableIf);
  writeNotNull('defaultValue', instance.defaultValue);
  writeNotNull('defaultValueExpression', instance.defaultValueExpression);
  writeNotNull('correctAnswer', instance.correctAnswer);
  writeNotNull('isRequired', instance.isRequired);
  writeNotNull('requiredIf', instance.requiredIf);
  writeNotNull('requiredErrorText', instance.requiredErrorText);
  writeNotNull('readOnly', instance.readOnly);
  writeNotNull('validators', instance.validators);
  writeNotNull('bindings', instance.bindings);
  writeNotNull('renderAs', instance.renderAs);
  writeNotNull('columnsVisibleIf', instance.columnsVisibleIf);
  writeNotNull('showHeader', instance.showHeader);
  writeNotNull('allowRowsDragAndDrop', instance.allowRowsDragAndDrop);
  writeNotNull('columns', instance.columns);
  writeNotNull('columnLayout', instance.columnLayout);
  writeNotNull('detailElements', instance.detailElements);
  writeNotNull('detailPanelMode', instance.detailPanelMode);
  writeNotNull('horizontalScroll', instance.horizontalScroll);
  writeNotNull('optionsCaption', instance.optionsCaption);
  writeNotNull('choices', instance.choices);
  writeNotNull('keyDuplicationError', instance.keyDuplicationError);
  writeNotNull('cellType', instance.cellType);
  writeNotNull('columnColCount', instance.columnColCount);
  writeNotNull('columnMinWidth', instance.columnMinWidth);
  writeNotNull('type', instance.type);
  writeNotNull('rows', instance.rows);
  writeNotNull('rowsVisibleIf', instance.rowsVisibleIf);
  writeNotNull('rowTitleWidth', instance.rowTitleWidth);
  writeNotNull('totalText', instance.totalText);
  return val;
}

MatrixDynamic _$MatrixDynamicFromJson(Map<String, dynamic> json) =>
    MatrixDynamic()
      ..state = json['state'] as String?
      ..name = json['name'] as String?
      ..visible = json['visible'] as bool?
      ..useDisplayValuesInTitle = json['useDisplayValuesInTitle'] as bool?
      ..visibleIf = json['visibleIf'] as String?
      ..width = json['width'] as String?
      ..minWidth = json['minWidth'] as String?
      ..maxWidth = json['maxWidth'] as String?
      ..startWithNewLine = json['startWithNewLine'] as bool?
      ..indent = json['indent'] as int?
      ..page = json['page'] as String?
      ..title = json['title'] as String?
      ..titleLocation = json['titleLocation'] as String?
      ..description = json['description'] as String?
      ..descriptionLocation = json['descriptionLocation'] as String?
      ..hideNumber = json['hideNumber'] as bool?
      ..valueName = json['valueName'] as String?
      ..enableIf = json['enableIf'] as String?
      ..defaultValue = json['defaultValue']
      ..defaultValueExpression = json['defaultValueExpression'] as String?
      ..correctAnswer = json['correctAnswer'] as String?
      ..isRequired = json['isRequired'] as bool?
      ..requiredIf = json['requiredIf'] as String?
      ..requiredErrorText = json['requiredErrorText'] as String?
      ..readOnly = json['readOnly'] as bool?
      ..validators = (json['validators'] as List<dynamic>?)
          ?.map((e) => SurveyValidator.fromJson(e as Map<String, dynamic>))
          .toList()
      ..bindings = json['bindings'] as String?
      ..renderAs = json['renderAs'] as String?
      ..columnsVisibleIf = json['columnsVisibleIf'] as String?
      ..showHeader = json['showHeader'] as bool?
      ..allowRowsDragAndDrop = json['allowRowsDragAndDrop'] as String?
      ..columns = (json['columns'] as List<dynamic>?)
          ?.map((e) => MatrixDropdownColumn.fromJson(e as Map<String, dynamic>))
          .toList()
      ..columnLayout = json['columnLayout'] as String?
      ..detailElements = json['detailElements'] as String?
      ..detailPanelMode = json['detailPanelMode'] as String?
      ..horizontalScroll = json['horizontalScroll'] as bool?
      ..optionsCaption = json['optionsCaption'] as String?
      ..choices = ItemValue.fromListJson(json['choices'] as List?)
      ..keyDuplicationError = json['keyDuplicationError'] as String?
      ..cellType = json['cellType'] as String?
      ..columnColCount = json['columnColCount'] as int?
      ..columnMinWidth = json['columnMinWidth'] as String?
      ..type = json['type'] as String?
      ..rowsVisibleIf = json['rowsVisibleIf'] as String?
      ..allowAddRows = json['allowAddRows'] as bool?
      ..allowRemoveRows = json['allowRemoveRows'] as bool?
      ..rowCount = json['rowCount'] as int?
      ..minRowCount = json['minRowCount'] as int?
      ..maxRowCount = json['maxRowCount'] as int?
      ..keyName = json['keyName'] as String?
      ..defaultRowValue = json['defaultRowValue']
      ..defaultValueFromLastRow = json['defaultValueFromLastRow'] as bool?
      ..confirmDelete = json['confirmDelete'] as bool?
      ..confirmDeleteText = json['confirmDeleteText'] as String?
      ..addRowLocation = json['addRowLocation'] as String?
      ..addRowText = json['addRowText'] as String?
      ..removeRowText = json['removeRowText'] as String?
      ..hideColumnsIfEmpty = json['hideColumnsIfEmpty'] as bool?
      ..emptyRowsText = json['emptyRowsText'] as String?;

Map<String, dynamic> _$MatrixDynamicToJson(MatrixDynamic instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('state', instance.state);
  writeNotNull('name', instance.name);
  writeNotNull('visible', instance.visible);
  writeNotNull('useDisplayValuesInTitle', instance.useDisplayValuesInTitle);
  writeNotNull('visibleIf', instance.visibleIf);
  writeNotNull('width', instance.width);
  writeNotNull('minWidth', instance.minWidth);
  writeNotNull('maxWidth', instance.maxWidth);
  writeNotNull('startWithNewLine', instance.startWithNewLine);
  writeNotNull('indent', instance.indent);
  writeNotNull('page', instance.page);
  writeNotNull('title', instance.title);
  writeNotNull('titleLocation', instance.titleLocation);
  writeNotNull('description', instance.description);
  writeNotNull('descriptionLocation', instance.descriptionLocation);
  writeNotNull('hideNumber', instance.hideNumber);
  writeNotNull('valueName', instance.valueName);
  writeNotNull('enableIf', instance.enableIf);
  writeNotNull('defaultValue', instance.defaultValue);
  writeNotNull('defaultValueExpression', instance.defaultValueExpression);
  writeNotNull('correctAnswer', instance.correctAnswer);
  writeNotNull('isRequired', instance.isRequired);
  writeNotNull('requiredIf', instance.requiredIf);
  writeNotNull('requiredErrorText', instance.requiredErrorText);
  writeNotNull('readOnly', instance.readOnly);
  writeNotNull('validators', instance.validators);
  writeNotNull('bindings', instance.bindings);
  writeNotNull('renderAs', instance.renderAs);
  writeNotNull('columnsVisibleIf', instance.columnsVisibleIf);
  writeNotNull('showHeader', instance.showHeader);
  writeNotNull('allowRowsDragAndDrop', instance.allowRowsDragAndDrop);
  writeNotNull('columns', instance.columns);
  writeNotNull('columnLayout', instance.columnLayout);
  writeNotNull('detailElements', instance.detailElements);
  writeNotNull('detailPanelMode', instance.detailPanelMode);
  writeNotNull('horizontalScroll', instance.horizontalScroll);
  writeNotNull('optionsCaption', instance.optionsCaption);
  writeNotNull('choices', instance.choices);
  writeNotNull('keyDuplicationError', instance.keyDuplicationError);
  writeNotNull('cellType', instance.cellType);
  writeNotNull('columnColCount', instance.columnColCount);
  writeNotNull('columnMinWidth', instance.columnMinWidth);
  writeNotNull('type', instance.type);
  writeNotNull('rowsVisibleIf', instance.rowsVisibleIf);
  writeNotNull('allowAddRows', instance.allowAddRows);
  writeNotNull('allowRemoveRows', instance.allowRemoveRows);
  writeNotNull('rowCount', instance.rowCount);
  writeNotNull('minRowCount', instance.minRowCount);
  writeNotNull('maxRowCount', instance.maxRowCount);
  writeNotNull('keyName', instance.keyName);
  writeNotNull('defaultRowValue', instance.defaultRowValue);
  writeNotNull('defaultValueFromLastRow', instance.defaultValueFromLastRow);
  writeNotNull('confirmDelete', instance.confirmDelete);
  writeNotNull('confirmDeleteText', instance.confirmDeleteText);
  writeNotNull('addRowLocation', instance.addRowLocation);
  writeNotNull('addRowText', instance.addRowText);
  writeNotNull('removeRowText', instance.removeRowText);
  writeNotNull('hideColumnsIfEmpty', instance.hideColumnsIfEmpty);
  writeNotNull('emptyRowsText', instance.emptyRowsText);
  return val;
}

Matrix _$MatrixFromJson(Map<String, dynamic> json) => Matrix()
  ..state = json['state'] as String?
  ..name = json['name'] as String?
  ..visible = json['visible'] as bool?
  ..useDisplayValuesInTitle = json['useDisplayValuesInTitle'] as bool?
  ..visibleIf = json['visibleIf'] as String?
  ..width = json['width'] as String?
  ..minWidth = json['minWidth'] as String?
  ..maxWidth = json['maxWidth'] as String?
  ..startWithNewLine = json['startWithNewLine'] as bool?
  ..indent = json['indent'] as int?
  ..page = json['page'] as String?
  ..title = json['title'] as String?
  ..titleLocation = json['titleLocation'] as String?
  ..description = json['description'] as String?
  ..descriptionLocation = json['descriptionLocation'] as String?
  ..hideNumber = json['hideNumber'] as bool?
  ..valueName = json['valueName'] as String?
  ..enableIf = json['enableIf'] as String?
  ..defaultValue = json['defaultValue']
  ..defaultValueExpression = json['defaultValueExpression'] as String?
  ..correctAnswer = json['correctAnswer'] as String?
  ..isRequired = json['isRequired'] as bool?
  ..requiredIf = json['requiredIf'] as String?
  ..requiredErrorText = json['requiredErrorText'] as String?
  ..readOnly = json['readOnly'] as bool?
  ..validators = (json['validators'] as List<dynamic>?)
      ?.map((e) => SurveyValidator.fromJson(e as Map<String, dynamic>))
      .toList()
  ..bindings = json['bindings'] as String?
  ..renderAs = json['renderAs'] as String?
  ..columnsVisibleIf = json['columnsVisibleIf'] as String?
  ..rowsVisibleIf = json['rowsVisibleIf'] as String?
  ..showHeader = json['showHeader'] as bool?
  ..allowRowsDragAndDrop = json['allowRowsDragAndDrop'] as String?
  ..type = json['type'] as String?
  ..columns = ItemValue.fromListJson(json['columns'] as List?)
  ..rows = ItemValue.fromListJson(json['rows'] as List?)
  ..cells = (json['cells'] as Map<String, dynamic>?)?.map(
    (k, e) => MapEntry(k, Map<String, String>.from(e as Map)),
  )
  ..rowsOrder = json['rowsOrder'] as String?
  ..isAllRowRequired = json['isAllRowRequired'] as bool?
  ..hideIfRowsEmpty = json['hideIfRowsEmpty'] as bool?;

Map<String, dynamic> _$MatrixToJson(Matrix instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('state', instance.state);
  writeNotNull('name', instance.name);
  writeNotNull('visible', instance.visible);
  writeNotNull('useDisplayValuesInTitle', instance.useDisplayValuesInTitle);
  writeNotNull('visibleIf', instance.visibleIf);
  writeNotNull('width', instance.width);
  writeNotNull('minWidth', instance.minWidth);
  writeNotNull('maxWidth', instance.maxWidth);
  writeNotNull('startWithNewLine', instance.startWithNewLine);
  writeNotNull('indent', instance.indent);
  writeNotNull('page', instance.page);
  writeNotNull('title', instance.title);
  writeNotNull('titleLocation', instance.titleLocation);
  writeNotNull('description', instance.description);
  writeNotNull('descriptionLocation', instance.descriptionLocation);
  writeNotNull('hideNumber', instance.hideNumber);
  writeNotNull('valueName', instance.valueName);
  writeNotNull('enableIf', instance.enableIf);
  writeNotNull('defaultValue', instance.defaultValue);
  writeNotNull('defaultValueExpression', instance.defaultValueExpression);
  writeNotNull('correctAnswer', instance.correctAnswer);
  writeNotNull('isRequired', instance.isRequired);
  writeNotNull('requiredIf', instance.requiredIf);
  writeNotNull('requiredErrorText', instance.requiredErrorText);
  writeNotNull('readOnly', instance.readOnly);
  writeNotNull('validators', instance.validators);
  writeNotNull('bindings', instance.bindings);
  writeNotNull('renderAs', instance.renderAs);
  writeNotNull('columnsVisibleIf', instance.columnsVisibleIf);
  writeNotNull('rowsVisibleIf', instance.rowsVisibleIf);
  writeNotNull('showHeader', instance.showHeader);
  writeNotNull('allowRowsDragAndDrop', instance.allowRowsDragAndDrop);
  writeNotNull('type', instance.type);
  writeNotNull('columns', instance.columns);
  writeNotNull('rows', instance.rows);
  writeNotNull('cells', instance.cells);
  writeNotNull('rowsOrder', instance.rowsOrder);
  writeNotNull('isAllRowRequired', instance.isAllRowRequired);
  writeNotNull('hideIfRowsEmpty', instance.hideIfRowsEmpty);
  return val;
}

MatrixDropdownColumn _$MatrixDropdownColumnFromJson(
        Map<String, dynamic> json) =>
    MatrixDropdownColumn()
      ..name = json['name'] as String?
      ..title = json['title'] as String?
      ..cellType = json['cellType'] as String?
      ..colCount = json['colCount'] as String?
      ..isRequired = json['isRequired'] as bool?
      ..isUnique = json['isUnique'] as bool?
      ..requiredErrorText = json['requiredErrorText'] as String?
      ..readOnly = json['readOnly'] as bool?
      ..minWidth = json['minWidth'] as String?
      ..width = json['width'] as String?
      ..visibleIf = json['visibleIf'] as String?
      ..enableIf = json['enableIf'] as String?
      ..requiredIf = json['requiredIf'] as String?
      ..showInMultipleColumns = json['showInMultipleColumns'] as bool?
      ..validators = (json['validators'] as List<dynamic>?)
          ?.map((e) => SurveyValidator.fromJson(e as Map<String, dynamic>))
          .toList()
      ..totalType = json['totalType'] as String?
      ..totalExpression = json['totalExpression'] as String?
      ..totalFormat = json['totalFormat'] as String?
      ..totalDisplayStyle = json['totalDisplayStyle'] as String?
      ..totalCurrency = json['totalCurrency'] as String?
      ..totalMaximumFractionDigits = json['totalMaximumFractionDigits'] as num?
      ..totalMinimumFractionDigits = json['totalMinimumFractionDigits'] as num?
      ..renderAs = json['renderAs'] as String?;

Map<String, dynamic> _$MatrixDropdownColumnToJson(
    MatrixDropdownColumn instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('name', instance.name);
  writeNotNull('title', instance.title);
  writeNotNull('cellType', instance.cellType);
  writeNotNull('colCount', instance.colCount);
  writeNotNull('isRequired', instance.isRequired);
  writeNotNull('isUnique', instance.isUnique);
  writeNotNull('requiredErrorText', instance.requiredErrorText);
  writeNotNull('readOnly', instance.readOnly);
  writeNotNull('minWidth', instance.minWidth);
  writeNotNull('width', instance.width);
  writeNotNull('visibleIf', instance.visibleIf);
  writeNotNull('enableIf', instance.enableIf);
  writeNotNull('requiredIf', instance.requiredIf);
  writeNotNull('showInMultipleColumns', instance.showInMultipleColumns);
  writeNotNull('validators', instance.validators);
  writeNotNull('totalType', instance.totalType);
  writeNotNull('totalExpression', instance.totalExpression);
  writeNotNull('totalFormat', instance.totalFormat);
  writeNotNull('totalDisplayStyle', instance.totalDisplayStyle);
  writeNotNull('totalCurrency', instance.totalCurrency);
  writeNotNull(
      'totalMaximumFractionDigits', instance.totalMaximumFractionDigits);
  writeNotNull(
      'totalMinimumFractionDigits', instance.totalMinimumFractionDigits);
  writeNotNull('renderAs', instance.renderAs);
  return val;
}

Page _$PageFromJson(Map<String, dynamic> json) => Page()
  ..name = json['name'] as String?
  ..elements = (json['elements'] as List<dynamic>?)
      ?.map((e) => ElementBase.fromJson(e as Map<String, dynamic>))
      .toList()
  ..visible = json['visible'] as bool?
  ..visibleIf = json['visibleIf'] as String?
  ..enableIf = json['enableIf'] as String?
  ..requiredIf = json['requiredIf'] as String?
  ..readOnly = json['readOnly'] as bool?
  ..questionTitleLocation = json['questionTitleLocation'] as String?
  ..title = json['title'] as String?
  ..description = json['description'] as String?
  ..navigationButtonsVisibility = json['navigationButtonsVisibility'] as String?
  ..questionsOrder = json['questionsOrder'] as String?
  ..maxTimeToFinish = json['maxTimeToFinish'] as int?
  ..navigationTitle = json['navigationTitle'] as String?
  ..navigationDescription = json['navigationDescription'] as String?;

Map<String, dynamic> _$PageToJson(Page instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('name', instance.name);
  writeNotNull('elements', instance.elements);
  writeNotNull('visible', instance.visible);
  writeNotNull('visibleIf', instance.visibleIf);
  writeNotNull('enableIf', instance.enableIf);
  writeNotNull('requiredIf', instance.requiredIf);
  writeNotNull('readOnly', instance.readOnly);
  writeNotNull('questionTitleLocation', instance.questionTitleLocation);
  writeNotNull('title', instance.title);
  writeNotNull('description', instance.description);
  writeNotNull(
      'navigationButtonsVisibility', instance.navigationButtonsVisibility);
  writeNotNull('questionsOrder', instance.questionsOrder);
  writeNotNull('maxTimeToFinish', instance.maxTimeToFinish);
  writeNotNull('navigationTitle', instance.navigationTitle);
  writeNotNull('navigationDescription', instance.navigationDescription);
  return val;
}

Panel _$PanelFromJson(Map<String, dynamic> json) => Panel()
  ..name = json['name'] as String?
  ..elements = (json['elements'] as List<dynamic>?)
      ?.map((e) => ElementBase.fromJson(e as Map<String, dynamic>))
      .toList()
  ..visible = json['visible'] as bool?
  ..visibleIf = json['visibleIf'] as String?
  ..enableIf = json['enableIf'] as String?
  ..requiredIf = json['requiredIf'] as String?
  ..readOnly = json['readOnly'] as bool?
  ..questionTitleLocation = json['questionTitleLocation'] as String?
  ..title = json['title'] as String?
  ..description = json['description'] as String?
  ..state = json['state'] as String?
  ..isRequired = json['isRequired'] as bool?
  ..requiredErrorText = json['requiredErrorText'] as String?
  ..startWithNewLine = json['startWithNewLine'] as bool?
  ..width = json['width'] as String?
  ..innerIndent = json['innerIndent'] as int?
  ..indent = json['indent'] as int?
  ..page = json['page'] as String?
  ..showNumber = json['showNumber'] as bool?
  ..showQuestionNumbers = json['showQuestionNumbers'] as String?
  ..questionStartIndex = json['questionStartIndex'] as String?;

Map<String, dynamic> _$PanelToJson(Panel instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('name', instance.name);
  writeNotNull('elements', instance.elements);
  writeNotNull('visible', instance.visible);
  writeNotNull('visibleIf', instance.visibleIf);
  writeNotNull('enableIf', instance.enableIf);
  writeNotNull('requiredIf', instance.requiredIf);
  writeNotNull('readOnly', instance.readOnly);
  writeNotNull('questionTitleLocation', instance.questionTitleLocation);
  writeNotNull('title', instance.title);
  writeNotNull('description', instance.description);
  writeNotNull('state', instance.state);
  writeNotNull('isRequired', instance.isRequired);
  writeNotNull('requiredErrorText', instance.requiredErrorText);
  writeNotNull('startWithNewLine', instance.startWithNewLine);
  writeNotNull('width', instance.width);
  writeNotNull('innerIndent', instance.innerIndent);
  writeNotNull('indent', instance.indent);
  writeNotNull('page', instance.page);
  writeNotNull('showNumber', instance.showNumber);
  writeNotNull('showQuestionNumbers', instance.showQuestionNumbers);
  writeNotNull('questionStartIndex', instance.questionStartIndex);
  return val;
}

PanelDynamic _$PanelDynamicFromJson(Map<String, dynamic> json) => PanelDynamic()
  ..state = json['state'] as String?
  ..name = json['name'] as String?
  ..visible = json['visible'] as bool?
  ..useDisplayValuesInTitle = json['useDisplayValuesInTitle'] as bool?
  ..visibleIf = json['visibleIf'] as String?
  ..width = json['width'] as String?
  ..minWidth = json['minWidth'] as String?
  ..maxWidth = json['maxWidth'] as String?
  ..startWithNewLine = json['startWithNewLine'] as bool?
  ..indent = json['indent'] as int?
  ..page = json['page'] as String?
  ..title = json['title'] as String?
  ..titleLocation = json['titleLocation'] as String?
  ..description = json['description'] as String?
  ..descriptionLocation = json['descriptionLocation'] as String?
  ..hideNumber = json['hideNumber'] as bool?
  ..valueName = json['valueName'] as String?
  ..enableIf = json['enableIf'] as String?
  ..defaultValue = json['defaultValue']
  ..defaultValueExpression = json['defaultValueExpression'] as String?
  ..correctAnswer = json['correctAnswer'] as String?
  ..isRequired = json['isRequired'] as bool?
  ..requiredIf = json['requiredIf'] as String?
  ..requiredErrorText = json['requiredErrorText'] as String?
  ..readOnly = json['readOnly'] as bool?
  ..validators = (json['validators'] as List<dynamic>?)
      ?.map((e) => SurveyValidator.fromJson(e as Map<String, dynamic>))
      .toList()
  ..bindings = json['bindings'] as String?
  ..renderAs = json['renderAs'] as String?
  ..type = json['type'] as String?
  ..templateElements = (json['templateElements'] as List<dynamic>?)
      ?.map((e) => ElementBase.fromJson(e as Map<String, dynamic>))
      .toList()
  ..templateTitle = json['templateTitle'] as String?
  ..templateDescription = json['templateDescription'] as String?
  ..allowAddPanel = json['allowAddPanel'] as bool?
  ..allowRemovePanel = json['allowRemovePanel'] as bool?
  ..panelCount = json['panelCount'] as int?
  ..minPanelCount = json['minPanelCount'] as int?
  ..maxPanelCount = json['maxPanelCount'] as int?
  ..defaultPanelValue = json['defaultPanelValue']
  ..defaultValueFromLastPanel = json['defaultValueFromLastPanel'] as bool?
  ..panelsState = json['panelsState'] as String?
  ..keyName = json['keyName'] as String?
  ..keyDuplicationError = json['keyDuplicationError'] as String?
  ..confirmDelete = json['confirmDelete'] as bool?
  ..confirmDeleteText = json['confirmDeleteText'] as String?
  ..panelAddText = json['panelAddText'] as String?
  ..panelRemoveText = json['panelRemoveText'] as String?
  ..panelPrevText = json['panelPrevText'] as String?
  ..panelNextText = json['panelNextText'] as String?
  ..showQuestionNumbers = json['showQuestionNumbers'] as String?
  ..showRangeInProgress = json['showRangeInProgress'] as bool?
  ..renderMode = json['renderMode'] as String?
  ..templateTitleLocation = json['templateTitleLocation'] as String?
  ..panelRemoveButtonLocation = json['panelRemoveButtonLocation'] as String?;

Map<String, dynamic> _$PanelDynamicToJson(PanelDynamic instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('state', instance.state);
  writeNotNull('name', instance.name);
  writeNotNull('visible', instance.visible);
  writeNotNull('useDisplayValuesInTitle', instance.useDisplayValuesInTitle);
  writeNotNull('visibleIf', instance.visibleIf);
  writeNotNull('width', instance.width);
  writeNotNull('minWidth', instance.minWidth);
  writeNotNull('maxWidth', instance.maxWidth);
  writeNotNull('startWithNewLine', instance.startWithNewLine);
  writeNotNull('indent', instance.indent);
  writeNotNull('page', instance.page);
  writeNotNull('title', instance.title);
  writeNotNull('titleLocation', instance.titleLocation);
  writeNotNull('description', instance.description);
  writeNotNull('descriptionLocation', instance.descriptionLocation);
  writeNotNull('hideNumber', instance.hideNumber);
  writeNotNull('valueName', instance.valueName);
  writeNotNull('enableIf', instance.enableIf);
  writeNotNull('defaultValue', instance.defaultValue);
  writeNotNull('defaultValueExpression', instance.defaultValueExpression);
  writeNotNull('correctAnswer', instance.correctAnswer);
  writeNotNull('isRequired', instance.isRequired);
  writeNotNull('requiredIf', instance.requiredIf);
  writeNotNull('requiredErrorText', instance.requiredErrorText);
  writeNotNull('readOnly', instance.readOnly);
  writeNotNull('validators', instance.validators);
  writeNotNull('bindings', instance.bindings);
  writeNotNull('renderAs', instance.renderAs);
  writeNotNull('type', instance.type);
  writeNotNull('templateElements', instance.templateElements);
  writeNotNull('templateTitle', instance.templateTitle);
  writeNotNull('templateDescription', instance.templateDescription);
  writeNotNull('allowAddPanel', instance.allowAddPanel);
  writeNotNull('allowRemovePanel', instance.allowRemovePanel);
  writeNotNull('panelCount', instance.panelCount);
  writeNotNull('minPanelCount', instance.minPanelCount);
  writeNotNull('maxPanelCount', instance.maxPanelCount);
  writeNotNull('defaultPanelValue', instance.defaultPanelValue);
  writeNotNull('defaultValueFromLastPanel', instance.defaultValueFromLastPanel);
  writeNotNull('panelsState', instance.panelsState);
  writeNotNull('keyName', instance.keyName);
  writeNotNull('keyDuplicationError', instance.keyDuplicationError);
  writeNotNull('confirmDelete', instance.confirmDelete);
  writeNotNull('confirmDeleteText', instance.confirmDeleteText);
  writeNotNull('panelAddText', instance.panelAddText);
  writeNotNull('panelRemoveText', instance.panelRemoveText);
  writeNotNull('panelPrevText', instance.panelPrevText);
  writeNotNull('panelNextText', instance.panelNextText);
  writeNotNull('showQuestionNumbers', instance.showQuestionNumbers);
  writeNotNull('showRangeInProgress', instance.showRangeInProgress);
  writeNotNull('renderMode', instance.renderMode);
  writeNotNull('templateTitleLocation', instance.templateTitleLocation);
  writeNotNull('panelRemoveButtonLocation', instance.panelRemoveButtonLocation);
  return val;
}

VisibleTrigger _$VisibleTriggerFromJson(Map<String, dynamic> json) =>
    VisibleTrigger()
      ..operator = json['operator'] as String?
      ..value = json['value'] as String?
      ..expression = json['expression'] as String?
      ..name = json['name'] as String?
      ..pages = json['pages'] as String?
      ..questions = (json['questions'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList();

Map<String, dynamic> _$VisibleTriggerToJson(VisibleTrigger instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('operator', instance.operator);
  writeNotNull('value', instance.value);
  writeNotNull('expression', instance.expression);
  writeNotNull('name', instance.name);
  writeNotNull('pages', instance.pages);
  writeNotNull('questions', instance.questions);
  return val;
}

CompleteTrigger _$CompleteTriggerFromJson(Map<String, dynamic> json) =>
    CompleteTrigger()
      ..operator = json['operator'] as String?
      ..value = json['value'] as String?
      ..expression = json['expression'] as String?
      ..name = json['name'] as String?;

Map<String, dynamic> _$CompleteTriggerToJson(CompleteTrigger instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('operator', instance.operator);
  writeNotNull('value', instance.value);
  writeNotNull('expression', instance.expression);
  writeNotNull('name', instance.name);
  return val;
}

SetvalueTrigger _$SetvalueTriggerFromJson(Map<String, dynamic> json) =>
    SetvalueTrigger()
      ..operator = json['operator'] as String?
      ..value = json['value'] as String?
      ..expression = json['expression'] as String?
      ..name = json['name'] as String?
      ..setToName = json['setToName'] as String?
      ..setValue = json['setValue'] as String?
      ..isVariable = json['isVariable'] as bool?;

Map<String, dynamic> _$SetvalueTriggerToJson(SetvalueTrigger instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('operator', instance.operator);
  writeNotNull('value', instance.value);
  writeNotNull('expression', instance.expression);
  writeNotNull('name', instance.name);
  writeNotNull('setToName', instance.setToName);
  writeNotNull('setValue', instance.setValue);
  writeNotNull('isVariable', instance.isVariable);
  return val;
}

CopyValueTrigger _$CopyValueTriggerFromJson(Map<String, dynamic> json) =>
    CopyValueTrigger()
      ..operator = json['operator'] as String?
      ..value = json['value'] as String?
      ..expression = json['expression'] as String?
      ..name = json['name'] as String?
      ..setToName = json['setToName'] as String?
      ..fromName = json['fromName'] as String?;

Map<String, dynamic> _$CopyValueTriggerToJson(CopyValueTrigger instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('operator', instance.operator);
  writeNotNull('value', instance.value);
  writeNotNull('expression', instance.expression);
  writeNotNull('name', instance.name);
  writeNotNull('setToName', instance.setToName);
  writeNotNull('fromName', instance.fromName);
  return val;
}

SkipTrigger _$SkipTriggerFromJson(Map<String, dynamic> json) => SkipTrigger()
  ..operator = json['operator'] as String?
  ..value = json['value'] as String?
  ..expression = json['expression'] as String?
  ..name = json['name'] as String?
  ..gotoName = json['gotoName'] as String?;

Map<String, dynamic> _$SkipTriggerToJson(SkipTrigger instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('operator', instance.operator);
  writeNotNull('value', instance.value);
  writeNotNull('expression', instance.expression);
  writeNotNull('name', instance.name);
  writeNotNull('gotoName', instance.gotoName);
  return val;
}

RunExpressionTrigger _$RunExpressionTriggerFromJson(
        Map<String, dynamic> json) =>
    RunExpressionTrigger()
      ..operator = json['operator'] as String?
      ..value = json['value'] as String?
      ..expression = json['expression'] as String?
      ..name = json['name'] as String?
      ..setToName = json['setToName'] as String?
      ..runExpression = json['runExpression'] as String?;

Map<String, dynamic> _$RunExpressionTriggerToJson(
    RunExpressionTrigger instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('operator', instance.operator);
  writeNotNull('value', instance.value);
  writeNotNull('expression', instance.expression);
  writeNotNull('name', instance.name);
  writeNotNull('setToName', instance.setToName);
  writeNotNull('runExpression', instance.runExpression);
  return val;
}

NumericValidator _$NumericValidatorFromJson(Map<String, dynamic> json) =>
    NumericValidator()
      ..type = json['type'] as String?
      ..minValue = json['minValue'] as num?
      ..maxValue = json['maxValue'] as num?;

Map<String, dynamic> _$NumericValidatorToJson(NumericValidator instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('type', instance.type);
  writeNotNull('minValue', instance.minValue);
  writeNotNull('maxValue', instance.maxValue);
  return val;
}

TextValidator _$TextValidatorFromJson(Map<String, dynamic> json) =>
    TextValidator()
      ..type = json['type'] as String?
      ..minLength = json['minLength'] as int?
      ..maxLength = json['maxLength'] as int?
      ..allowDigits = json['allowDigits'] as bool?;

Map<String, dynamic> _$TextValidatorToJson(TextValidator instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('type', instance.type);
  writeNotNull('minLength', instance.minLength);
  writeNotNull('maxLength', instance.maxLength);
  writeNotNull('allowDigits', instance.allowDigits);
  return val;
}

AnswerCountValidator _$AnswerCountValidatorFromJson(
        Map<String, dynamic> json) =>
    AnswerCountValidator()
      ..type = json['type'] as String?
      ..minCount = json['minCount'] as int?
      ..maxCount = json['maxCount'] as int?;

Map<String, dynamic> _$AnswerCountValidatorToJson(
    AnswerCountValidator instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('type', instance.type);
  writeNotNull('minCount', instance.minCount);
  writeNotNull('maxCount', instance.maxCount);
  return val;
}

RegexValidator _$RegexValidatorFromJson(Map<String, dynamic> json) =>
    RegexValidator()
      ..type = json['type'] as String?
      ..regex = json['regex'] as String?;

Map<String, dynamic> _$RegexValidatorToJson(RegexValidator instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('type', instance.type);
  writeNotNull('regex', instance.regex);
  return val;
}

EmailValidator _$EmailValidatorFromJson(Map<String, dynamic> json) =>
    EmailValidator()..type = json['type'] as String?;

Map<String, dynamic> _$EmailValidatorToJson(EmailValidator instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('type', instance.type);
  return val;
}

ExpressionValidator _$ExpressionValidatorFromJson(Map<String, dynamic> json) =>
    ExpressionValidator()
      ..type = json['type'] as String?
      ..expression = json['expression'] as String?;

Map<String, dynamic> _$ExpressionValidatorToJson(ExpressionValidator instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('type', instance.type);
  writeNotNull('expression', instance.expression);
  return val;
}
