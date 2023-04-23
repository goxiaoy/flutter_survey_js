//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:surveyjs_model/src/model/comment_text_update_mode.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'comment_all_of.g.dart';

/// CommentAllOf
///
/// Properties:
/// * [maxLength] 
/// * [cols] 
/// * [rows] 
/// * [placeholder] 
/// * [textUpdateMode] 
/// * [autoGrow] 
/// * [acceptCarriageReturn] 
@BuiltValue(instantiable: false)
abstract class CommentAllOf  {
  @BuiltValueField(wireName: r'maxLength')
  num? get maxLength;

  @BuiltValueField(wireName: r'cols')
  num? get cols;

  @BuiltValueField(wireName: r'rows')
  num? get rows;

  @BuiltValueField(wireName: r'placeholder')
  String? get placeholder;

  @BuiltValueField(wireName: r'textUpdateMode')
  CommentTextUpdateMode? get textUpdateMode;
  // enum textUpdateModeEnum {  default,  onBlur,  onTyping,  };

  @BuiltValueField(wireName: r'autoGrow')
  bool? get autoGrow;

  @BuiltValueField(wireName: r'acceptCarriageReturn')
  bool? get acceptCarriageReturn;

  @BuiltValueSerializer(custom: true)
  static Serializer<CommentAllOf> get serializer => _$CommentAllOfSerializer();
}

class _$CommentAllOfSerializer implements PrimitiveSerializer<CommentAllOf> {
  @override
  final Iterable<Type> types = const [CommentAllOf];

  @override
  final String wireName = r'CommentAllOf';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    CommentAllOf object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.maxLength != null) {
      yield r'maxLength';
      yield serializers.serialize(
        object.maxLength,
        specifiedType: const FullType(num),
      );
    }
    if (object.cols != null) {
      yield r'cols';
      yield serializers.serialize(
        object.cols,
        specifiedType: const FullType(num),
      );
    }
    if (object.rows != null) {
      yield r'rows';
      yield serializers.serialize(
        object.rows,
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
    if (object.textUpdateMode != null) {
      yield r'textUpdateMode';
      yield serializers.serialize(
        object.textUpdateMode,
        specifiedType: const FullType(CommentTextUpdateMode),
      );
    }
    if (object.autoGrow != null) {
      yield r'autoGrow';
      yield serializers.serialize(
        object.autoGrow,
        specifiedType: const FullType(bool),
      );
    }
    if (object.acceptCarriageReturn != null) {
      yield r'acceptCarriageReturn';
      yield serializers.serialize(
        object.acceptCarriageReturn,
        specifiedType: const FullType(bool),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    CommentAllOf object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  @override
  CommentAllOf deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return serializers.deserialize(serialized, specifiedType: FullType($CommentAllOf)) as $CommentAllOf;
  }
}

/// a concrete implementation of [CommentAllOf], since [CommentAllOf] is not instantiable
@BuiltValue(instantiable: true)
abstract class $CommentAllOf implements CommentAllOf, Built<$CommentAllOf, $CommentAllOfBuilder> {
  $CommentAllOf._();

  factory $CommentAllOf([void Function($CommentAllOfBuilder)? updates]) = _$$CommentAllOf;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults($CommentAllOfBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<$CommentAllOf> get serializer => _$$CommentAllOfSerializer();
}

class _$$CommentAllOfSerializer implements PrimitiveSerializer<$CommentAllOf> {
  @override
  final Iterable<Type> types = const [$CommentAllOf, _$$CommentAllOf];

  @override
  final String wireName = r'$CommentAllOf';

  @override
  Object serialize(
    Serializers serializers,
    $CommentAllOf object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return serializers.serialize(object, specifiedType: FullType(CommentAllOf))!;
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required CommentAllOfBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'maxLength':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(num),
          ) as num;
          result.maxLength = valueDes;
          break;
        case r'cols':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(num),
          ) as num;
          result.cols = valueDes;
          break;
        case r'rows':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(num),
          ) as num;
          result.rows = valueDes;
          break;
        case r'placeholder':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.placeholder = valueDes;
          break;
        case r'textUpdateMode':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(CommentTextUpdateMode),
          ) as CommentTextUpdateMode;
          result.textUpdateMode = valueDes;
          break;
        case r'autoGrow':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool;
          result.autoGrow = valueDes;
          break;
        case r'acceptCarriageReturn':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool;
          result.acceptCarriageReturn = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  $CommentAllOf deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = $CommentAllOfBuilder();
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

