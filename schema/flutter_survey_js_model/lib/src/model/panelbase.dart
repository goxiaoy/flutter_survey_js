//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:flutter_survey_js_model/src/model/panelbase_question_title_location.dart';
import 'package:flutter_survey_js_model/src/model/survey_title.dart';
import 'package:flutter_survey_js_model/src/model/survey_questions_inner.dart';
import 'package:flutter_survey_js_model/src/model/elementbase.dart';
import 'package:flutter_survey_js_model/src/model/panelbase_questions_order.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'panelbase.g.dart';

/// Panelbase
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
@BuiltValue(instantiable: false)
abstract class Panelbase implements Elementbase {
  @BuiltValueField(wireName: r'enableIf')
  String? get enableIf;

  @BuiltValueField(wireName: r'visible')
  bool? get visible;

  @BuiltValueField(wireName: r'elements')
  BuiltList<SurveyQuestionsInner>? get elements;

  @BuiltValueField(wireName: r'visibleIf')
  String? get visibleIf;

  @BuiltValueField(wireName: r'requiredIf')
  String? get requiredIf;

  @BuiltValueField(wireName: r'questions')
  BuiltList<SurveyQuestionsInner>? get questions;

  @BuiltValueField(wireName: r'description')
  SurveyTitle? get description;

  @BuiltValueField(wireName: r'readOnly')
  bool? get readOnly;

  @BuiltValueField(wireName: r'title')
  SurveyTitle? get title;

  @BuiltValueField(wireName: r'questionTitleLocation')
  PanelbaseQuestionTitleLocation? get questionTitleLocation;
  // enum questionTitleLocationEnum {  default,  top,  bottom,  left,  hidden,  };

  @BuiltValueField(wireName: r'questionsOrder')
  PanelbaseQuestionsOrder? get questionsOrder;
  // enum questionsOrderEnum {  default,  initial,  random,  };

  @BuiltValueSerializer(custom: true)
  static Serializer<Panelbase> get serializer => _$PanelbaseSerializer();
}

class _$PanelbaseSerializer implements PrimitiveSerializer<Panelbase> {
  @override
  final Iterable<Type> types = const [Panelbase];

  @override
  final String wireName = r'Panelbase';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    Panelbase object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
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
    if (object.title != null) {
      yield r'title';
      yield serializers.serialize(
        object.title,
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
    if (object.visibleIf != null) {
      yield r'visibleIf';
      yield serializers.serialize(
        object.visibleIf,
        specifiedType: const FullType(String),
      );
    }
    if (object.name != null) {
      yield r'name';
      yield serializers.serialize(
        object.name,
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
    Panelbase object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  @override
  Panelbase deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return serializers.deserialize(serialized, specifiedType: FullType($Panelbase)) as $Panelbase;
  }
}

/// a concrete implementation of [Panelbase], since [Panelbase] is not instantiable
@BuiltValue(instantiable: true)
abstract class $Panelbase implements Panelbase, Built<$Panelbase, $PanelbaseBuilder> {
  $Panelbase._();

  factory $Panelbase([void Function($PanelbaseBuilder)? updates]) = _$$Panelbase;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults($PanelbaseBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<$Panelbase> get serializer => _$$PanelbaseSerializer();
}

class _$$PanelbaseSerializer implements PrimitiveSerializer<$Panelbase> {
  @override
  final Iterable<Type> types = const [$Panelbase, _$$Panelbase];

  @override
  final String wireName = r'$Panelbase';

  @override
  Object serialize(
    Serializers serializers,
    $Panelbase object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return serializers.serialize(object, specifiedType: FullType(Panelbase))!;
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required PanelbaseBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
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
        case r'title':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(SurveyTitle),
          ) as SurveyTitle;
          result.title.replace(valueDes);
          break;
        case r'type':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.type = valueDes;
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
        case r'visibleIf':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.visibleIf = valueDes;
          break;
        case r'name':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.name = valueDes;
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
  $Panelbase deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = $PanelbaseBuilder();
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

