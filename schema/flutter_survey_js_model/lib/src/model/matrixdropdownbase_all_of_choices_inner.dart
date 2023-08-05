//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:flutter_survey_js_model/src/model/buttongroupitemvalue.dart';
import 'package:flutter_survey_js_model/src/model/itemvalue.dart';
import 'package:flutter_survey_js_model/src/model/imageitemvalue.dart';
import 'package:flutter_survey_js_model/src/model/survey_title.dart';
import 'package:built_value/json_object.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:one_of/any_of.dart';

part 'matrixdropdownbase_all_of_choices_inner.g.dart';

/// MatrixdropdownbaseAllOfChoicesInner
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
abstract class MatrixdropdownbaseAllOfChoicesInner implements Built<MatrixdropdownbaseAllOfChoicesInner, MatrixdropdownbaseAllOfChoicesInnerBuilder> {
  /// Any Of [Buttongroupitemvalue], [Imageitemvalue], [Itemvalue], [JsonObject]
  AnyOf get anyOf;

  MatrixdropdownbaseAllOfChoicesInner._();

  factory MatrixdropdownbaseAllOfChoicesInner([void updates(MatrixdropdownbaseAllOfChoicesInnerBuilder b)]) = _$MatrixdropdownbaseAllOfChoicesInner;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(MatrixdropdownbaseAllOfChoicesInnerBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<MatrixdropdownbaseAllOfChoicesInner> get serializer => _$MatrixdropdownbaseAllOfChoicesInnerSerializer();
}

class _$MatrixdropdownbaseAllOfChoicesInnerSerializer implements PrimitiveSerializer<MatrixdropdownbaseAllOfChoicesInner> {
  @override
  final Iterable<Type> types = const [MatrixdropdownbaseAllOfChoicesInner, _$MatrixdropdownbaseAllOfChoicesInner];

  @override
  final String wireName = r'MatrixdropdownbaseAllOfChoicesInner';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    MatrixdropdownbaseAllOfChoicesInner object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
  }

  @override
  Object serialize(
    Serializers serializers,
    MatrixdropdownbaseAllOfChoicesInner object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final anyOf = object.anyOf;
    return serializers.serialize(anyOf, specifiedType: FullType(AnyOf, anyOf.valueTypes.map((type) => FullType(type)).toList()))!;
  }

  @override
  MatrixdropdownbaseAllOfChoicesInner deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = MatrixdropdownbaseAllOfChoicesInnerBuilder();
    Object? anyOfDataSrc;
    final targetType = const FullType(AnyOf, [FullType(Itemvalue), FullType(Imageitemvalue), FullType(Buttongroupitemvalue), FullType.nullable(JsonObject), ]);
    anyOfDataSrc = serialized;
    result.anyOf = serializers.deserialize(anyOfDataSrc, specifiedType: targetType) as AnyOf;
    return result.build();
  }
}

