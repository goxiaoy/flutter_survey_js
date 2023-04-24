//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:flutter_survey_js_model/src/model/panelbase_question_title_location.dart';
import 'package:flutter_survey_js_model/src/model/element_base.dart';
import 'package:flutter_survey_js_model/src/model/panelbase_questions_order.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'panelbase_all_of.g.dart';

/// PanelbaseAllOf
///
/// Properties:
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
@BuiltValue(instantiable: false)
abstract class PanelbaseAllOf  {
  @BuiltValueField(wireName: r'name')
  String? get name;

  @BuiltValueField(wireName: r'elements')
  BuiltList<ElementBase>? get elements;

  @BuiltValueField(wireName: r'visible')
  String? get visible;

  @BuiltValueField(wireName: r'visibleIf')
  String? get visibleIf;

  @BuiltValueField(wireName: r'enableIf')
  String? get enableIf;

  @BuiltValueField(wireName: r'requiredIf')
  String? get requiredIf;

  @BuiltValueField(wireName: r'readOnly')
  bool? get readOnly;

  @BuiltValueField(wireName: r'questionTitleLocation')
  PanelbaseQuestionTitleLocation? get questionTitleLocation;
  // enum questionTitleLocationEnum {  default,  top,  bottom,  left,  hidden,  };

  @BuiltValueField(wireName: r'title')
  String? get title;

  @BuiltValueField(wireName: r'description')
  String? get description;

  @BuiltValueField(wireName: r'questionsOrder')
  PanelbaseQuestionsOrder? get questionsOrder;
  // enum questionsOrderEnum {  default,  initial,  random,  };

  @BuiltValueSerializer(custom: true)
  static Serializer<PanelbaseAllOf> get serializer => _$PanelbaseAllOfSerializer();
}

class _$PanelbaseAllOfSerializer implements PrimitiveSerializer<PanelbaseAllOf> {
  @override
  final Iterable<Type> types = const [PanelbaseAllOf];

  @override
  final String wireName = r'PanelbaseAllOf';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    PanelbaseAllOf object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.name != null) {
      yield r'name';
      yield serializers.serialize(
        object.name,
        specifiedType: const FullType(String),
      );
    }
    if (object.elements != null) {
      yield r'elements';
      yield serializers.serialize(
        object.elements,
        specifiedType: const FullType(BuiltList, [FullType(ElementBase)]),
      );
    }
    if (object.visible != null) {
      yield r'visible';
      yield serializers.serialize(
        object.visible,
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
    if (object.enableIf != null) {
      yield r'enableIf';
      yield serializers.serialize(
        object.enableIf,
        specifiedType: const FullType(String),
      );
    }
    if (object.requiredIf != null) {
      yield r'requiredIf';
      yield serializers.serialize(
        object.requiredIf,
        specifiedType: const FullType(String),
      );
    }
    if (object.readOnly != null) {
      yield r'readOnly';
      yield serializers.serialize(
        object.readOnly,
        specifiedType: const FullType(bool),
      );
    }
    if (object.questionTitleLocation != null) {
      yield r'questionTitleLocation';
      yield serializers.serialize(
        object.questionTitleLocation,
        specifiedType: const FullType(PanelbaseQuestionTitleLocation),
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
    if (object.questionsOrder != null) {
      yield r'questionsOrder';
      yield serializers.serialize(
        object.questionsOrder,
        specifiedType: const FullType(PanelbaseQuestionsOrder),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    PanelbaseAllOf object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  @override
  PanelbaseAllOf deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return serializers.deserialize(serialized, specifiedType: FullType($PanelbaseAllOf)) as $PanelbaseAllOf;
  }
}

/// a concrete implementation of [PanelbaseAllOf], since [PanelbaseAllOf] is not instantiable
@BuiltValue(instantiable: true)
abstract class $PanelbaseAllOf implements PanelbaseAllOf, Built<$PanelbaseAllOf, $PanelbaseAllOfBuilder> {
  $PanelbaseAllOf._();

  factory $PanelbaseAllOf([void Function($PanelbaseAllOfBuilder)? updates]) = _$$PanelbaseAllOf;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults($PanelbaseAllOfBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<$PanelbaseAllOf> get serializer => _$$PanelbaseAllOfSerializer();
}

class _$$PanelbaseAllOfSerializer implements PrimitiveSerializer<$PanelbaseAllOf> {
  @override
  final Iterable<Type> types = const [$PanelbaseAllOf, _$$PanelbaseAllOf];

  @override
  final String wireName = r'$PanelbaseAllOf';

  @override
  Object serialize(
    Serializers serializers,
    $PanelbaseAllOf object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return serializers.serialize(object, specifiedType: FullType(PanelbaseAllOf))!;
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required PanelbaseAllOfBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'name':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.name = valueDes;
          break;
        case r'elements':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(BuiltList, [FullType(ElementBase)]),
          ) as BuiltList<ElementBase>;
          result.elements.replace(valueDes);
          break;
        case r'visible':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.visible = valueDes;
          break;
        case r'visibleIf':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.visibleIf = valueDes;
          break;
        case r'enableIf':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.enableIf = valueDes;
          break;
        case r'requiredIf':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.requiredIf = valueDes;
          break;
        case r'readOnly':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool;
          result.readOnly = valueDes;
          break;
        case r'questionTitleLocation':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(PanelbaseQuestionTitleLocation),
          ) as PanelbaseQuestionTitleLocation;
          result.questionTitleLocation = valueDes;
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
        case r'questionsOrder':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(PanelbaseQuestionsOrder),
          ) as PanelbaseQuestionsOrder;
          result.questionsOrder = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  $PanelbaseAllOf deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = $PanelbaseAllOfBuilder();
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

