//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:flutter_survey_js_model/src/model/panel_indent.dart';
import 'package:built_collection/built_collection.dart';
import 'package:flutter_survey_js_model/src/model/string_or_num.dart';
import 'package:flutter_survey_js_model/src/model/panel_inner_indent.dart';
import 'package:flutter_survey_js_model/src/model/panel_show_question_numbers.dart';
import 'package:flutter_survey_js_model/src/model/panel_state.dart';
import 'package:flutter_survey_js_model/src/model/panelbase_question_title_location.dart';
import 'package:flutter_survey_js_model/src/model/survey_title.dart';
import 'package:flutter_survey_js_model/src/model/panelbase.dart';
import 'package:flutter_survey_js_model/src/model/survey_questions_inner.dart';
import 'package:flutter_survey_js_model/src/model/panelbase_questions_order.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'panel.g.dart';

/// Panel
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
/// * [state] 
/// * [isRequired] 
/// * [requiredErrorText] 
/// * [startWithNewLine] 
/// * [width] 
/// * [minWidth] 
/// * [maxWidth] 
/// * [innerIndent] 
/// * [indent] 
/// * [page] 
/// * [showNumber] 
/// * [showQuestionNumbers] 
/// * [questionStartIndex] 
/// * [allowAdaptiveActions] 
@BuiltValue()
abstract class Panel implements Panelbase, Built<Panel, PanelBuilder> {
  @BuiltValueField(wireName: r'isRequired')
  bool? get isRequired;

  @BuiltValueField(wireName: r'indent')
  PanelIndent? get indent;
  // enum indentEnum {  0,  1,  2,  3,  };

  @BuiltValueField(wireName: r'minWidth')
  StringOrNum? get minWidth;

  @BuiltValueField(wireName: r'innerIndent')
  PanelInnerIndent? get innerIndent;
  // enum innerIndentEnum {  0,  1,  2,  3,  };

  @BuiltValueField(wireName: r'showQuestionNumbers')
  PanelShowQuestionNumbers? get showQuestionNumbers;
  // enum showQuestionNumbersEnum {  default,  onpanel,  off,  };

  @BuiltValueField(wireName: r'requiredErrorText')
  SurveyTitle? get requiredErrorText;

  @BuiltValueField(wireName: r'startWithNewLine')
  bool? get startWithNewLine;

  @BuiltValueField(wireName: r'showNumber')
  bool? get showNumber;

  @BuiltValueField(wireName: r'questionStartIndex')
  String? get questionStartIndex;

  @BuiltValueField(wireName: r'width')
  StringOrNum? get width;

  @BuiltValueField(wireName: r'state')
  PanelState? get state;
  // enum stateEnum {  default,  collapsed,  expanded,  };

  @BuiltValueField(wireName: r'page')
  String? get page;

  @BuiltValueField(wireName: r'allowAdaptiveActions')
  bool? get allowAdaptiveActions;

  @BuiltValueField(wireName: r'maxWidth')
  StringOrNum? get maxWidth;

  Panel._();

  factory Panel([void updates(PanelBuilder b)]) = _$Panel;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(PanelBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<Panel> get serializer => _$PanelSerializer();
}

class _$PanelSerializer implements PrimitiveSerializer<Panel> {
  @override
  final Iterable<Type> types = const [Panel, _$Panel];

  @override
  final String wireName = r'Panel';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    Panel object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.indent != null) {
      yield r'indent';
      yield serializers.serialize(
        object.indent,
        specifiedType: const FullType(PanelIndent),
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
    if (object.innerIndent != null) {
      yield r'innerIndent';
      yield serializers.serialize(
        object.innerIndent,
        specifiedType: const FullType(PanelInnerIndent),
      );
    }
    if (object.questionsOrder != null) {
      yield r'questionsOrder';
      yield serializers.serialize(
        object.questionsOrder,
        specifiedType: const FullType(PanelbaseQuestionsOrder),
      );
    }
    if (object.startWithNewLine != null) {
      yield r'startWithNewLine';
      yield serializers.serialize(
        object.startWithNewLine,
        specifiedType: const FullType(bool),
      );
    }
    if (object.showNumber != null) {
      yield r'showNumber';
      yield serializers.serialize(
        object.showNumber,
        specifiedType: const FullType(bool),
      );
    }
    if (object.questionStartIndex != null) {
      yield r'questionStartIndex';
      yield serializers.serialize(
        object.questionStartIndex,
        specifiedType: const FullType(String),
      );
    }
    if (object.state != null) {
      yield r'state';
      yield serializers.serialize(
        object.state,
        specifiedType: const FullType(PanelState),
      );
    }
    if (object.allowAdaptiveActions != null) {
      yield r'allowAdaptiveActions';
      yield serializers.serialize(
        object.allowAdaptiveActions,
        specifiedType: const FullType(bool),
      );
    }
    if (object.maxWidth != null) {
      yield r'maxWidth';
      yield serializers.serialize(
        object.maxWidth,
        specifiedType: const FullType(StringOrNum),
      );
    }
    if (object.isRequired != null) {
      yield r'isRequired';
      yield serializers.serialize(
        object.isRequired,
        specifiedType: const FullType(bool),
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
    if (object.requiredIf != null) {
      yield r'requiredIf';
      yield serializers.serialize(
        object.requiredIf,
        specifiedType: const FullType(String),
      );
    }
    if (object.minWidth != null) {
      yield r'minWidth';
      yield serializers.serialize(
        object.minWidth,
        specifiedType: const FullType(StringOrNum),
      );
    }
    if (object.readOnly != null) {
      yield r'readOnly';
      yield serializers.serialize(
        object.readOnly,
        specifiedType: const FullType(bool),
      );
    }
    if (object.showQuestionNumbers != null) {
      yield r'showQuestionNumbers';
      yield serializers.serialize(
        object.showQuestionNumbers,
        specifiedType: const FullType(PanelShowQuestionNumbers),
      );
    }
    if (object.requiredErrorText != null) {
      yield r'requiredErrorText';
      yield serializers.serialize(
        object.requiredErrorText,
        specifiedType: const FullType(SurveyTitle),
      );
    }
    if (object.elements != null) {
      yield r'elements';
      yield serializers.serialize(
        object.elements,
        specifiedType: const FullType(BuiltList, [FullType(SurveyQuestionsInner)]),
      );
    }
    if (object.width != null) {
      yield r'width';
      yield serializers.serialize(
        object.width,
        specifiedType: const FullType(StringOrNum),
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
    if (object.page != null) {
      yield r'page';
      yield serializers.serialize(
        object.page,
        specifiedType: const FullType(String),
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
    Panel object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required PanelBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'indent':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(PanelIndent),
          ) as PanelIndent;
          result.indent = valueDes;
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
        case r'innerIndent':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(PanelInnerIndent),
          ) as PanelInnerIndent;
          result.innerIndent = valueDes;
          break;
        case r'questionsOrder':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(PanelbaseQuestionsOrder),
          ) as PanelbaseQuestionsOrder;
          result.questionsOrder = valueDes;
          break;
        case r'startWithNewLine':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool;
          result.startWithNewLine = valueDes;
          break;
        case r'showNumber':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool;
          result.showNumber = valueDes;
          break;
        case r'questionStartIndex':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.questionStartIndex = valueDes;
          break;
        case r'state':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(PanelState),
          ) as PanelState;
          result.state = valueDes;
          break;
        case r'allowAdaptiveActions':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool;
          result.allowAdaptiveActions = valueDes;
          break;
        case r'maxWidth':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(StringOrNum),
          ) as StringOrNum;
          result.maxWidth.replace(valueDes);
          break;
        case r'isRequired':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool;
          result.isRequired = valueDes;
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
        case r'requiredIf':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.requiredIf = valueDes;
          break;
        case r'minWidth':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(StringOrNum),
          ) as StringOrNum;
          result.minWidth.replace(valueDes);
          break;
        case r'readOnly':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool;
          result.readOnly = valueDes;
          break;
        case r'showQuestionNumbers':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(PanelShowQuestionNumbers),
          ) as PanelShowQuestionNumbers;
          result.showQuestionNumbers = valueDes;
          break;
        case r'requiredErrorText':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(SurveyTitle),
          ) as SurveyTitle;
          result.requiredErrorText.replace(valueDes);
          break;
        case r'elements':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(BuiltList, [FullType(SurveyQuestionsInner)]),
          ) as BuiltList<SurveyQuestionsInner>;
          result.elements.replace(valueDes);
          break;
        case r'width':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(StringOrNum),
          ) as StringOrNum;
          result.width.replace(valueDes);
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
        case r'page':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.page = valueDes;
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
  Panel deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = PanelBuilder();
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

