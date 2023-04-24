//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:flutter_survey_js_model/src/model/itemvalue.dart';
import 'package:flutter_survey_js_model/src/model/selectbase_choices_from_question_mode.dart';
import 'package:flutter_survey_js_model/src/model/selectbase_choices_order.dart';
import 'package:built_collection/built_collection.dart';
import 'package:flutter_survey_js_model/src/model/choices_restful.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'selectbase_all_of.g.dart';

/// SelectbaseAllOf
///
/// Properties:
/// * [showCommentArea] 
/// * [choicesFromQuestion] 
/// * [choices] 
/// * [choicesFromQuestionMode] 
/// * [choicesOrder] 
/// * [choicesByUrl] 
/// * [hideIfChoicesEmpty] 
/// * [choicesVisibleIf] 
/// * [choicesEnableIf] 
/// * [separateSpecialChoices] 
/// * [showOtherItem] 
/// * [showNoneItem] 
/// * [otherPlaceholder] 
/// * [noneText] 
/// * [otherText] 
/// * [otherErrorText] 
/// * [storeOthersAsComment] 
@BuiltValue(instantiable: false)
abstract class SelectbaseAllOf  {
  @BuiltValueField(wireName: r'showCommentArea')
  String? get showCommentArea;

  @BuiltValueField(wireName: r'choicesFromQuestion')
  String? get choicesFromQuestion;

  @BuiltValueField(wireName: r'choices')
  BuiltList<Itemvalue>? get choices;

  @BuiltValueField(wireName: r'choicesFromQuestionMode')
  SelectbaseChoicesFromQuestionMode? get choicesFromQuestionMode;
  // enum choicesFromQuestionModeEnum {  all,  selected,  unselected,  };

  @BuiltValueField(wireName: r'choicesOrder')
  SelectbaseChoicesOrder? get choicesOrder;
  // enum choicesOrderEnum {  none,  asc,  desc,  random,  };

  @BuiltValueField(wireName: r'choicesByUrl')
  BuiltList<ChoicesRestful>? get choicesByUrl;

  @BuiltValueField(wireName: r'hideIfChoicesEmpty')
  bool? get hideIfChoicesEmpty;

  @BuiltValueField(wireName: r'choicesVisibleIf')
  String? get choicesVisibleIf;

  @BuiltValueField(wireName: r'choicesEnableIf')
  String? get choicesEnableIf;

  @BuiltValueField(wireName: r'separateSpecialChoices')
  bool? get separateSpecialChoices;

  @BuiltValueField(wireName: r'showOtherItem')
  bool? get showOtherItem;

  @BuiltValueField(wireName: r'showNoneItem')
  bool? get showNoneItem;

  @BuiltValueField(wireName: r'otherPlaceholder')
  String? get otherPlaceholder;

  @BuiltValueField(wireName: r'noneText')
  String? get noneText;

  @BuiltValueField(wireName: r'otherText')
  String? get otherText;

  @BuiltValueField(wireName: r'otherErrorText')
  String? get otherErrorText;

  @BuiltValueField(wireName: r'storeOthersAsComment')
  bool? get storeOthersAsComment;

  @BuiltValueSerializer(custom: true)
  static Serializer<SelectbaseAllOf> get serializer => _$SelectbaseAllOfSerializer();
}

class _$SelectbaseAllOfSerializer implements PrimitiveSerializer<SelectbaseAllOf> {
  @override
  final Iterable<Type> types = const [SelectbaseAllOf];

  @override
  final String wireName = r'SelectbaseAllOf';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    SelectbaseAllOf object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.showCommentArea != null) {
      yield r'showCommentArea';
      yield serializers.serialize(
        object.showCommentArea,
        specifiedType: const FullType(String),
      );
    }
    if (object.choicesFromQuestion != null) {
      yield r'choicesFromQuestion';
      yield serializers.serialize(
        object.choicesFromQuestion,
        specifiedType: const FullType(String),
      );
    }
    if (object.choices != null) {
      yield r'choices';
      yield serializers.serialize(
        object.choices,
        specifiedType: const FullType(BuiltList, [FullType(Itemvalue)]),
      );
    }
    if (object.choicesFromQuestionMode != null) {
      yield r'choicesFromQuestionMode';
      yield serializers.serialize(
        object.choicesFromQuestionMode,
        specifiedType: const FullType(SelectbaseChoicesFromQuestionMode),
      );
    }
    if (object.choicesOrder != null) {
      yield r'choicesOrder';
      yield serializers.serialize(
        object.choicesOrder,
        specifiedType: const FullType(SelectbaseChoicesOrder),
      );
    }
    if (object.choicesByUrl != null) {
      yield r'choicesByUrl';
      yield serializers.serialize(
        object.choicesByUrl,
        specifiedType: const FullType(BuiltList, [FullType(ChoicesRestful)]),
      );
    }
    if (object.hideIfChoicesEmpty != null) {
      yield r'hideIfChoicesEmpty';
      yield serializers.serialize(
        object.hideIfChoicesEmpty,
        specifiedType: const FullType(bool),
      );
    }
    if (object.choicesVisibleIf != null) {
      yield r'choicesVisibleIf';
      yield serializers.serialize(
        object.choicesVisibleIf,
        specifiedType: const FullType(String),
      );
    }
    if (object.choicesEnableIf != null) {
      yield r'choicesEnableIf';
      yield serializers.serialize(
        object.choicesEnableIf,
        specifiedType: const FullType(String),
      );
    }
    if (object.separateSpecialChoices != null) {
      yield r'separateSpecialChoices';
      yield serializers.serialize(
        object.separateSpecialChoices,
        specifiedType: const FullType(bool),
      );
    }
    if (object.showOtherItem != null) {
      yield r'showOtherItem';
      yield serializers.serialize(
        object.showOtherItem,
        specifiedType: const FullType(bool),
      );
    }
    if (object.showNoneItem != null) {
      yield r'showNoneItem';
      yield serializers.serialize(
        object.showNoneItem,
        specifiedType: const FullType(bool),
      );
    }
    if (object.otherPlaceholder != null) {
      yield r'otherPlaceholder';
      yield serializers.serialize(
        object.otherPlaceholder,
        specifiedType: const FullType(String),
      );
    }
    if (object.noneText != null) {
      yield r'noneText';
      yield serializers.serialize(
        object.noneText,
        specifiedType: const FullType(String),
      );
    }
    if (object.otherText != null) {
      yield r'otherText';
      yield serializers.serialize(
        object.otherText,
        specifiedType: const FullType(String),
      );
    }
    if (object.otherErrorText != null) {
      yield r'otherErrorText';
      yield serializers.serialize(
        object.otherErrorText,
        specifiedType: const FullType(String),
      );
    }
    if (object.storeOthersAsComment != null) {
      yield r'storeOthersAsComment';
      yield serializers.serialize(
        object.storeOthersAsComment,
        specifiedType: const FullType(bool),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    SelectbaseAllOf object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  @override
  SelectbaseAllOf deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return serializers.deserialize(serialized, specifiedType: FullType($SelectbaseAllOf)) as $SelectbaseAllOf;
  }
}

/// a concrete implementation of [SelectbaseAllOf], since [SelectbaseAllOf] is not instantiable
@BuiltValue(instantiable: true)
abstract class $SelectbaseAllOf implements SelectbaseAllOf, Built<$SelectbaseAllOf, $SelectbaseAllOfBuilder> {
  $SelectbaseAllOf._();

  factory $SelectbaseAllOf([void Function($SelectbaseAllOfBuilder)? updates]) = _$$SelectbaseAllOf;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults($SelectbaseAllOfBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<$SelectbaseAllOf> get serializer => _$$SelectbaseAllOfSerializer();
}

class _$$SelectbaseAllOfSerializer implements PrimitiveSerializer<$SelectbaseAllOf> {
  @override
  final Iterable<Type> types = const [$SelectbaseAllOf, _$$SelectbaseAllOf];

  @override
  final String wireName = r'$SelectbaseAllOf';

  @override
  Object serialize(
    Serializers serializers,
    $SelectbaseAllOf object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return serializers.serialize(object, specifiedType: FullType(SelectbaseAllOf))!;
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required SelectbaseAllOfBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'showCommentArea':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.showCommentArea = valueDes;
          break;
        case r'choicesFromQuestion':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.choicesFromQuestion = valueDes;
          break;
        case r'choices':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(BuiltList, [FullType(Itemvalue)]),
          ) as BuiltList<Itemvalue>;
          result.choices.replace(valueDes);
          break;
        case r'choicesFromQuestionMode':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(SelectbaseChoicesFromQuestionMode),
          ) as SelectbaseChoicesFromQuestionMode;
          result.choicesFromQuestionMode = valueDes;
          break;
        case r'choicesOrder':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(SelectbaseChoicesOrder),
          ) as SelectbaseChoicesOrder;
          result.choicesOrder = valueDes;
          break;
        case r'choicesByUrl':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(BuiltList, [FullType(ChoicesRestful)]),
          ) as BuiltList<ChoicesRestful>;
          result.choicesByUrl.replace(valueDes);
          break;
        case r'hideIfChoicesEmpty':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool;
          result.hideIfChoicesEmpty = valueDes;
          break;
        case r'choicesVisibleIf':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.choicesVisibleIf = valueDes;
          break;
        case r'choicesEnableIf':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.choicesEnableIf = valueDes;
          break;
        case r'separateSpecialChoices':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool;
          result.separateSpecialChoices = valueDes;
          break;
        case r'showOtherItem':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool;
          result.showOtherItem = valueDes;
          break;
        case r'showNoneItem':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool;
          result.showNoneItem = valueDes;
          break;
        case r'otherPlaceholder':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.otherPlaceholder = valueDes;
          break;
        case r'noneText':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.noneText = valueDes;
          break;
        case r'otherText':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.otherText = valueDes;
          break;
        case r'otherErrorText':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.otherErrorText = valueDes;
          break;
        case r'storeOthersAsComment':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool;
          result.storeOthersAsComment = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  $SelectbaseAllOf deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = $SelectbaseAllOfBuilder();
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

