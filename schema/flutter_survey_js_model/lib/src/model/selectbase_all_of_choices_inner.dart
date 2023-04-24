//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:flutter_survey_js_model/src/model/buttongroupitemvalue.dart';
import 'package:flutter_survey_js_model/src/model/itemvalue.dart';
import 'package:flutter_survey_js_model/src/model/imageitemvalue.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:one_of/any_of.dart';

part 'selectbase_all_of_choices_inner.g.dart';

/// SelectbaseAllOfChoicesInner
///
/// Properties:
/// * [value] 
/// * [text] 
/// * [visibleIf] 
/// * [enableIf] 
/// * [imageLink] 
/// * [showCaption] 
/// * [iconName] 
/// * [iconSize] 
@BuiltValue()
abstract class SelectbaseAllOfChoicesInner implements Built<SelectbaseAllOfChoicesInner, SelectbaseAllOfChoicesInnerBuilder> {
  /// Any Of [Buttongroupitemvalue], [Imageitemvalue], [Itemvalue]
  AnyOf get anyOf;

  SelectbaseAllOfChoicesInner._();

  factory SelectbaseAllOfChoicesInner([void updates(SelectbaseAllOfChoicesInnerBuilder b)]) = _$SelectbaseAllOfChoicesInner;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(SelectbaseAllOfChoicesInnerBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<SelectbaseAllOfChoicesInner> get serializer => _$SelectbaseAllOfChoicesInnerSerializer();
}

class _$SelectbaseAllOfChoicesInnerSerializer implements PrimitiveSerializer<SelectbaseAllOfChoicesInner> {
  @override
  final Iterable<Type> types = const [SelectbaseAllOfChoicesInner, _$SelectbaseAllOfChoicesInner];

  @override
  final String wireName = r'SelectbaseAllOfChoicesInner';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    SelectbaseAllOfChoicesInner object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
  }

  @override
  Object serialize(
    Serializers serializers,
    SelectbaseAllOfChoicesInner object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final anyOf = object.anyOf;
    return serializers.serialize(anyOf, specifiedType: FullType(AnyOf, anyOf.valueTypes.map((type) => FullType(type)).toList()))!;
  }

  @override
  SelectbaseAllOfChoicesInner deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = SelectbaseAllOfChoicesInnerBuilder();
    Object? anyOfDataSrc;
    final targetType = const FullType(AnyOf, [FullType(Itemvalue), FullType(Imageitemvalue), FullType(Buttongroupitemvalue), ]);
    anyOfDataSrc = serialized;
    result.anyOf = serializers.deserialize(anyOfDataSrc, specifiedType: targetType) as AnyOf;
    return result.build();
  }
}

