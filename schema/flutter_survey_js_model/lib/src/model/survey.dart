//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:flutter_survey_js_model/src/model/survey_progress_bar_type.dart';
import 'package:flutter_survey_js_model/src/model/survey_show_progress_bar.dart';
import 'package:flutter_survey_js_model/src/model/survey_question_description_location.dart';
import 'package:flutter_survey_js_model/src/model/survey_questions_order.dart';
import 'package:flutter_survey_js_model/src/model/page.dart';
import 'package:flutter_survey_js_model/src/model/survey_questions_on_page_mode.dart';
import 'package:flutter_survey_js_model/src/model/survey_show_navigation_buttons.dart';
import 'package:flutter_survey_js_model/src/model/survey_show_question_numbers.dart';
import 'package:flutter_survey_js_model/src/model/survey_show_preview_before_complete.dart';
import 'package:flutter_survey_js_model/src/model/survey_text_update_mode.dart';
import 'package:flutter_survey_js_model/src/model/survey_show_timer_panel_mode.dart';
import 'package:flutter_survey_js_model/src/model/calculatedvalue.dart';
import 'package:flutter_survey_js_model/src/model/survey_mode.dart';
import 'package:flutter_survey_js_model/src/model/survey_triggers_inner.dart';
import 'package:flutter_survey_js_model/src/model/survey_question_title_location.dart';
import 'package:flutter_survey_js_model/src/model/survey_questions_inner.dart';
import 'package:flutter_survey_js_model/src/model/survey_background_image_fit.dart';
import 'package:flutter_survey_js_model/src/model/survey_question_error_location.dart';
import 'package:flutter_survey_js_model/src/model/survey_show_timer_panel.dart';
import 'package:flutter_survey_js_model/src/model/survey_logo_fit.dart';
import 'package:flutter_survey_js_model/src/model/survey_logo_position.dart';
import 'package:flutter_survey_js_model/src/model/urlconditionitem.dart';
import 'package:flutter_survey_js_model/src/model/htmlconditionitem.dart';
import 'package:flutter_survey_js_model/src/model/survey_logo_width.dart';
import 'package:built_collection/built_collection.dart';
import 'package:flutter_survey_js_model/src/model/survey_check_errors_mode.dart';
import 'package:flutter_survey_js_model/src/model/survey_clear_invisible_values.dart';
import 'package:flutter_survey_js_model/src/model/survey_locale.dart';
import 'package:flutter_survey_js_model/src/model/survey_toc_location.dart';
import 'package:flutter_survey_js_model/src/model/survey_width_mode.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'survey.g.dart';

/// Survey
///
/// Properties:
/// * [locale] 
/// * [title] 
/// * [description] 
/// * [logo] 
/// * [logoWidth] 
/// * [logoHeight] 
/// * [logoFit] 
/// * [logoPosition] 
/// * [focusFirstQuestionAutomatic] 
/// * [focusOnFirstError] 
/// * [completedHtml] 
/// * [completedBeforeHtml] 
/// * [completedHtmlOnCondition] 
/// * [loadingHtml] 
/// * [pages] 
/// * [questions] 
/// * [triggers] 
/// * [calculatedValues] 
/// * [surveyId] 
/// * [surveyPostId] 
/// * [surveyShowDataSaving] 
/// * [cookieName] 
/// * [sendResultOnPageNext] 
/// * [showNavigationButtons] 
/// * [showPrevButton] 
/// * [showTitle] 
/// * [showPageTitles] 
/// * [showCompletedPage] 
/// * [navigateToUrl] 
/// * [navigateToUrlOnCondition] 
/// * [questionsOrder] 
/// * [showPageNumbers] 
/// * [showQuestionNumbers] 
/// * [questionTitleLocation] 
/// * [questionDescriptionLocation] 
/// * [questionErrorLocation] 
/// * [showProgressBar] 
/// * [progressBarType] 
/// * [showTOC] 
/// * [tocLocation] 
/// * [mode] 
/// * [storeOthersAsComment] 
/// * [maxTextLength] 
/// * [maxOthersLength] 
/// * [goNextPageAutomatic] 
/// * [clearInvisibleValues] 
/// * [checkErrorsMode] 
/// * [textUpdateMode] 
/// * [autoGrowComment] 
/// * [startSurveyText] 
/// * [pagePrevText] 
/// * [pageNextText] 
/// * [completeText] 
/// * [previewText] 
/// * [editText] 
/// * [requiredText] 
/// * [questionStartIndex] 
/// * [questionTitlePattern] 
/// * [questionTitleTemplate] 
/// * [firstPageIsStarted] 
/// * [isSinglePage] 
/// * [questionsOnPageMode] 
/// * [showPreviewBeforeComplete] 
/// * [maxTimeToFinish] 
/// * [maxTimeToFinishPage] 
/// * [showTimerPanel] 
/// * [showTimerPanelMode] 
/// * [widthMode] 
/// * [width] 
/// * [backgroundImage] 
/// * [backgroundImageFit] 
/// * [backgroundOpacity] 
/// * [showBrandInfo] 
@BuiltValue()
abstract class Survey implements Built<Survey, SurveyBuilder> {
  @BuiltValueField(wireName: r'locale')
  SurveyLocale? get locale;
  // enum localeEnum {  ,  };

  @BuiltValueField(wireName: r'title')
  String? get title;

  @BuiltValueField(wireName: r'description')
  String? get description;

  @BuiltValueField(wireName: r'logo')
  String? get logo;

  @BuiltValueField(wireName: r'logoWidth')
  SurveyLogoWidth? get logoWidth;

  @BuiltValueField(wireName: r'logoHeight')
  SurveyLogoWidth? get logoHeight;

  @BuiltValueField(wireName: r'logoFit')
  SurveyLogoFit? get logoFit;
  // enum logoFitEnum {  none,  contain,  cover,  fill,  };

  @BuiltValueField(wireName: r'logoPosition')
  SurveyLogoPosition? get logoPosition;
  // enum logoPositionEnum {  none,  left,  right,  top,  bottom,  };

  @BuiltValueField(wireName: r'focusFirstQuestionAutomatic')
  bool? get focusFirstQuestionAutomatic;

  @BuiltValueField(wireName: r'focusOnFirstError')
  bool? get focusOnFirstError;

  @BuiltValueField(wireName: r'completedHtml')
  String? get completedHtml;

  @BuiltValueField(wireName: r'completedBeforeHtml')
  String? get completedBeforeHtml;

  @BuiltValueField(wireName: r'completedHtmlOnCondition')
  BuiltList<Htmlconditionitem>? get completedHtmlOnCondition;

  @BuiltValueField(wireName: r'loadingHtml')
  String? get loadingHtml;

  @BuiltValueField(wireName: r'pages')
  BuiltList<Page>? get pages;

  @BuiltValueField(wireName: r'questions')
  BuiltList<SurveyQuestionsInner>? get questions;

  @BuiltValueField(wireName: r'triggers')
  BuiltList<SurveyTriggersInner>? get triggers;

  @BuiltValueField(wireName: r'calculatedValues')
  BuiltList<Calculatedvalue>? get calculatedValues;

  @BuiltValueField(wireName: r'surveyId')
  String? get surveyId;

  @BuiltValueField(wireName: r'surveyPostId')
  String? get surveyPostId;

  @BuiltValueField(wireName: r'surveyShowDataSaving')
  bool? get surveyShowDataSaving;

  @BuiltValueField(wireName: r'cookieName')
  String? get cookieName;

  @BuiltValueField(wireName: r'sendResultOnPageNext')
  bool? get sendResultOnPageNext;

  @BuiltValueField(wireName: r'showNavigationButtons')
  SurveyShowNavigationButtons? get showNavigationButtons;
  // enum showNavigationButtonsEnum {  none,  top,  bottom,  both,  };

  @BuiltValueField(wireName: r'showPrevButton')
  bool? get showPrevButton;

  @BuiltValueField(wireName: r'showTitle')
  bool? get showTitle;

  @BuiltValueField(wireName: r'showPageTitles')
  bool? get showPageTitles;

  @BuiltValueField(wireName: r'showCompletedPage')
  bool? get showCompletedPage;

  @BuiltValueField(wireName: r'navigateToUrl')
  String? get navigateToUrl;

  @BuiltValueField(wireName: r'navigateToUrlOnCondition')
  BuiltList<Urlconditionitem>? get navigateToUrlOnCondition;

  @BuiltValueField(wireName: r'questionsOrder')
  SurveyQuestionsOrder? get questionsOrder;
  // enum questionsOrderEnum {  initial,  random,  };

  @BuiltValueField(wireName: r'showPageNumbers')
  bool? get showPageNumbers;

  @BuiltValueField(wireName: r'showQuestionNumbers')
  SurveyShowQuestionNumbers? get showQuestionNumbers;

  @BuiltValueField(wireName: r'questionTitleLocation')
  SurveyQuestionTitleLocation? get questionTitleLocation;
  // enum questionTitleLocationEnum {  top,  bottom,  left,  };

  @BuiltValueField(wireName: r'questionDescriptionLocation')
  SurveyQuestionDescriptionLocation? get questionDescriptionLocation;
  // enum questionDescriptionLocationEnum {  underInput,  underTitle,  };

  @BuiltValueField(wireName: r'questionErrorLocation')
  SurveyQuestionErrorLocation? get questionErrorLocation;
  // enum questionErrorLocationEnum {  top,  bottom,  };

  @BuiltValueField(wireName: r'showProgressBar')
  SurveyShowProgressBar? get showProgressBar;
  // enum showProgressBarEnum {  off,  top,  bottom,  both,  };

  @BuiltValueField(wireName: r'progressBarType')
  SurveyProgressBarType? get progressBarType;
  // enum progressBarTypeEnum {  pages,  questions,  requiredQuestions,  correctQuestions,  buttons,  };

  @BuiltValueField(wireName: r'showTOC')
  String? get showTOC;

  @BuiltValueField(wireName: r'tocLocation')
  SurveyTocLocation? get tocLocation;
  // enum tocLocationEnum {  left,  right,  };

  @BuiltValueField(wireName: r'mode')
  SurveyMode? get mode;
  // enum modeEnum {  edit,  display,  };

  @BuiltValueField(wireName: r'storeOthersAsComment')
  bool? get storeOthersAsComment;

  @BuiltValueField(wireName: r'maxTextLength')
  num? get maxTextLength;

  @BuiltValueField(wireName: r'maxOthersLength')
  num? get maxOthersLength;

  @BuiltValueField(wireName: r'goNextPageAutomatic')
  bool? get goNextPageAutomatic;

  @BuiltValueField(wireName: r'clearInvisibleValues')
  SurveyClearInvisibleValues? get clearInvisibleValues;
  // enum clearInvisibleValuesEnum {  none,  onComplete,  onHidden,  onHiddenContainer,  };

  @BuiltValueField(wireName: r'checkErrorsMode')
  SurveyCheckErrorsMode? get checkErrorsMode;
  // enum checkErrorsModeEnum {  onNextPage,  onValueChanged,  onValueChanging,  onComplete,  };

  @BuiltValueField(wireName: r'textUpdateMode')
  SurveyTextUpdateMode? get textUpdateMode;
  // enum textUpdateModeEnum {  onBlur,  onTyping,  };

  @BuiltValueField(wireName: r'autoGrowComment')
  bool? get autoGrowComment;

  @BuiltValueField(wireName: r'startSurveyText')
  String? get startSurveyText;

  @BuiltValueField(wireName: r'pagePrevText')
  String? get pagePrevText;

  @BuiltValueField(wireName: r'pageNextText')
  String? get pageNextText;

  @BuiltValueField(wireName: r'completeText')
  String? get completeText;

  @BuiltValueField(wireName: r'previewText')
  String? get previewText;

  @BuiltValueField(wireName: r'editText')
  String? get editText;

  @BuiltValueField(wireName: r'requiredText')
  String? get requiredText;

  @BuiltValueField(wireName: r'questionStartIndex')
  String? get questionStartIndex;

  @BuiltValueField(wireName: r'questionTitlePattern')
  String? get questionTitlePattern;

  @BuiltValueField(wireName: r'questionTitleTemplate')
  String? get questionTitleTemplate;

  @BuiltValueField(wireName: r'firstPageIsStarted')
  bool? get firstPageIsStarted;

  @BuiltValueField(wireName: r'isSinglePage')
  bool? get isSinglePage;

  @BuiltValueField(wireName: r'questionsOnPageMode')
  SurveyQuestionsOnPageMode? get questionsOnPageMode;
  // enum questionsOnPageModeEnum {  singlePage,  standard,  questionPerPage,  };

  @BuiltValueField(wireName: r'showPreviewBeforeComplete')
  SurveyShowPreviewBeforeComplete? get showPreviewBeforeComplete;
  // enum showPreviewBeforeCompleteEnum {  noPreview,  showAllQuestions,  showAnsweredQuestions,  };

  @BuiltValueField(wireName: r'maxTimeToFinish')
  num? get maxTimeToFinish;

  @BuiltValueField(wireName: r'maxTimeToFinishPage')
  num? get maxTimeToFinishPage;

  @BuiltValueField(wireName: r'showTimerPanel')
  SurveyShowTimerPanel? get showTimerPanel;
  // enum showTimerPanelEnum {  none,  top,  bottom,  };

  @BuiltValueField(wireName: r'showTimerPanelMode')
  SurveyShowTimerPanelMode? get showTimerPanelMode;
  // enum showTimerPanelModeEnum {  all,  page,  survey,  };

  @BuiltValueField(wireName: r'widthMode')
  SurveyWidthMode? get widthMode;
  // enum widthModeEnum {  auto,  static,  responsive,  };

  @BuiltValueField(wireName: r'width')
  SurveyLogoWidth? get width;

  @BuiltValueField(wireName: r'backgroundImage')
  String? get backgroundImage;

  @BuiltValueField(wireName: r'backgroundImageFit')
  SurveyBackgroundImageFit? get backgroundImageFit;
  // enum backgroundImageFitEnum {  auto,  contain,  cover,  };

  @BuiltValueField(wireName: r'backgroundOpacity')
  num? get backgroundOpacity;

  @BuiltValueField(wireName: r'showBrandInfo')
  bool? get showBrandInfo;

  Survey._();

  factory Survey([void updates(SurveyBuilder b)]) = _$Survey;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(SurveyBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<Survey> get serializer => _$SurveySerializer();
}

class _$SurveySerializer implements PrimitiveSerializer<Survey> {
  @override
  final Iterable<Type> types = const [Survey, _$Survey];

  @override
  final String wireName = r'Survey';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    Survey object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.locale != null) {
      yield r'locale';
      yield serializers.serialize(
        object.locale,
        specifiedType: const FullType(SurveyLocale),
      );
    }
    if (object.title != null) {
      yield r'title';
      yield serializers.serialize(
        object.title,
        specifiedType: const FullType(String),
      );
    }
    if (object.description != null) {
      yield r'description';
      yield serializers.serialize(
        object.description,
        specifiedType: const FullType(String),
      );
    }
    if (object.logo != null) {
      yield r'logo';
      yield serializers.serialize(
        object.logo,
        specifiedType: const FullType(String),
      );
    }
    if (object.logoWidth != null) {
      yield r'logoWidth';
      yield serializers.serialize(
        object.logoWidth,
        specifiedType: const FullType(SurveyLogoWidth),
      );
    }
    if (object.logoHeight != null) {
      yield r'logoHeight';
      yield serializers.serialize(
        object.logoHeight,
        specifiedType: const FullType(SurveyLogoWidth),
      );
    }
    if (object.logoFit != null) {
      yield r'logoFit';
      yield serializers.serialize(
        object.logoFit,
        specifiedType: const FullType(SurveyLogoFit),
      );
    }
    if (object.logoPosition != null) {
      yield r'logoPosition';
      yield serializers.serialize(
        object.logoPosition,
        specifiedType: const FullType(SurveyLogoPosition),
      );
    }
    if (object.focusFirstQuestionAutomatic != null) {
      yield r'focusFirstQuestionAutomatic';
      yield serializers.serialize(
        object.focusFirstQuestionAutomatic,
        specifiedType: const FullType(bool),
      );
    }
    if (object.focusOnFirstError != null) {
      yield r'focusOnFirstError';
      yield serializers.serialize(
        object.focusOnFirstError,
        specifiedType: const FullType(bool),
      );
    }
    if (object.completedHtml != null) {
      yield r'completedHtml';
      yield serializers.serialize(
        object.completedHtml,
        specifiedType: const FullType(String),
      );
    }
    if (object.completedBeforeHtml != null) {
      yield r'completedBeforeHtml';
      yield serializers.serialize(
        object.completedBeforeHtml,
        specifiedType: const FullType(String),
      );
    }
    if (object.completedHtmlOnCondition != null) {
      yield r'completedHtmlOnCondition';
      yield serializers.serialize(
        object.completedHtmlOnCondition,
        specifiedType: const FullType(BuiltList, [FullType(Htmlconditionitem)]),
      );
    }
    if (object.loadingHtml != null) {
      yield r'loadingHtml';
      yield serializers.serialize(
        object.loadingHtml,
        specifiedType: const FullType(String),
      );
    }
    if (object.pages != null) {
      yield r'pages';
      yield serializers.serialize(
        object.pages,
        specifiedType: const FullType(BuiltList, [FullType(Page)]),
      );
    }
    if (object.questions != null) {
      yield r'questions';
      yield serializers.serialize(
        object.questions,
        specifiedType: const FullType(BuiltList, [FullType(SurveyQuestionsInner)]),
      );
    }
    if (object.triggers != null) {
      yield r'triggers';
      yield serializers.serialize(
        object.triggers,
        specifiedType: const FullType(BuiltList, [FullType(SurveyTriggersInner)]),
      );
    }
    if (object.calculatedValues != null) {
      yield r'calculatedValues';
      yield serializers.serialize(
        object.calculatedValues,
        specifiedType: const FullType(BuiltList, [FullType(Calculatedvalue)]),
      );
    }
    if (object.surveyId != null) {
      yield r'surveyId';
      yield serializers.serialize(
        object.surveyId,
        specifiedType: const FullType(String),
      );
    }
    if (object.surveyPostId != null) {
      yield r'surveyPostId';
      yield serializers.serialize(
        object.surveyPostId,
        specifiedType: const FullType(String),
      );
    }
    if (object.surveyShowDataSaving != null) {
      yield r'surveyShowDataSaving';
      yield serializers.serialize(
        object.surveyShowDataSaving,
        specifiedType: const FullType(bool),
      );
    }
    if (object.cookieName != null) {
      yield r'cookieName';
      yield serializers.serialize(
        object.cookieName,
        specifiedType: const FullType(String),
      );
    }
    if (object.sendResultOnPageNext != null) {
      yield r'sendResultOnPageNext';
      yield serializers.serialize(
        object.sendResultOnPageNext,
        specifiedType: const FullType(bool),
      );
    }
    if (object.showNavigationButtons != null) {
      yield r'showNavigationButtons';
      yield serializers.serialize(
        object.showNavigationButtons,
        specifiedType: const FullType(SurveyShowNavigationButtons),
      );
    }
    if (object.showPrevButton != null) {
      yield r'showPrevButton';
      yield serializers.serialize(
        object.showPrevButton,
        specifiedType: const FullType(bool),
      );
    }
    if (object.showTitle != null) {
      yield r'showTitle';
      yield serializers.serialize(
        object.showTitle,
        specifiedType: const FullType(bool),
      );
    }
    if (object.showPageTitles != null) {
      yield r'showPageTitles';
      yield serializers.serialize(
        object.showPageTitles,
        specifiedType: const FullType(bool),
      );
    }
    if (object.showCompletedPage != null) {
      yield r'showCompletedPage';
      yield serializers.serialize(
        object.showCompletedPage,
        specifiedType: const FullType(bool),
      );
    }
    if (object.navigateToUrl != null) {
      yield r'navigateToUrl';
      yield serializers.serialize(
        object.navigateToUrl,
        specifiedType: const FullType(String),
      );
    }
    if (object.navigateToUrlOnCondition != null) {
      yield r'navigateToUrlOnCondition';
      yield serializers.serialize(
        object.navigateToUrlOnCondition,
        specifiedType: const FullType(BuiltList, [FullType(Urlconditionitem)]),
      );
    }
    if (object.questionsOrder != null) {
      yield r'questionsOrder';
      yield serializers.serialize(
        object.questionsOrder,
        specifiedType: const FullType(SurveyQuestionsOrder),
      );
    }
    if (object.showPageNumbers != null) {
      yield r'showPageNumbers';
      yield serializers.serialize(
        object.showPageNumbers,
        specifiedType: const FullType(bool),
      );
    }
    if (object.showQuestionNumbers != null) {
      yield r'showQuestionNumbers';
      yield serializers.serialize(
        object.showQuestionNumbers,
        specifiedType: const FullType(SurveyShowQuestionNumbers),
      );
    }
    if (object.questionTitleLocation != null) {
      yield r'questionTitleLocation';
      yield serializers.serialize(
        object.questionTitleLocation,
        specifiedType: const FullType(SurveyQuestionTitleLocation),
      );
    }
    if (object.questionDescriptionLocation != null) {
      yield r'questionDescriptionLocation';
      yield serializers.serialize(
        object.questionDescriptionLocation,
        specifiedType: const FullType(SurveyQuestionDescriptionLocation),
      );
    }
    if (object.questionErrorLocation != null) {
      yield r'questionErrorLocation';
      yield serializers.serialize(
        object.questionErrorLocation,
        specifiedType: const FullType(SurveyQuestionErrorLocation),
      );
    }
    if (object.showProgressBar != null) {
      yield r'showProgressBar';
      yield serializers.serialize(
        object.showProgressBar,
        specifiedType: const FullType(SurveyShowProgressBar),
      );
    }
    if (object.progressBarType != null) {
      yield r'progressBarType';
      yield serializers.serialize(
        object.progressBarType,
        specifiedType: const FullType(SurveyProgressBarType),
      );
    }
    if (object.showTOC != null) {
      yield r'showTOC';
      yield serializers.serialize(
        object.showTOC,
        specifiedType: const FullType(String),
      );
    }
    if (object.tocLocation != null) {
      yield r'tocLocation';
      yield serializers.serialize(
        object.tocLocation,
        specifiedType: const FullType(SurveyTocLocation),
      );
    }
    if (object.mode != null) {
      yield r'mode';
      yield serializers.serialize(
        object.mode,
        specifiedType: const FullType(SurveyMode),
      );
    }
    if (object.storeOthersAsComment != null) {
      yield r'storeOthersAsComment';
      yield serializers.serialize(
        object.storeOthersAsComment,
        specifiedType: const FullType(bool),
      );
    }
    if (object.maxTextLength != null) {
      yield r'maxTextLength';
      yield serializers.serialize(
        object.maxTextLength,
        specifiedType: const FullType(num),
      );
    }
    if (object.maxOthersLength != null) {
      yield r'maxOthersLength';
      yield serializers.serialize(
        object.maxOthersLength,
        specifiedType: const FullType(num),
      );
    }
    if (object.goNextPageAutomatic != null) {
      yield r'goNextPageAutomatic';
      yield serializers.serialize(
        object.goNextPageAutomatic,
        specifiedType: const FullType(bool),
      );
    }
    if (object.clearInvisibleValues != null) {
      yield r'clearInvisibleValues';
      yield serializers.serialize(
        object.clearInvisibleValues,
        specifiedType: const FullType(SurveyClearInvisibleValues),
      );
    }
    if (object.checkErrorsMode != null) {
      yield r'checkErrorsMode';
      yield serializers.serialize(
        object.checkErrorsMode,
        specifiedType: const FullType(SurveyCheckErrorsMode),
      );
    }
    if (object.textUpdateMode != null) {
      yield r'textUpdateMode';
      yield serializers.serialize(
        object.textUpdateMode,
        specifiedType: const FullType(SurveyTextUpdateMode),
      );
    }
    if (object.autoGrowComment != null) {
      yield r'autoGrowComment';
      yield serializers.serialize(
        object.autoGrowComment,
        specifiedType: const FullType(bool),
      );
    }
    if (object.startSurveyText != null) {
      yield r'startSurveyText';
      yield serializers.serialize(
        object.startSurveyText,
        specifiedType: const FullType(String),
      );
    }
    if (object.pagePrevText != null) {
      yield r'pagePrevText';
      yield serializers.serialize(
        object.pagePrevText,
        specifiedType: const FullType(String),
      );
    }
    if (object.pageNextText != null) {
      yield r'pageNextText';
      yield serializers.serialize(
        object.pageNextText,
        specifiedType: const FullType(String),
      );
    }
    if (object.completeText != null) {
      yield r'completeText';
      yield serializers.serialize(
        object.completeText,
        specifiedType: const FullType(String),
      );
    }
    if (object.previewText != null) {
      yield r'previewText';
      yield serializers.serialize(
        object.previewText,
        specifiedType: const FullType(String),
      );
    }
    if (object.editText != null) {
      yield r'editText';
      yield serializers.serialize(
        object.editText,
        specifiedType: const FullType(String),
      );
    }
    if (object.requiredText != null) {
      yield r'requiredText';
      yield serializers.serialize(
        object.requiredText,
        specifiedType: const FullType(String),
      );
    }
    if (object.questionStartIndex != null) {
      yield r'questionStartIndex';
      yield serializers.serialize(
        object.questionStartIndex,
        specifiedType: const FullType(String),
      );
    }
    if (object.questionTitlePattern != null) {
      yield r'questionTitlePattern';
      yield serializers.serialize(
        object.questionTitlePattern,
        specifiedType: const FullType(String),
      );
    }
    if (object.questionTitleTemplate != null) {
      yield r'questionTitleTemplate';
      yield serializers.serialize(
        object.questionTitleTemplate,
        specifiedType: const FullType(String),
      );
    }
    if (object.firstPageIsStarted != null) {
      yield r'firstPageIsStarted';
      yield serializers.serialize(
        object.firstPageIsStarted,
        specifiedType: const FullType(bool),
      );
    }
    if (object.isSinglePage != null) {
      yield r'isSinglePage';
      yield serializers.serialize(
        object.isSinglePage,
        specifiedType: const FullType(bool),
      );
    }
    if (object.questionsOnPageMode != null) {
      yield r'questionsOnPageMode';
      yield serializers.serialize(
        object.questionsOnPageMode,
        specifiedType: const FullType(SurveyQuestionsOnPageMode),
      );
    }
    if (object.showPreviewBeforeComplete != null) {
      yield r'showPreviewBeforeComplete';
      yield serializers.serialize(
        object.showPreviewBeforeComplete,
        specifiedType: const FullType(SurveyShowPreviewBeforeComplete),
      );
    }
    if (object.maxTimeToFinish != null) {
      yield r'maxTimeToFinish';
      yield serializers.serialize(
        object.maxTimeToFinish,
        specifiedType: const FullType(num),
      );
    }
    if (object.maxTimeToFinishPage != null) {
      yield r'maxTimeToFinishPage';
      yield serializers.serialize(
        object.maxTimeToFinishPage,
        specifiedType: const FullType(num),
      );
    }
    if (object.showTimerPanel != null) {
      yield r'showTimerPanel';
      yield serializers.serialize(
        object.showTimerPanel,
        specifiedType: const FullType(SurveyShowTimerPanel),
      );
    }
    if (object.showTimerPanelMode != null) {
      yield r'showTimerPanelMode';
      yield serializers.serialize(
        object.showTimerPanelMode,
        specifiedType: const FullType(SurveyShowTimerPanelMode),
      );
    }
    if (object.widthMode != null) {
      yield r'widthMode';
      yield serializers.serialize(
        object.widthMode,
        specifiedType: const FullType(SurveyWidthMode),
      );
    }
    if (object.width != null) {
      yield r'width';
      yield serializers.serialize(
        object.width,
        specifiedType: const FullType(SurveyLogoWidth),
      );
    }
    if (object.backgroundImage != null) {
      yield r'backgroundImage';
      yield serializers.serialize(
        object.backgroundImage,
        specifiedType: const FullType(String),
      );
    }
    if (object.backgroundImageFit != null) {
      yield r'backgroundImageFit';
      yield serializers.serialize(
        object.backgroundImageFit,
        specifiedType: const FullType(SurveyBackgroundImageFit),
      );
    }
    if (object.backgroundOpacity != null) {
      yield r'backgroundOpacity';
      yield serializers.serialize(
        object.backgroundOpacity,
        specifiedType: const FullType(num),
      );
    }
    if (object.showBrandInfo != null) {
      yield r'showBrandInfo';
      yield serializers.serialize(
        object.showBrandInfo,
        specifiedType: const FullType(bool),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    Survey object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required SurveyBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'locale':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(SurveyLocale),
          ) as SurveyLocale;
          result.locale = valueDes;
          break;
        case r'title':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.title = valueDes;
          break;
        case r'description':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.description = valueDes;
          break;
        case r'logo':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.logo = valueDes;
          break;
        case r'logoWidth':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(SurveyLogoWidth),
          ) as SurveyLogoWidth;
          result.logoWidth.replace(valueDes);
          break;
        case r'logoHeight':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(SurveyLogoWidth),
          ) as SurveyLogoWidth;
          result.logoHeight.replace(valueDes);
          break;
        case r'logoFit':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(SurveyLogoFit),
          ) as SurveyLogoFit;
          result.logoFit = valueDes;
          break;
        case r'logoPosition':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(SurveyLogoPosition),
          ) as SurveyLogoPosition;
          result.logoPosition = valueDes;
          break;
        case r'focusFirstQuestionAutomatic':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool;
          result.focusFirstQuestionAutomatic = valueDes;
          break;
        case r'focusOnFirstError':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool;
          result.focusOnFirstError = valueDes;
          break;
        case r'completedHtml':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.completedHtml = valueDes;
          break;
        case r'completedBeforeHtml':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.completedBeforeHtml = valueDes;
          break;
        case r'completedHtmlOnCondition':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(BuiltList, [FullType(Htmlconditionitem)]),
          ) as BuiltList<Htmlconditionitem>;
          result.completedHtmlOnCondition.replace(valueDes);
          break;
        case r'loadingHtml':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.loadingHtml = valueDes;
          break;
        case r'pages':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(BuiltList, [FullType(Page)]),
          ) as BuiltList<Page>;
          result.pages.replace(valueDes);
          break;
        case r'questions':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(BuiltList, [FullType(SurveyQuestionsInner)]),
          ) as BuiltList<SurveyQuestionsInner>;
          result.questions.replace(valueDes);
          break;
        case r'triggers':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(BuiltList, [FullType(SurveyTriggersInner)]),
          ) as BuiltList<SurveyTriggersInner>;
          result.triggers.replace(valueDes);
          break;
        case r'calculatedValues':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(BuiltList, [FullType(Calculatedvalue)]),
          ) as BuiltList<Calculatedvalue>;
          result.calculatedValues.replace(valueDes);
          break;
        case r'surveyId':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.surveyId = valueDes;
          break;
        case r'surveyPostId':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.surveyPostId = valueDes;
          break;
        case r'surveyShowDataSaving':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool;
          result.surveyShowDataSaving = valueDes;
          break;
        case r'cookieName':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.cookieName = valueDes;
          break;
        case r'sendResultOnPageNext':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool;
          result.sendResultOnPageNext = valueDes;
          break;
        case r'showNavigationButtons':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(SurveyShowNavigationButtons),
          ) as SurveyShowNavigationButtons;
          result.showNavigationButtons = valueDes;
          break;
        case r'showPrevButton':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool;
          result.showPrevButton = valueDes;
          break;
        case r'showTitle':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool;
          result.showTitle = valueDes;
          break;
        case r'showPageTitles':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool;
          result.showPageTitles = valueDes;
          break;
        case r'showCompletedPage':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool;
          result.showCompletedPage = valueDes;
          break;
        case r'navigateToUrl':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.navigateToUrl = valueDes;
          break;
        case r'navigateToUrlOnCondition':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(BuiltList, [FullType(Urlconditionitem)]),
          ) as BuiltList<Urlconditionitem>;
          result.navigateToUrlOnCondition.replace(valueDes);
          break;
        case r'questionsOrder':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(SurveyQuestionsOrder),
          ) as SurveyQuestionsOrder;
          result.questionsOrder = valueDes;
          break;
        case r'showPageNumbers':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool;
          result.showPageNumbers = valueDes;
          break;
        case r'showQuestionNumbers':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(SurveyShowQuestionNumbers),
          ) as SurveyShowQuestionNumbers;
          result.showQuestionNumbers.replace(valueDes);
          break;
        case r'questionTitleLocation':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(SurveyQuestionTitleLocation),
          ) as SurveyQuestionTitleLocation;
          result.questionTitleLocation = valueDes;
          break;
        case r'questionDescriptionLocation':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(SurveyQuestionDescriptionLocation),
          ) as SurveyQuestionDescriptionLocation;
          result.questionDescriptionLocation = valueDes;
          break;
        case r'questionErrorLocation':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(SurveyQuestionErrorLocation),
          ) as SurveyQuestionErrorLocation;
          result.questionErrorLocation = valueDes;
          break;
        case r'showProgressBar':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(SurveyShowProgressBar),
          ) as SurveyShowProgressBar;
          result.showProgressBar = valueDes;
          break;
        case r'progressBarType':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(SurveyProgressBarType),
          ) as SurveyProgressBarType;
          result.progressBarType = valueDes;
          break;
        case r'showTOC':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.showTOC = valueDes;
          break;
        case r'tocLocation':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(SurveyTocLocation),
          ) as SurveyTocLocation;
          result.tocLocation = valueDes;
          break;
        case r'mode':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(SurveyMode),
          ) as SurveyMode;
          result.mode = valueDes;
          break;
        case r'storeOthersAsComment':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool;
          result.storeOthersAsComment = valueDes;
          break;
        case r'maxTextLength':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(num),
          ) as num;
          result.maxTextLength = valueDes;
          break;
        case r'maxOthersLength':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(num),
          ) as num;
          result.maxOthersLength = valueDes;
          break;
        case r'goNextPageAutomatic':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool;
          result.goNextPageAutomatic = valueDes;
          break;
        case r'clearInvisibleValues':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(SurveyClearInvisibleValues),
          ) as SurveyClearInvisibleValues;
          result.clearInvisibleValues = valueDes;
          break;
        case r'checkErrorsMode':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(SurveyCheckErrorsMode),
          ) as SurveyCheckErrorsMode;
          result.checkErrorsMode = valueDes;
          break;
        case r'textUpdateMode':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(SurveyTextUpdateMode),
          ) as SurveyTextUpdateMode;
          result.textUpdateMode = valueDes;
          break;
        case r'autoGrowComment':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool;
          result.autoGrowComment = valueDes;
          break;
        case r'startSurveyText':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.startSurveyText = valueDes;
          break;
        case r'pagePrevText':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.pagePrevText = valueDes;
          break;
        case r'pageNextText':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.pageNextText = valueDes;
          break;
        case r'completeText':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.completeText = valueDes;
          break;
        case r'previewText':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.previewText = valueDes;
          break;
        case r'editText':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.editText = valueDes;
          break;
        case r'requiredText':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.requiredText = valueDes;
          break;
        case r'questionStartIndex':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.questionStartIndex = valueDes;
          break;
        case r'questionTitlePattern':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.questionTitlePattern = valueDes;
          break;
        case r'questionTitleTemplate':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.questionTitleTemplate = valueDes;
          break;
        case r'firstPageIsStarted':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool;
          result.firstPageIsStarted = valueDes;
          break;
        case r'isSinglePage':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool;
          result.isSinglePage = valueDes;
          break;
        case r'questionsOnPageMode':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(SurveyQuestionsOnPageMode),
          ) as SurveyQuestionsOnPageMode;
          result.questionsOnPageMode = valueDes;
          break;
        case r'showPreviewBeforeComplete':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(SurveyShowPreviewBeforeComplete),
          ) as SurveyShowPreviewBeforeComplete;
          result.showPreviewBeforeComplete = valueDes;
          break;
        case r'maxTimeToFinish':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(num),
          ) as num;
          result.maxTimeToFinish = valueDes;
          break;
        case r'maxTimeToFinishPage':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(num),
          ) as num;
          result.maxTimeToFinishPage = valueDes;
          break;
        case r'showTimerPanel':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(SurveyShowTimerPanel),
          ) as SurveyShowTimerPanel;
          result.showTimerPanel = valueDes;
          break;
        case r'showTimerPanelMode':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(SurveyShowTimerPanelMode),
          ) as SurveyShowTimerPanelMode;
          result.showTimerPanelMode = valueDes;
          break;
        case r'widthMode':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(SurveyWidthMode),
          ) as SurveyWidthMode;
          result.widthMode = valueDes;
          break;
        case r'width':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(SurveyLogoWidth),
          ) as SurveyLogoWidth;
          result.width.replace(valueDes);
          break;
        case r'backgroundImage':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.backgroundImage = valueDes;
          break;
        case r'backgroundImageFit':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(SurveyBackgroundImageFit),
          ) as SurveyBackgroundImageFit;
          result.backgroundImageFit = valueDes;
          break;
        case r'backgroundOpacity':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(num),
          ) as num;
          result.backgroundOpacity = valueDes;
          break;
        case r'showBrandInfo':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool;
          result.showBrandInfo = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  Survey deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = SurveyBuilder();
    final serializedList = (serialized as Iterable<Object?>).toList();
    final unhandled = <Object?>[];
    _deserializeProperties(
      serializers,
      serialized,
      specifiedType: specifiedType,
      serializedList: serializedList,
      unhandled: unhandled,
      result: result,
    );
    return result.build();
  }
}

