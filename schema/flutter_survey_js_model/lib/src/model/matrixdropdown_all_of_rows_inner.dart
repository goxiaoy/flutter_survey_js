//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:flutter_survey_js_model/src/model/itemvalue.dart';
import 'package:built_value/json_object.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:one_of/any_of.dart';

part 'matrixdropdown_all_of_rows_inner.g.dart';

/// MatrixdropdownAllOfRowsInner
///
/// Properties:
/// * [value] 
/// * [text] 
/// * [visibleIf] 
/// * [enableIf] 
@BuiltValue()
abstract class MatrixdropdownAllOfRowsInner implements Built<MatrixdropdownAllOfRowsInner, MatrixdropdownAllOfRowsInnerBuilder> {
  /// Any Of [Itemvalue], [JsonObject]
  AnyOf get anyOf;

  MatrixdropdownAllOfRowsInner._();

  factory MatrixdropdownAllOfRowsInner([void updates(MatrixdropdownAllOfRowsInnerBuilder b)]) = _$MatrixdropdownAllOfRowsInner;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(MatrixdropdownAllOfRowsInnerBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<MatrixdropdownAllOfRowsInner> get serializer => _$MatrixdropdownAllOfRowsInnerSerializer();
}

class _$MatrixdropdownAllOfRowsInnerSerializer implements PrimitiveSerializer<MatrixdropdownAllOfRowsInner> {
  @override
  final Iterable<Type> types = const [MatrixdropdownAllOfRowsInner, _$MatrixdropdownAllOfRowsInner];

  @override
  final String wireName = r'MatrixdropdownAllOfRowsInner';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    MatrixdropdownAllOfRowsInner object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
  }

  @override
  Object serialize(
    Serializers serializers,
    MatrixdropdownAllOfRowsInner object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final anyOf = object.anyOf;
    return serializers.serialize(anyOf, specifiedType: FullType(AnyOf, anyOf.valueTypes.map((type) => FullType(type)).toList()))!;
  }

  @override
  MatrixdropdownAllOfRowsInner deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = MatrixdropdownAllOfRowsInnerBuilder();
    Object? anyOfDataSrc;
    final targetType = const FullType(AnyOf, [FullType(Itemvalue), FullType.nullable(JsonObject), ]);
    anyOfDataSrc = serialized;
    result.anyOf = serializers.deserialize(anyOfDataSrc, specifiedType: targetType) as AnyOf;
    return result.build();
  }
}

