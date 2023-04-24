//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:flutter_survey_js_model/src/model/imagepicker_content_mode.dart';
import 'package:flutter_survey_js_model/src/model/imagepicker_image_fit.dart';
import 'package:flutter_survey_js_model/src/model/checkboxbase_col_count.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'imagepicker_all_of.g.dart';

/// ImagepickerAllOf
///
/// Properties:
/// * [showOtherItem] 
/// * [otherText] 
/// * [showNoneItem] 
/// * [noneText] 
/// * [optionsCaption] 
/// * [otherErrorText] 
/// * [storeOthersAsComment] 
/// * [contentMode] 
/// * [imageFit] 
/// * [imageHeight] 
/// * [imageWidth] 
/// * [minImageWidth] 
/// * [minImageHeight] 
/// * [maxImageWidth] 
/// * [maxImageHeight] 
/// * [showLabel] 
/// * [colCount] 
/// * [multiSelect] 
@BuiltValue(instantiable: false)
abstract class ImagepickerAllOf  {
  @BuiltValueField(wireName: r'showOtherItem')
  bool? get showOtherItem;

  @BuiltValueField(wireName: r'otherText')
  String? get otherText;

  @BuiltValueField(wireName: r'showNoneItem')
  bool? get showNoneItem;

  @BuiltValueField(wireName: r'noneText')
  String? get noneText;

  @BuiltValueField(wireName: r'optionsCaption')
  String? get optionsCaption;

  @BuiltValueField(wireName: r'otherErrorText')
  String? get otherErrorText;

  @BuiltValueField(wireName: r'storeOthersAsComment')
  bool? get storeOthersAsComment;

  @BuiltValueField(wireName: r'contentMode')
  ImagepickerContentMode? get contentMode;
  // enum contentModeEnum {  image,  video,  };

  @BuiltValueField(wireName: r'imageFit')
  ImagepickerImageFit? get imageFit;
  // enum imageFitEnum {  none,  contain,  cover,  fill,  };

  @BuiltValueField(wireName: r'imageHeight')
  num? get imageHeight;

  @BuiltValueField(wireName: r'imageWidth')
  num? get imageWidth;

  @BuiltValueField(wireName: r'minImageWidth')
  String? get minImageWidth;

  @BuiltValueField(wireName: r'minImageHeight')
  String? get minImageHeight;

  @BuiltValueField(wireName: r'maxImageWidth')
  String? get maxImageWidth;

  @BuiltValueField(wireName: r'maxImageHeight')
  String? get maxImageHeight;

  @BuiltValueField(wireName: r'showLabel')
  bool? get showLabel;

  @BuiltValueField(wireName: r'colCount')
  CheckboxbaseColCount? get colCount;
  // enum colCountEnum {  0,  1,  2,  3,  4,  5,  };

  @BuiltValueField(wireName: r'multiSelect')
  bool? get multiSelect;

  @BuiltValueSerializer(custom: true)
  static Serializer<ImagepickerAllOf> get serializer => _$ImagepickerAllOfSerializer();
}

class _$ImagepickerAllOfSerializer implements PrimitiveSerializer<ImagepickerAllOf> {
  @override
  final Iterable<Type> types = const [ImagepickerAllOf];

  @override
  final String wireName = r'ImagepickerAllOf';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    ImagepickerAllOf object, {
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
    if (object.optionsCaption != null) {
      yield r'optionsCaption';
      yield serializers.serialize(
        object.optionsCaption,
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
    if (object.contentMode != null) {
      yield r'contentMode';
      yield serializers.serialize(
        object.contentMode,
        specifiedType: const FullType(ImagepickerContentMode),
      );
    }
    if (object.imageFit != null) {
      yield r'imageFit';
      yield serializers.serialize(
        object.imageFit,
        specifiedType: const FullType(ImagepickerImageFit),
      );
    }
    if (object.imageHeight != null) {
      yield r'imageHeight';
      yield serializers.serialize(
        object.imageHeight,
        specifiedType: const FullType(num),
      );
    }
    if (object.imageWidth != null) {
      yield r'imageWidth';
      yield serializers.serialize(
        object.imageWidth,
        specifiedType: const FullType(num),
      );
    }
    if (object.minImageWidth != null) {
      yield r'minImageWidth';
      yield serializers.serialize(
        object.minImageWidth,
        specifiedType: const FullType(String),
      );
    }
    if (object.minImageHeight != null) {
      yield r'minImageHeight';
      yield serializers.serialize(
        object.minImageHeight,
        specifiedType: const FullType(String),
      );
    }
    if (object.maxImageWidth != null) {
      yield r'maxImageWidth';
      yield serializers.serialize(
        object.maxImageWidth,
        specifiedType: const FullType(String),
      );
    }
    if (object.maxImageHeight != null) {
      yield r'maxImageHeight';
      yield serializers.serialize(
        object.maxImageHeight,
        specifiedType: const FullType(String),
      );
    }
    if (object.showLabel != null) {
      yield r'showLabel';
      yield serializers.serialize(
        object.showLabel,
        specifiedType: const FullType(bool),
      );
    }
    if (object.colCount != null) {
      yield r'colCount';
      yield serializers.serialize(
        object.colCount,
        specifiedType: const FullType(CheckboxbaseColCount),
      );
    }
    if (object.multiSelect != null) {
      yield r'multiSelect';
      yield serializers.serialize(
        object.multiSelect,
        specifiedType: const FullType(bool),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    ImagepickerAllOf object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  @override
  ImagepickerAllOf deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return serializers.deserialize(serialized, specifiedType: FullType($ImagepickerAllOf)) as $ImagepickerAllOf;
  }
}

/// a concrete implementation of [ImagepickerAllOf], since [ImagepickerAllOf] is not instantiable
@BuiltValue(instantiable: true)
abstract class $ImagepickerAllOf implements ImagepickerAllOf, Built<$ImagepickerAllOf, $ImagepickerAllOfBuilder> {
  $ImagepickerAllOf._();

  factory $ImagepickerAllOf([void Function($ImagepickerAllOfBuilder)? updates]) = _$$ImagepickerAllOf;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults($ImagepickerAllOfBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<$ImagepickerAllOf> get serializer => _$$ImagepickerAllOfSerializer();
}

class _$$ImagepickerAllOfSerializer implements PrimitiveSerializer<$ImagepickerAllOf> {
  @override
  final Iterable<Type> types = const [$ImagepickerAllOf, _$$ImagepickerAllOf];

  @override
  final String wireName = r'$ImagepickerAllOf';

  @override
  Object serialize(
    Serializers serializers,
    $ImagepickerAllOf object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return serializers.serialize(object, specifiedType: FullType(ImagepickerAllOf))!;
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required ImagepickerAllOfBuilder result,
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
        case r'optionsCaption':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.optionsCaption = valueDes;
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
        case r'contentMode':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(ImagepickerContentMode),
          ) as ImagepickerContentMode;
          result.contentMode = valueDes;
          break;
        case r'imageFit':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(ImagepickerImageFit),
          ) as ImagepickerImageFit;
          result.imageFit = valueDes;
          break;
        case r'imageHeight':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(num),
          ) as num;
          result.imageHeight = valueDes;
          break;
        case r'imageWidth':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(num),
          ) as num;
          result.imageWidth = valueDes;
          break;
        case r'minImageWidth':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.minImageWidth = valueDes;
          break;
        case r'minImageHeight':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.minImageHeight = valueDes;
          break;
        case r'maxImageWidth':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.maxImageWidth = valueDes;
          break;
        case r'maxImageHeight':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.maxImageHeight = valueDes;
          break;
        case r'showLabel':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool;
          result.showLabel = valueDes;
          break;
        case r'colCount':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(CheckboxbaseColCount),
          ) as CheckboxbaseColCount;
          result.colCount = valueDes;
          break;
        case r'multiSelect':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool;
          result.multiSelect = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  $ImagepickerAllOf deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = $ImagepickerAllOfBuilder();
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

