//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:surveyjs_model/src/model/text_input_type.dart';
import 'package:surveyjs_model/src/model/text_text_update_mode.dart';
import 'package:surveyjs_model/src/model/text_autocomplete.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'text_all_of.g.dart';

/// TextAllOf
///
/// Properties:
/// * [inputType] 
/// * [size] 
/// * [textUpdateMode] 
/// * [autocomplete] 
/// * [min] 
/// * [max] 
/// * [minValueExpression] 
/// * [maxValueExpression] 
/// * [minErrorText] 
/// * [maxErrorText] 
/// * [step] 
/// * [maxLength] 
/// * [placeholder] 
/// * [dataList] 
@BuiltValue(instantiable: false)
abstract class TextAllOf  {
  @BuiltValueField(wireName: r'inputType')
  TextInputType? get inputType;
  // enum inputTypeEnum {  color,  date,  datetime-local,  email,  month,  number,  password,  range,  tel,  text,  time,  url,  week,  };

  @BuiltValueField(wireName: r'size')
  num? get size;

  @BuiltValueField(wireName: r'textUpdateMode')
  TextTextUpdateMode? get textUpdateMode;
  // enum textUpdateModeEnum {  default,  onBlur,  onTyping,  };

  @BuiltValueField(wireName: r'autocomplete')
  TextAutocomplete? get autocomplete;
  // enum autocompleteEnum {  ,  name,  honorific-prefix,  given-name,  additional-name,  family-name,  honorific-suffix,  nickname,  organization-title,  username,  new-password,  current-password,  organization,  street-address,  address-line1,  address-line2,  address-line3,  address-level4,  address-level3,  address-level2,  address-level1,  country,  country-name,  postal-code,  cc-name,  cc-given-name,  cc-additional-name,  cc-family-name,  cc-number,  cc-exp,  cc-exp-month,  cc-exp-year,  cc-csc,  cc-type,  transaction-currency,  transaction-amount,  language,  bday,  bday-day,  bday-month,  bday-year,  sex,  url,  photo,  tel,  tel-country-code,  tel-national,  tel-area-code,  tel-local,  tel-local-prefix,  tel-local-suffix,  tel-extension,  email,  impp,  };

  @BuiltValueField(wireName: r'min')
  String? get min;

  @BuiltValueField(wireName: r'max')
  String? get max;

  @BuiltValueField(wireName: r'minValueExpression')
  String? get minValueExpression;

  @BuiltValueField(wireName: r'maxValueExpression')
  String? get maxValueExpression;

  @BuiltValueField(wireName: r'minErrorText')
  String? get minErrorText;

  @BuiltValueField(wireName: r'maxErrorText')
  String? get maxErrorText;

  @BuiltValueField(wireName: r'step')
  num? get step;

  @BuiltValueField(wireName: r'maxLength')
  num? get maxLength;

  @BuiltValueField(wireName: r'placeholder')
  String? get placeholder;

  @BuiltValueField(wireName: r'dataList')
  BuiltList<String>? get dataList;

  @BuiltValueSerializer(custom: true)
  static Serializer<TextAllOf> get serializer => _$TextAllOfSerializer();
}

class _$TextAllOfSerializer implements PrimitiveSerializer<TextAllOf> {
  @override
  final Iterable<Type> types = const [TextAllOf];

  @override
  final String wireName = r'TextAllOf';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    TextAllOf object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.inputType != null) {
      yield r'inputType';
      yield serializers.serialize(
        object.inputType,
        specifiedType: const FullType(TextInputType),
      );
    }
    if (object.size != null) {
      yield r'size';
      yield serializers.serialize(
        object.size,
        specifiedType: const FullType(num),
      );
    }
    if (object.textUpdateMode != null) {
      yield r'textUpdateMode';
      yield serializers.serialize(
        object.textUpdateMode,
        specifiedType: const FullType(TextTextUpdateMode),
      );
    }
    if (object.autocomplete != null) {
      yield r'autocomplete';
      yield serializers.serialize(
        object.autocomplete,
        specifiedType: const FullType(TextAutocomplete),
      );
    }
    if (object.min != null) {
      yield r'min';
      yield serializers.serialize(
        object.min,
        specifiedType: const FullType(String),
      );
    }
    if (object.max != null) {
      yield r'max';
      yield serializers.serialize(
        object.max,
        specifiedType: const FullType(String),
      );
    }
    if (object.minValueExpression != null) {
      yield r'minValueExpression';
      yield serializers.serialize(
        object.minValueExpression,
        specifiedType: const FullType(String),
      );
    }
    if (object.maxValueExpression != null) {
      yield r'maxValueExpression';
      yield serializers.serialize(
        object.maxValueExpression,
        specifiedType: const FullType(String),
      );
    }
    if (object.minErrorText != null) {
      yield r'minErrorText';
      yield serializers.serialize(
        object.minErrorText,
        specifiedType: const FullType(String),
      );
    }
    if (object.maxErrorText != null) {
      yield r'maxErrorText';
      yield serializers.serialize(
        object.maxErrorText,
        specifiedType: const FullType(String),
      );
    }
    if (object.step != null) {
      yield r'step';
      yield serializers.serialize(
        object.step,
        specifiedType: const FullType(num),
      );
    }
    if (object.maxLength != null) {
      yield r'maxLength';
      yield serializers.serialize(
        object.maxLength,
        specifiedType: const FullType(num),
      );
    }
    if (object.placeholder != null) {
      yield r'placeholder';
      yield serializers.serialize(
        object.placeholder,
        specifiedType: const FullType(String),
      );
    }
    if (object.dataList != null) {
      yield r'dataList';
      yield serializers.serialize(
        object.dataList,
        specifiedType: const FullType(BuiltList, [FullType(String)]),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    TextAllOf object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  @override
  TextAllOf deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return serializers.deserialize(serialized, specifiedType: FullType($TextAllOf)) as $TextAllOf;
  }
}

/// a concrete implementation of [TextAllOf], since [TextAllOf] is not instantiable
@BuiltValue(instantiable: true)
abstract class $TextAllOf implements TextAllOf, Built<$TextAllOf, $TextAllOfBuilder> {
  $TextAllOf._();

  factory $TextAllOf([void Function($TextAllOfBuilder)? updates]) = _$$TextAllOf;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults($TextAllOfBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<$TextAllOf> get serializer => _$$TextAllOfSerializer();
}

class _$$TextAllOfSerializer implements PrimitiveSerializer<$TextAllOf> {
  @override
  final Iterable<Type> types = const [$TextAllOf, _$$TextAllOf];

  @override
  final String wireName = r'$TextAllOf';

  @override
  Object serialize(
    Serializers serializers,
    $TextAllOf object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return serializers.serialize(object, specifiedType: FullType(TextAllOf))!;
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required TextAllOfBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'inputType':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(TextInputType),
          ) as TextInputType;
          result.inputType = valueDes;
          break;
        case r'size':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(num),
          ) as num;
          result.size = valueDes;
          break;
        case r'textUpdateMode':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(TextTextUpdateMode),
          ) as TextTextUpdateMode;
          result.textUpdateMode = valueDes;
          break;
        case r'autocomplete':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(TextAutocomplete),
          ) as TextAutocomplete;
          result.autocomplete = valueDes;
          break;
        case r'min':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.min = valueDes;
          break;
        case r'max':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.max = valueDes;
          break;
        case r'minValueExpression':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.minValueExpression = valueDes;
          break;
        case r'maxValueExpression':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.maxValueExpression = valueDes;
          break;
        case r'minErrorText':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.minErrorText = valueDes;
          break;
        case r'maxErrorText':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.maxErrorText = valueDes;
          break;
        case r'step':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(num),
          ) as num;
          result.step = valueDes;
          break;
        case r'maxLength':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(num),
          ) as num;
          result.maxLength = valueDes;
          break;
        case r'placeholder':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.placeholder = valueDes;
          break;
        case r'dataList':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(BuiltList, [FullType(String)]),
          ) as BuiltList<String>;
          result.dataList.replace(valueDes);
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  $TextAllOf deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = $TextAllOfBuilder();
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

