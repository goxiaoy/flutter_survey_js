//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:flutter_survey_js_model/src/model/multipletextitem_input_type.dart';
import 'package:built_collection/built_collection.dart';
import 'package:flutter_survey_js_model/src/model/question_all_of_validators_inner.dart';
import 'package:built_value/json_object.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'multipletextitem.g.dart';

/// Multipletextitem
///
/// Properties:
/// * [name] 
/// * [isRequired] 
/// * [placeholder] 
/// * [defaultValue] 
/// * [inputType] 
/// * [title] 
/// * [maxLength] 
/// * [size] 
/// * [requiredErrorText] 
/// * [validators] 
@BuiltValue()
abstract class Multipletextitem implements Built<Multipletextitem, MultipletextitemBuilder> {
  @BuiltValueField(wireName: r'name')
  String? get name;

  @BuiltValueField(wireName: r'isRequired')
  bool? get isRequired;

  @BuiltValueField(wireName: r'placeholder')
  String? get placeholder;

  @BuiltValueField(wireName: r'defaultValue')
  JsonObject? get defaultValue;

  @BuiltValueField(wireName: r'inputType')
  MultipletextitemInputType? get inputType;
  // enum inputTypeEnum {  color,  date,  datetime-local,  email,  month,  number,  password,  range,  tel,  text,  time,  url,  week,  };

  @BuiltValueField(wireName: r'title')
  String? get title;

  @BuiltValueField(wireName: r'maxLength')
  num? get maxLength;

  @BuiltValueField(wireName: r'size')
  num? get size;

  @BuiltValueField(wireName: r'requiredErrorText')
  String? get requiredErrorText;

  @BuiltValueField(wireName: r'validators')
  BuiltList<QuestionAllOfValidatorsInner>? get validators;

  Multipletextitem._();

  factory Multipletextitem([void updates(MultipletextitemBuilder b)]) = _$Multipletextitem;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(MultipletextitemBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<Multipletextitem> get serializer => _$MultipletextitemSerializer();
}

class _$MultipletextitemSerializer implements PrimitiveSerializer<Multipletextitem> {
  @override
  final Iterable<Type> types = const [Multipletextitem, _$Multipletextitem];

  @override
  final String wireName = r'Multipletextitem';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    Multipletextitem object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.name != null) {
      yield r'name';
      yield serializers.serialize(
        object.name,
        specifiedType: const FullType(String),
      );
    }
    if (object.isRequired != null) {
      yield r'isRequired';
      yield serializers.serialize(
        object.isRequired,
        specifiedType: const FullType(bool),
      );
    }
    if (object.placeholder != null) {
      yield r'placeholder';
      yield serializers.serialize(
        object.placeholder,
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
    if (object.inputType != null) {
      yield r'inputType';
      yield serializers.serialize(
        object.inputType,
        specifiedType: const FullType(MultipletextitemInputType),
      );
    }
    if (object.title != null) {
      yield r'title';
      yield serializers.serialize(
        object.title,
        specifiedType: const FullType(String),
      );
    }
    if (object.maxLength != null) {
      yield r'maxLength';
      yield serializers.serialize(
        object.maxLength,
        specifiedType: const FullType(num),
      );
    }
    if (object.size != null) {
      yield r'size';
      yield serializers.serialize(
        object.size,
        specifiedType: const FullType(num),
      );
    }
    if (object.requiredErrorText != null) {
      yield r'requiredErrorText';
      yield serializers.serialize(
        object.requiredErrorText,
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
  }

  @override
  Object serialize(
    Serializers serializers,
    Multipletextitem object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required MultipletextitemBuilder result,
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
        case r'isRequired':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool;
          result.isRequired = valueDes;
          break;
        case r'placeholder':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.placeholder = valueDes;
          break;
        case r'defaultValue':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(JsonObject),
          ) as JsonObject?;
          if (valueDes == null) continue;
          result.defaultValue = valueDes;
          break;
        case r'inputType':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(MultipletextitemInputType),
          ) as MultipletextitemInputType;
          result.inputType = valueDes;
          break;
        case r'title':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.title = valueDes;
          break;
        case r'maxLength':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(num),
          ) as num;
          result.maxLength = valueDes;
          break;
        case r'size':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(num),
          ) as num;
          result.size = valueDes;
          break;
        case r'requiredErrorText':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.requiredErrorText = valueDes;
          break;
        case r'validators':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(BuiltList, [FullType(QuestionAllOfValidatorsInner)]),
          ) as BuiltList<QuestionAllOfValidatorsInner>;
          result.validators.replace(valueDes);
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  Multipletextitem deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = MultipletextitemBuilder();
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

