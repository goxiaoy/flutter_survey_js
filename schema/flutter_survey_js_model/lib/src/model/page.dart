//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:flutter_survey_js_model/src/model/panelbase_question_title_location.dart';
import 'package:flutter_survey_js_model/src/model/survey_title.dart';
import 'package:flutter_survey_js_model/src/model/panelbase.dart';
import 'package:flutter_survey_js_model/src/model/survey_questions_inner.dart';
import 'package:flutter_survey_js_model/src/model/page_navigation_buttons_visibility.dart';
import 'package:flutter_survey_js_model/src/model/panelbase_questions_order.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'page.g.dart';

/// Page
///
/// Properties:
/// * [type] 
/// * [name] 
/// * [elements] 
/// * [visible] 
/// * [visibleIf] 
/// * [enableIf] 
/// * [requiredIf] 
/// * [readOnly] 
/// * [questionTitleLocation] 
/// * [title] 
/// * [description] 
/// * [questionsOrder] 
/// * [questions] 
/// * [navigationButtonsVisibility] 
/// * [maxTimeToFinish] 
/// * [navigationTitle] 
/// * [navigationDescription] 
@BuiltValue()
abstract class Page implements Panelbase, Built<Page, PageBuilder> {
  @BuiltValueField(wireName: r'navigationButtonsVisibility')
  PageNavigationButtonsVisibility? get navigationButtonsVisibility;
  // enum navigationButtonsVisibilityEnum {  inherit,  show,  hide,  };

  @BuiltValueField(wireName: r'navigationTitle')
  SurveyTitle? get navigationTitle;

  @BuiltValueField(wireName: r'navigationDescription')
  SurveyTitle? get navigationDescription;

  @BuiltValueField(wireName: r'maxTimeToFinish')
  num? get maxTimeToFinish;

  Page._();

  factory Page([void updates(PageBuilder b)]) = _$Page;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(PageBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<Page> get serializer => _$PageSerializer();
}

class _$PageSerializer implements PrimitiveSerializer<Page> {
  @override
  final Iterable<Type> types = const [Page, _$Page];

  @override
  final String wireName = r'Page';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    Page object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.navigationButtonsVisibility != null) {
      yield r'navigationButtonsVisibility';
      yield serializers.serialize(
        object.navigationButtonsVisibility,
        specifiedType: const FullType(PageNavigationButtonsVisibility),
      );
    }
    if (object.enableIf != null) {
      yield r'enableIf';
      yield serializers.serialize(
        object.enableIf,
        specifiedType: const FullType(String),
      );
    }
    if (object.visible != null) {
      yield r'visible';
      yield serializers.serialize(
        object.visible,
        specifiedType: const FullType(bool),
      );
    }
    if (object.navigationTitle != null) {
      yield r'navigationTitle';
      yield serializers.serialize(
        object.navigationTitle,
        specifiedType: const FullType(SurveyTitle),
      );
    }
    if (object.navigationDescription != null) {
      yield r'navigationDescription';
      yield serializers.serialize(
        object.navigationDescription,
        specifiedType: const FullType(SurveyTitle),
      );
    }
    if (object.requiredIf != null) {
      yield r'requiredIf';
      yield serializers.serialize(
        object.requiredIf,
        specifiedType: const FullType(String),
      );
    }
    if (object.questions != null) {
      yield r'questions';
      yield serializers.serialize(
        object.questions,
        specifiedType: const FullType(BuiltList, [FullType(SurveyQuestionsInner)]),
      );
    }
    if (object.description != null) {
      yield r'description';
      yield serializers.serialize(
        object.description,
        specifiedType: const FullType(SurveyTitle),
      );
    }
    if (object.readOnly != null) {
      yield r'readOnly';
      yield serializers.serialize(
        object.readOnly,
        specifiedType: const FullType(bool),
      );
    }
    if (object.type != null) {
      yield r'type';
      yield serializers.serialize(
        object.type,
        specifiedType: const FullType(String),
      );
    }
    if (object.title != null) {
      yield r'title';
      yield serializers.serialize(
        object.title,
        specifiedType: const FullType(SurveyTitle),
      );
    }
    if (object.questionsOrder != null) {
      yield r'questionsOrder';
      yield serializers.serialize(
        object.questionsOrder,
        specifiedType: const FullType(PanelbaseQuestionsOrder),
      );
    }
    if (object.elements != null) {
      yield r'elements';
      yield serializers.serialize(
        object.elements,
        specifiedType: const FullType(BuiltList, [FullType(SurveyQuestionsInner)]),
      );
    }
    if (object.name != null) {
      yield r'name';
      yield serializers.serialize(
        object.name,
        specifiedType: const FullType(String),
      );
    }
    if (object.visibleIf != null) {
      yield r'visibleIf';
      yield serializers.serialize(
        object.visibleIf,
        specifiedType: const FullType(String),
      );
    }
    if (object.maxTimeToFinish != null) {
      yield r'maxTimeToFinish';
      yield serializers.serialize(
        object.maxTimeToFinish,
        specifiedType: const FullType(num),
      );
    }
    if (object.questionTitleLocation != null) {
      yield r'questionTitleLocation';
      yield serializers.serialize(
        object.questionTitleLocation,
        specifiedType: const FullType(PanelbaseQuestionTitleLocation),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    Page object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required PageBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'navigationButtonsVisibility':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(PageNavigationButtonsVisibility),
          ) as PageNavigationButtonsVisibility;
          result.navigationButtonsVisibility = valueDes;
          break;
        case r'enableIf':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.enableIf = valueDes;
          break;
        case r'visible':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool;
          result.visible = valueDes;
          break;
        case r'navigationTitle':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(SurveyTitle),
          ) as SurveyTitle;
          result.navigationTitle.replace(valueDes);
          break;
        case r'navigationDescription':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(SurveyTitle),
          ) as SurveyTitle;
          result.navigationDescription.replace(valueDes);
          break;
        case r'requiredIf':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.requiredIf = valueDes;
          break;
        case r'questions':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(BuiltList, [FullType(SurveyQuestionsInner)]),
          ) as BuiltList<SurveyQuestionsInner>;
          result.questions.replace(valueDes);
          break;
        case r'description':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(SurveyTitle),
          ) as SurveyTitle;
          result.description.replace(valueDes);
          break;
        case r'readOnly':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool;
          result.readOnly = valueDes;
          break;
        case r'type':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.type = valueDes;
          break;
        case r'title':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(SurveyTitle),
          ) as SurveyTitle;
          result.title.replace(valueDes);
          break;
        case r'questionsOrder':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(PanelbaseQuestionsOrder),
          ) as PanelbaseQuestionsOrder;
          result.questionsOrder = valueDes;
          break;
        case r'elements':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(BuiltList, [FullType(SurveyQuestionsInner)]),
          ) as BuiltList<SurveyQuestionsInner>;
          result.elements.replace(valueDes);
          break;
        case r'name':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.name = valueDes;
          break;
        case r'visibleIf':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.visibleIf = valueDes;
          break;
        case r'maxTimeToFinish':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(num),
          ) as num;
          result.maxTimeToFinish = valueDes;
          break;
        case r'questionTitleLocation':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(PanelbaseQuestionTitleLocation),
          ) as PanelbaseQuestionTitleLocation;
          result.questionTitleLocation = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  Page deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = PageBuilder();
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

