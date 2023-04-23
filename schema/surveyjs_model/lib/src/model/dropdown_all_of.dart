//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:surveyjs_model/src/model/dropdown_autocomplete.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'dropdown_all_of.g.dart';

/// DropdownAllOf
///
/// Properties:
/// * [placeholder] 
/// * [allowClear] 
/// * [choicesMin] 
/// * [choicesMax] 
/// * [choicesStep] 
/// * [autocomplete] 
/// * [renderAs] 
/// * [searchEnabled] 
/// * [choicesLazyLoadEnabled] 
/// * [choicesLazyLoadPageSize] 
/// * [inputFieldComponent] 
/// * [itemComponent] 
@BuiltValue(instantiable: false)
abstract class DropdownAllOf  {
  @BuiltValueField(wireName: r'placeholder')
  String? get placeholder;

  @BuiltValueField(wireName: r'allowClear')
  bool? get allowClear;

  @BuiltValueField(wireName: r'choicesMin')
  num? get choicesMin;

  @BuiltValueField(wireName: r'choicesMax')
  num? get choicesMax;

  @BuiltValueField(wireName: r'choicesStep')
  num? get choicesStep;

  @BuiltValueField(wireName: r'autocomplete')
  DropdownAutocomplete? get autocomplete;
  // enum autocompleteEnum {  ,  name,  honorific-prefix,  given-name,  additional-name,  family-name,  honorific-suffix,  nickname,  organization-title,  username,  new-password,  current-password,  organization,  street-address,  address-line1,  address-line2,  address-line3,  address-level4,  address-level3,  address-level2,  address-level1,  country,  country-name,  postal-code,  cc-name,  cc-given-name,  cc-additional-name,  cc-family-name,  cc-number,  cc-exp,  cc-exp-month,  cc-exp-year,  cc-csc,  cc-type,  transaction-currency,  transaction-amount,  language,  bday,  bday-day,  bday-month,  bday-year,  sex,  url,  photo,  tel,  tel-country-code,  tel-national,  tel-area-code,  tel-local,  tel-local-prefix,  tel-local-suffix,  tel-extension,  email,  impp,  };

  @BuiltValueField(wireName: r'renderAs')
  String? get renderAs;

  @BuiltValueField(wireName: r'searchEnabled')
  bool? get searchEnabled;

  @BuiltValueField(wireName: r'choicesLazyLoadEnabled')
  bool? get choicesLazyLoadEnabled;

  @BuiltValueField(wireName: r'choicesLazyLoadPageSize')
  num? get choicesLazyLoadPageSize;

  @BuiltValueField(wireName: r'inputFieldComponent')
  String? get inputFieldComponent;

  @BuiltValueField(wireName: r'itemComponent')
  String? get itemComponent;

  @BuiltValueSerializer(custom: true)
  static Serializer<DropdownAllOf> get serializer => _$DropdownAllOfSerializer();
}

class _$DropdownAllOfSerializer implements PrimitiveSerializer<DropdownAllOf> {
  @override
  final Iterable<Type> types = const [DropdownAllOf];

  @override
  final String wireName = r'DropdownAllOf';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    DropdownAllOf object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.placeholder != null) {
      yield r'placeholder';
      yield serializers.serialize(
        object.placeholder,
        specifiedType: const FullType(String),
      );
    }
    if (object.allowClear != null) {
      yield r'allowClear';
      yield serializers.serialize(
        object.allowClear,
        specifiedType: const FullType(bool),
      );
    }
    if (object.choicesMin != null) {
      yield r'choicesMin';
      yield serializers.serialize(
        object.choicesMin,
        specifiedType: const FullType(num),
      );
    }
    if (object.choicesMax != null) {
      yield r'choicesMax';
      yield serializers.serialize(
        object.choicesMax,
        specifiedType: const FullType(num),
      );
    }
    if (object.choicesStep != null) {
      yield r'choicesStep';
      yield serializers.serialize(
        object.choicesStep,
        specifiedType: const FullType(num),
      );
    }
    if (object.autocomplete != null) {
      yield r'autocomplete';
      yield serializers.serialize(
        object.autocomplete,
        specifiedType: const FullType(DropdownAutocomplete),
      );
    }
    if (object.renderAs != null) {
      yield r'renderAs';
      yield serializers.serialize(
        object.renderAs,
        specifiedType: const FullType(String),
      );
    }
    if (object.searchEnabled != null) {
      yield r'searchEnabled';
      yield serializers.serialize(
        object.searchEnabled,
        specifiedType: const FullType(bool),
      );
    }
    if (object.choicesLazyLoadEnabled != null) {
      yield r'choicesLazyLoadEnabled';
      yield serializers.serialize(
        object.choicesLazyLoadEnabled,
        specifiedType: const FullType(bool),
      );
    }
    if (object.choicesLazyLoadPageSize != null) {
      yield r'choicesLazyLoadPageSize';
      yield serializers.serialize(
        object.choicesLazyLoadPageSize,
        specifiedType: const FullType(num),
      );
    }
    if (object.inputFieldComponent != null) {
      yield r'inputFieldComponent';
      yield serializers.serialize(
        object.inputFieldComponent,
        specifiedType: const FullType(String),
      );
    }
    if (object.itemComponent != null) {
      yield r'itemComponent';
      yield serializers.serialize(
        object.itemComponent,
        specifiedType: const FullType(String),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    DropdownAllOf object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  @override
  DropdownAllOf deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return serializers.deserialize(serialized, specifiedType: FullType($DropdownAllOf)) as $DropdownAllOf;
  }
}

/// a concrete implementation of [DropdownAllOf], since [DropdownAllOf] is not instantiable
@BuiltValue(instantiable: true)
abstract class $DropdownAllOf implements DropdownAllOf, Built<$DropdownAllOf, $DropdownAllOfBuilder> {
  $DropdownAllOf._();

  factory $DropdownAllOf([void Function($DropdownAllOfBuilder)? updates]) = _$$DropdownAllOf;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults($DropdownAllOfBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<$DropdownAllOf> get serializer => _$$DropdownAllOfSerializer();
}

class _$$DropdownAllOfSerializer implements PrimitiveSerializer<$DropdownAllOf> {
  @override
  final Iterable<Type> types = const [$DropdownAllOf, _$$DropdownAllOf];

  @override
  final String wireName = r'$DropdownAllOf';

  @override
  Object serialize(
    Serializers serializers,
    $DropdownAllOf object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return serializers.serialize(object, specifiedType: FullType(DropdownAllOf))!;
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required DropdownAllOfBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'placeholder':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.placeholder = valueDes;
          break;
        case r'allowClear':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool;
          result.allowClear = valueDes;
          break;
        case r'choicesMin':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(num),
          ) as num;
          result.choicesMin = valueDes;
          break;
        case r'choicesMax':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(num),
          ) as num;
          result.choicesMax = valueDes;
          break;
        case r'choicesStep':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(num),
          ) as num;
          result.choicesStep = valueDes;
          break;
        case r'autocomplete':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(DropdownAutocomplete),
          ) as DropdownAutocomplete;
          result.autocomplete = valueDes;
          break;
        case r'renderAs':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.renderAs = valueDes;
          break;
        case r'searchEnabled':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool;
          result.searchEnabled = valueDes;
          break;
        case r'choicesLazyLoadEnabled':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool;
          result.choicesLazyLoadEnabled = valueDes;
          break;
        case r'choicesLazyLoadPageSize':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(num),
          ) as num;
          result.choicesLazyLoadPageSize = valueDes;
          break;
        case r'inputFieldComponent':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.inputFieldComponent = valueDes;
          break;
        case r'itemComponent':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.itemComponent = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  $DropdownAllOf deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = $DropdownAllOfBuilder();
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

