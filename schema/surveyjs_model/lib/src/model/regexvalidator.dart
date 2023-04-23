//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:surveyjs_model/src/model/surveyvalidator.dart';
import 'package:surveyjs_model/src/model/regexvalidator_all_of.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'regexvalidator.g.dart';

/// Regexvalidator
///
/// Properties:
/// * [text] 
/// * [regex] 
@BuiltValue()
abstract class Regexvalidator implements RegexvalidatorAllOf, Surveyvalidator, Built<Regexvalidator, RegexvalidatorBuilder> {
  Regexvalidator._();

  factory Regexvalidator([void updates(RegexvalidatorBuilder b)]) = _$Regexvalidator;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(RegexvalidatorBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<Regexvalidator> get serializer => _$RegexvalidatorSerializer();
}

class _$RegexvalidatorSerializer implements PrimitiveSerializer<Regexvalidator> {
  @override
  final Iterable<Type> types = const [Regexvalidator, _$Regexvalidator];

  @override
  final String wireName = r'Regexvalidator';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    Regexvalidator object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.regex != null) {
      yield r'regex';
      yield serializers.serialize(
        object.regex,
        specifiedType: const FullType(String),
      );
    }
    if (object.text != null) {
      yield r'text';
      yield serializers.serialize(
        object.text,
        specifiedType: const FullType(String),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    Regexvalidator object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required RegexvalidatorBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'regex':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.regex = valueDes;
          break;
        case r'text':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.text = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  Regexvalidator deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = RegexvalidatorBuilder();
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

