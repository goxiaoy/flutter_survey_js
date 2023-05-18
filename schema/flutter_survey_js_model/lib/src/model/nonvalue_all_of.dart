//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:flutter_survey_js_model/src/model/question_title_location.dart';
import 'package:built_collection/built_collection.dart';
import 'package:flutter_survey_js_model/src/model/question_all_of_validators_inner.dart';
import 'package:flutter_survey_js_model/src/model/question_clear_if_invisible.dart';
import 'package:built_value/json_object.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'nonvalue_all_of.g.dart';

/// NonvalueAllOf
///
/// Properties:
/// * [title] 
/// * [description] 
/// * [valueName] 
/// * [enableIf] 
/// * [defaultValue] 
/// * [correctAnswer] 
/// * [clearIfInvisible] 
/// * [isRequired] 
/// * [requiredErrorText] 
/// * [readOnly] 
/// * [requiredIf] 
/// * [validators] 
/// * [titleLocation] 
/// * [showCommentArea] 
/// * [useDisplayValuesInDynamicTexts] 
@BuiltValue(instantiable: false)
abstract class NonvalueAllOf  {
  @BuiltValueField(wireName: r'title')
  String? get title;

  @BuiltValueField(wireName: r'description')
  String? get description;

  @BuiltValueField(wireName: r'valueName')
  String? get valueName;

  @BuiltValueField(wireName: r'enableIf')
  String? get enableIf;

  @BuiltValueField(wireName: r'defaultValue')
  JsonObject? get defaultValue;

  @BuiltValueField(wireName: r'correctAnswer')
  JsonObject? get correctAnswer;

  @BuiltValueField(wireName: r'clearIfInvisible')
  QuestionClearIfInvisible? get clearIfInvisible;
  // enum clearIfInvisibleEnum {  default,  none,  onComplete,  onHidden,  };

  @BuiltValueField(wireName: r'isRequired')
  bool? get isRequired;

  @BuiltValueField(wireName: r'requiredErrorText')
  String? get requiredErrorText;

  @BuiltValueField(wireName: r'readOnly')
  String? get readOnly;

  @BuiltValueField(wireName: r'requiredIf')
  String? get requiredIf;

  @BuiltValueField(wireName: r'validators')
  BuiltList<QuestionAllOfValidatorsInner>? get validators;

  @BuiltValueField(wireName: r'titleLocation')
  QuestionTitleLocation? get titleLocation;
  // enum titleLocationEnum {  default,  top,  bottom,  left,  hidden,  };

  @BuiltValueField(wireName: r'showCommentArea')
  String? get showCommentArea;

  @BuiltValueField(wireName: r'useDisplayValuesInDynamicTexts')
  bool? get useDisplayValuesInDynamicTexts;

  @BuiltValueSerializer(custom: true)
  static Serializer<NonvalueAllOf> get serializer => _$NonvalueAllOfSerializer();
}

class _$NonvalueAllOfSerializer implements PrimitiveSerializer<NonvalueAllOf> {
  @override
  final Iterable<Type> types = const [NonvalueAllOf];

  @override
  final String wireName = r'NonvalueAllOf';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    NonvalueAllOf object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
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
    if (object.valueName != null) {
      yield r'valueName';
      yield serializers.serialize(
        object.valueName,
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
    if (object.defaultValue != null) {
      yield r'defaultValue';
      yield serializers.serialize(
        object.defaultValue,
        specifiedType: const FullType.nullable(JsonObject),
      );
    }
    if (object.correctAnswer != null) {
      yield r'correctAnswer';
      yield serializers.serialize(
        object.correctAnswer,
        specifiedType: const FullType.nullable(JsonObject),
      );
    }
    if (object.clearIfInvisible != null) {
      yield r'clearIfInvisible';
      yield serializers.serialize(
        object.clearIfInvisible,
        specifiedType: const FullType(QuestionClearIfInvisible),
      );
    }
    if (object.isRequired != null) {
      yield r'isRequired';
      yield serializers.serialize(
        object.isRequired,
        specifiedType: const FullType(bool),
      );
    }
    if (object.requiredErrorText != null) {
      yield r'requiredErrorText';
      yield serializers.serialize(
        object.requiredErrorText,
        specifiedType: const FullType(String),
      );
    }
    if (object.readOnly != null) {
      yield r'readOnly';
      yield serializers.serialize(
        object.readOnly,
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
    if (object.validators != null) {
      yield r'validators';
      yield serializers.serialize(
        object.validators,
        specifiedType: const FullType(BuiltList, [FullType(QuestionAllOfValidatorsInner)]),
      );
    }
    if (object.titleLocation != null) {
      yield r'titleLocation';
      yield serializers.serialize(
        object.titleLocation,
        specifiedType: const FullType(QuestionTitleLocation),
      );
    }
    if (object.showCommentArea != null) {
      yield r'showCommentArea';
      yield serializers.serialize(
        object.showCommentArea,
        specifiedType: const FullType(String),
      );
    }
    if (object.useDisplayValuesInDynamicTexts != null) {
      yield r'useDisplayValuesInDynamicTexts';
      yield serializers.serialize(
        object.useDisplayValuesInDynamicTexts,
        specifiedType: const FullType(bool),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    NonvalueAllOf object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  @override
  NonvalueAllOf deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return serializers.deserialize(serialized, specifiedType: FullType($NonvalueAllOf)) as $NonvalueAllOf;
  }
}

/// a concrete implementation of [NonvalueAllOf], since [NonvalueAllOf] is not instantiable
@BuiltValue(instantiable: true)
abstract class $NonvalueAllOf implements NonvalueAllOf, Built<$NonvalueAllOf, $NonvalueAllOfBuilder> {
  $NonvalueAllOf._();

  factory $NonvalueAllOf([void Function($NonvalueAllOfBuilder)? updates]) = _$$NonvalueAllOf;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults($NonvalueAllOfBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<$NonvalueAllOf> get serializer => _$$NonvalueAllOfSerializer();
}

class _$$NonvalueAllOfSerializer implements PrimitiveSerializer<$NonvalueAllOf> {
  @override
  final Iterable<Type> types = const [$NonvalueAllOf, _$$NonvalueAllOf];

  @override
  final String wireName = r'$NonvalueAllOf';

  @override
  Object serialize(
    Serializers serializers,
    $NonvalueAllOf object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return serializers.serialize(object, specifiedType: FullType(NonvalueAllOf))!;
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required NonvalueAllOfBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
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
        case r'valueName':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.valueName = valueDes;
          break;
        case r'enableIf':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.enableIf = valueDes;
          break;
        case r'defaultValue':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(JsonObject),
          ) as JsonObject?;
          if (valueDes == null) continue;
          result.defaultValue = valueDes;
          break;
        case r'correctAnswer':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(JsonObject),
          ) as JsonObject?;
          if (valueDes == null) continue;
          result.correctAnswer = valueDes;
          break;
        case r'clearIfInvisible':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(QuestionClearIfInvisible),
          ) as QuestionClearIfInvisible;
          result.clearIfInvisible = valueDes;
          break;
        case r'isRequired':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool;
          result.isRequired = valueDes;
          break;
        case r'requiredErrorText':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.requiredErrorText = valueDes;
          break;
        case r'readOnly':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.readOnly = valueDes;
          break;
        case r'requiredIf':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.requiredIf = valueDes;
          break;
        case r'validators':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(BuiltList, [FullType(QuestionAllOfValidatorsInner)]),
          ) as BuiltList<QuestionAllOfValidatorsInner>;
          result.validators.replace(valueDes);
          break;
        case r'titleLocation':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(QuestionTitleLocation),
          ) as QuestionTitleLocation;
          result.titleLocation = valueDes;
          break;
        case r'showCommentArea':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.showCommentArea = valueDes;
          break;
        case r'useDisplayValuesInDynamicTexts':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool;
          result.useDisplayValuesInDynamicTexts = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  $NonvalueAllOf deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = $NonvalueAllOfBuilder();
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

