//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:flutter_survey_js_model/src/model/rating_display_mode.dart';
import 'package:built_collection/built_collection.dart';
import 'package:flutter_survey_js_model/src/model/rating_auto_generate.dart';
import 'package:flutter_survey_js_model/src/model/matrixdropdown_all_of_rows_inner.dart';
import 'package:flutter_survey_js_model/src/model/rating_rate_color_mode.dart';
import 'package:flutter_survey_js_model/src/model/rating_rate_type.dart';
import 'package:flutter_survey_js_model/src/model/rating_scale_color_mode.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'rating_all_of.g.dart';

/// RatingAllOf
///
/// Properties:
/// * [showCommentArea] 
/// * [rateType] 
/// * [scaleColorMode] 
/// * [rateColorMode] 
/// * [autoGenerate] 
/// * [rateCount] 
/// * [rateValues] 
/// * [rateMin] 
/// * [rateMax] 
/// * [rateStep] 
/// * [minRateDescription] 
/// * [maxRateDescription] 
/// * [displayRateDescriptionsAsExtremeItems] 
/// * [displayMode] 
@BuiltValue(instantiable: false)
abstract class RatingAllOf  {
  @BuiltValueField(wireName: r'showCommentArea')
  String? get showCommentArea;

  @BuiltValueField(wireName: r'rateType')
  RatingRateType? get rateType;
  // enum rateTypeEnum {  labels,  stars,  smileys,  };

  @BuiltValueField(wireName: r'scaleColorMode')
  RatingScaleColorMode? get scaleColorMode;
  // enum scaleColorModeEnum {  monochrome,  colored,  };

  @BuiltValueField(wireName: r'rateColorMode')
  RatingRateColorMode? get rateColorMode;
  // enum rateColorModeEnum {  default,  scale,  };

  @BuiltValueField(wireName: r'autoGenerate')
  RatingAutoGenerate? get autoGenerate;
  // enum autoGenerateEnum {  {"value":true,"text":"Generate"},  {"value":false,"text":"Enter manually"},  };

  @BuiltValueField(wireName: r'rateCount')
  num? get rateCount;

  @BuiltValueField(wireName: r'rateValues')
  BuiltList<MatrixdropdownAllOfRowsInner>? get rateValues;

  @BuiltValueField(wireName: r'rateMin')
  num? get rateMin;

  @BuiltValueField(wireName: r'rateMax')
  num? get rateMax;

  @BuiltValueField(wireName: r'rateStep')
  num? get rateStep;

  @BuiltValueField(wireName: r'minRateDescription')
  String? get minRateDescription;

  @BuiltValueField(wireName: r'maxRateDescription')
  String? get maxRateDescription;

  @BuiltValueField(wireName: r'displayRateDescriptionsAsExtremeItems')
  bool? get displayRateDescriptionsAsExtremeItems;

  @BuiltValueField(wireName: r'displayMode')
  RatingDisplayMode? get displayMode;
  // enum displayModeEnum {  auto,  buttons,  dropdown,  };

  @BuiltValueSerializer(custom: true)
  static Serializer<RatingAllOf> get serializer => _$RatingAllOfSerializer();
}

class _$RatingAllOfSerializer implements PrimitiveSerializer<RatingAllOf> {
  @override
  final Iterable<Type> types = const [RatingAllOf];

  @override
  final String wireName = r'RatingAllOf';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    RatingAllOf object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.showCommentArea != null) {
      yield r'showCommentArea';
      yield serializers.serialize(
        object.showCommentArea,
        specifiedType: const FullType(String),
      );
    }
    if (object.rateType != null) {
      yield r'rateType';
      yield serializers.serialize(
        object.rateType,
        specifiedType: const FullType(RatingRateType),
      );
    }
    if (object.scaleColorMode != null) {
      yield r'scaleColorMode';
      yield serializers.serialize(
        object.scaleColorMode,
        specifiedType: const FullType(RatingScaleColorMode),
      );
    }
    if (object.rateColorMode != null) {
      yield r'rateColorMode';
      yield serializers.serialize(
        object.rateColorMode,
        specifiedType: const FullType(RatingRateColorMode),
      );
    }
    if (object.autoGenerate != null) {
      yield r'autoGenerate';
      yield serializers.serialize(
        object.autoGenerate,
        specifiedType: const FullType(RatingAutoGenerate),
      );
    }
    if (object.rateCount != null) {
      yield r'rateCount';
      yield serializers.serialize(
        object.rateCount,
        specifiedType: const FullType(num),
      );
    }
    if (object.rateValues != null) {
      yield r'rateValues';
      yield serializers.serialize(
        object.rateValues,
        specifiedType: const FullType(BuiltList, [FullType(MatrixdropdownAllOfRowsInner)]),
      );
    }
    if (object.rateMin != null) {
      yield r'rateMin';
      yield serializers.serialize(
        object.rateMin,
        specifiedType: const FullType(num),
      );
    }
    if (object.rateMax != null) {
      yield r'rateMax';
      yield serializers.serialize(
        object.rateMax,
        specifiedType: const FullType(num),
      );
    }
    if (object.rateStep != null) {
      yield r'rateStep';
      yield serializers.serialize(
        object.rateStep,
        specifiedType: const FullType(num),
      );
    }
    if (object.minRateDescription != null) {
      yield r'minRateDescription';
      yield serializers.serialize(
        object.minRateDescription,
        specifiedType: const FullType(String),
      );
    }
    if (object.maxRateDescription != null) {
      yield r'maxRateDescription';
      yield serializers.serialize(
        object.maxRateDescription,
        specifiedType: const FullType(String),
      );
    }
    if (object.displayRateDescriptionsAsExtremeItems != null) {
      yield r'displayRateDescriptionsAsExtremeItems';
      yield serializers.serialize(
        object.displayRateDescriptionsAsExtremeItems,
        specifiedType: const FullType(bool),
      );
    }
    if (object.displayMode != null) {
      yield r'displayMode';
      yield serializers.serialize(
        object.displayMode,
        specifiedType: const FullType(RatingDisplayMode),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    RatingAllOf object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  @override
  RatingAllOf deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return serializers.deserialize(serialized, specifiedType: FullType($RatingAllOf)) as $RatingAllOf;
  }
}

/// a concrete implementation of [RatingAllOf], since [RatingAllOf] is not instantiable
@BuiltValue(instantiable: true)
abstract class $RatingAllOf implements RatingAllOf, Built<$RatingAllOf, $RatingAllOfBuilder> {
  $RatingAllOf._();

  factory $RatingAllOf([void Function($RatingAllOfBuilder)? updates]) = _$$RatingAllOf;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults($RatingAllOfBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<$RatingAllOf> get serializer => _$$RatingAllOfSerializer();
}

class _$$RatingAllOfSerializer implements PrimitiveSerializer<$RatingAllOf> {
  @override
  final Iterable<Type> types = const [$RatingAllOf, _$$RatingAllOf];

  @override
  final String wireName = r'$RatingAllOf';

  @override
  Object serialize(
    Serializers serializers,
    $RatingAllOf object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return serializers.serialize(object, specifiedType: FullType(RatingAllOf))!;
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required RatingAllOfBuilder result,
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
        case r'rateType':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(RatingRateType),
          ) as RatingRateType;
          result.rateType = valueDes;
          break;
        case r'scaleColorMode':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(RatingScaleColorMode),
          ) as RatingScaleColorMode;
          result.scaleColorMode = valueDes;
          break;
        case r'rateColorMode':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(RatingRateColorMode),
          ) as RatingRateColorMode;
          result.rateColorMode = valueDes;
          break;
        case r'autoGenerate':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(RatingAutoGenerate),
          ) as RatingAutoGenerate;
          result.autoGenerate = valueDes;
          break;
        case r'rateCount':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(num),
          ) as num;
          result.rateCount = valueDes;
          break;
        case r'rateValues':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(BuiltList, [FullType(MatrixdropdownAllOfRowsInner)]),
          ) as BuiltList<MatrixdropdownAllOfRowsInner>;
          result.rateValues.replace(valueDes);
          break;
        case r'rateMin':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(num),
          ) as num;
          result.rateMin = valueDes;
          break;
        case r'rateMax':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(num),
          ) as num;
          result.rateMax = valueDes;
          break;
        case r'rateStep':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(num),
          ) as num;
          result.rateStep = valueDes;
          break;
        case r'minRateDescription':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.minRateDescription = valueDes;
          break;
        case r'maxRateDescription':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.maxRateDescription = valueDes;
          break;
        case r'displayRateDescriptionsAsExtremeItems':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool;
          result.displayRateDescriptionsAsExtremeItems = valueDes;
          break;
        case r'displayMode':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(RatingDisplayMode),
          ) as RatingDisplayMode;
          result.displayMode = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  $RatingAllOf deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = $RatingAllOfBuilder();
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

