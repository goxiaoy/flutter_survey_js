//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:flutter_survey_js_model/src/model/checkboxbase_col_count.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'ranking_all_of.g.dart';

/// RankingAllOf
///
/// Properties:
/// * [showOtherItem] 
/// * [otherText] 
/// * [otherErrorText] 
/// * [storeOthersAsComment] 
/// * [showNoneItem] 
/// * [noneText] 
/// * [showSelectAllItem] 
/// * [selectAllText] 
/// * [colCount] 
/// * [maxSelectedChoices] 
/// * [separateSpecialChoices] 
/// * [longTap] 
/// * [itemComponent] 
@BuiltValue(instantiable: false)
abstract class RankingAllOf  {
  @BuiltValueField(wireName: r'showOtherItem')
  bool? get showOtherItem;

  @BuiltValueField(wireName: r'otherText')
  String? get otherText;

  @BuiltValueField(wireName: r'otherErrorText')
  String? get otherErrorText;

  @BuiltValueField(wireName: r'storeOthersAsComment')
  bool? get storeOthersAsComment;

  @BuiltValueField(wireName: r'showNoneItem')
  bool? get showNoneItem;

  @BuiltValueField(wireName: r'noneText')
  String? get noneText;

  @BuiltValueField(wireName: r'showSelectAllItem')
  bool? get showSelectAllItem;

  @BuiltValueField(wireName: r'selectAllText')
  String? get selectAllText;

  @BuiltValueField(wireName: r'colCount')
  CheckboxbaseColCount? get colCount;
  // enum colCountEnum {  0,  1,  2,  3,  4,  5,  };

  @BuiltValueField(wireName: r'maxSelectedChoices')
  num? get maxSelectedChoices;

  @BuiltValueField(wireName: r'separateSpecialChoices')
  bool? get separateSpecialChoices;

  @BuiltValueField(wireName: r'longTap')
  String? get longTap;

  @BuiltValueField(wireName: r'itemComponent')
  String? get itemComponent;

  @BuiltValueSerializer(custom: true)
  static Serializer<RankingAllOf> get serializer => _$RankingAllOfSerializer();
}

class _$RankingAllOfSerializer implements PrimitiveSerializer<RankingAllOf> {
  @override
  final Iterable<Type> types = const [RankingAllOf];

  @override
  final String wireName = r'RankingAllOf';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    RankingAllOf object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.showOtherItem != null) {
      yield r'showOtherItem';
      yield serializers.serialize(
        object.showOtherItem,
        specifiedType: const FullType(bool),
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
    if (object.showNoneItem != null) {
      yield r'showNoneItem';
      yield serializers.serialize(
        object.showNoneItem,
        specifiedType: const FullType(bool),
      );
    }
    if (object.noneText != null) {
      yield r'noneText';
      yield serializers.serialize(
        object.noneText,
        specifiedType: const FullType(String),
      );
    }
    if (object.showSelectAllItem != null) {
      yield r'showSelectAllItem';
      yield serializers.serialize(
        object.showSelectAllItem,
        specifiedType: const FullType(bool),
      );
    }
    if (object.selectAllText != null) {
      yield r'selectAllText';
      yield serializers.serialize(
        object.selectAllText,
        specifiedType: const FullType(String),
      );
    }
    if (object.colCount != null) {
      yield r'colCount';
      yield serializers.serialize(
        object.colCount,
        specifiedType: const FullType(CheckboxbaseColCount),
      );
    }
    if (object.maxSelectedChoices != null) {
      yield r'maxSelectedChoices';
      yield serializers.serialize(
        object.maxSelectedChoices,
        specifiedType: const FullType(num),
      );
    }
    if (object.separateSpecialChoices != null) {
      yield r'separateSpecialChoices';
      yield serializers.serialize(
        object.separateSpecialChoices,
        specifiedType: const FullType(bool),
      );
    }
    if (object.longTap != null) {
      yield r'longTap';
      yield serializers.serialize(
        object.longTap,
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
    RankingAllOf object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  @override
  RankingAllOf deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return serializers.deserialize(serialized, specifiedType: FullType($RankingAllOf)) as $RankingAllOf;
  }
}

/// a concrete implementation of [RankingAllOf], since [RankingAllOf] is not instantiable
@BuiltValue(instantiable: true)
abstract class $RankingAllOf implements RankingAllOf, Built<$RankingAllOf, $RankingAllOfBuilder> {
  $RankingAllOf._();

  factory $RankingAllOf([void Function($RankingAllOfBuilder)? updates]) = _$$RankingAllOf;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults($RankingAllOfBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<$RankingAllOf> get serializer => _$$RankingAllOfSerializer();
}

class _$$RankingAllOfSerializer implements PrimitiveSerializer<$RankingAllOf> {
  @override
  final Iterable<Type> types = const [$RankingAllOf, _$$RankingAllOf];

  @override
  final String wireName = r'$RankingAllOf';

  @override
  Object serialize(
    Serializers serializers,
    $RankingAllOf object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return serializers.serialize(object, specifiedType: FullType(RankingAllOf))!;
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required RankingAllOfBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'showOtherItem':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool;
          result.showOtherItem = valueDes;
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
        case r'showNoneItem':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool;
          result.showNoneItem = valueDes;
          break;
        case r'noneText':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.noneText = valueDes;
          break;
        case r'showSelectAllItem':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool;
          result.showSelectAllItem = valueDes;
          break;
        case r'selectAllText':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.selectAllText = valueDes;
          break;
        case r'colCount':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(CheckboxbaseColCount),
          ) as CheckboxbaseColCount;
          result.colCount = valueDes;
          break;
        case r'maxSelectedChoices':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(num),
          ) as num;
          result.maxSelectedChoices = valueDes;
          break;
        case r'separateSpecialChoices':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool;
          result.separateSpecialChoices = valueDes;
          break;
        case r'longTap':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.longTap = valueDes;
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
  $RankingAllOf deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = $RankingAllOfBuilder();
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

