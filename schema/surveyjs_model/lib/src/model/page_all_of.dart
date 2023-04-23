//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:surveyjs_model/src/model/page_navigation_buttons_visibility.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'page_all_of.g.dart';

/// PageAllOf
///
/// Properties:
/// * [navigationButtonsVisibility] 
/// * [maxTimeToFinish] 
/// * [navigationTitle] 
/// * [navigationDescription] 
/// * [title] 
/// * [description] 
@BuiltValue(instantiable: false)
abstract class PageAllOf  {
  @BuiltValueField(wireName: r'navigationButtonsVisibility')
  PageNavigationButtonsVisibility? get navigationButtonsVisibility;
  // enum navigationButtonsVisibilityEnum {  inherit,  show,  hide,  };

  @BuiltValueField(wireName: r'maxTimeToFinish')
  num? get maxTimeToFinish;

  @BuiltValueField(wireName: r'navigationTitle')
  String? get navigationTitle;

  @BuiltValueField(wireName: r'navigationDescription')
  String? get navigationDescription;

  @BuiltValueField(wireName: r'title')
  String? get title;

  @BuiltValueField(wireName: r'description')
  String? get description;

  @BuiltValueSerializer(custom: true)
  static Serializer<PageAllOf> get serializer => _$PageAllOfSerializer();
}

class _$PageAllOfSerializer implements PrimitiveSerializer<PageAllOf> {
  @override
  final Iterable<Type> types = const [PageAllOf];

  @override
  final String wireName = r'PageAllOf';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    PageAllOf object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.navigationButtonsVisibility != null) {
      yield r'navigationButtonsVisibility';
      yield serializers.serialize(
        object.navigationButtonsVisibility,
        specifiedType: const FullType(PageNavigationButtonsVisibility),
      );
    }
    if (object.maxTimeToFinish != null) {
      yield r'maxTimeToFinish';
      yield serializers.serialize(
        object.maxTimeToFinish,
        specifiedType: const FullType(num),
      );
    }
    if (object.navigationTitle != null) {
      yield r'navigationTitle';
      yield serializers.serialize(
        object.navigationTitle,
        specifiedType: const FullType(String),
      );
    }
    if (object.navigationDescription != null) {
      yield r'navigationDescription';
      yield serializers.serialize(
        object.navigationDescription,
        specifiedType: const FullType(String),
      );
    }
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
  }

  @override
  Object serialize(
    Serializers serializers,
    PageAllOf object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  @override
  PageAllOf deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return serializers.deserialize(serialized, specifiedType: FullType($PageAllOf)) as $PageAllOf;
  }
}

/// a concrete implementation of [PageAllOf], since [PageAllOf] is not instantiable
@BuiltValue(instantiable: true)
abstract class $PageAllOf implements PageAllOf, Built<$PageAllOf, $PageAllOfBuilder> {
  $PageAllOf._();

  factory $PageAllOf([void Function($PageAllOfBuilder)? updates]) = _$$PageAllOf;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults($PageAllOfBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<$PageAllOf> get serializer => _$$PageAllOfSerializer();
}

class _$$PageAllOfSerializer implements PrimitiveSerializer<$PageAllOf> {
  @override
  final Iterable<Type> types = const [$PageAllOf, _$$PageAllOf];

  @override
  final String wireName = r'$PageAllOf';

  @override
  Object serialize(
    Serializers serializers,
    $PageAllOf object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return serializers.serialize(object, specifiedType: FullType(PageAllOf))!;
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required PageAllOfBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'navigationButtonsVisibility':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(PageNavigationButtonsVisibility),
          ) as PageNavigationButtonsVisibility;
          result.navigationButtonsVisibility = valueDes;
          break;
        case r'maxTimeToFinish':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(num),
          ) as num;
          result.maxTimeToFinish = valueDes;
          break;
        case r'navigationTitle':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.navigationTitle = valueDes;
          break;
        case r'navigationDescription':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.navigationDescription = valueDes;
          break;
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
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  $PageAllOf deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = $PageAllOfBuilder();
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

