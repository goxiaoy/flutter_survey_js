//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:flutter_survey_js_model/src/model/itemvalue.dart';
import 'package:built_collection/built_collection.dart';
import 'package:flutter_survey_js_model/src/model/matrix_rows_order.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'matrix_all_of.g.dart';

/// MatrixAllOf
///
/// Properties:
/// * [rowTitleWidth] 
/// * [columns] 
/// * [rows] 
/// * [cells] 
/// * [rowsOrder] 
/// * [isAllRowRequired] 
/// * [hideIfRowsEmpty] 
@BuiltValue(instantiable: false)
abstract class MatrixAllOf  {
  @BuiltValueField(wireName: r'rowTitleWidth')
  String? get rowTitleWidth;

  @BuiltValueField(wireName: r'columns')
  BuiltList<Itemvalue>? get columns;

  @BuiltValueField(wireName: r'rows')
  BuiltList<Itemvalue>? get rows;

  @BuiltValueField(wireName: r'cells')
  String? get cells;

  @BuiltValueField(wireName: r'rowsOrder')
  MatrixRowsOrder? get rowsOrder;
  // enum rowsOrderEnum {  initial,  random,  };

  @BuiltValueField(wireName: r'isAllRowRequired')
  bool? get isAllRowRequired;

  @BuiltValueField(wireName: r'hideIfRowsEmpty')
  bool? get hideIfRowsEmpty;

  @BuiltValueSerializer(custom: true)
  static Serializer<MatrixAllOf> get serializer => _$MatrixAllOfSerializer();
}

class _$MatrixAllOfSerializer implements PrimitiveSerializer<MatrixAllOf> {
  @override
  final Iterable<Type> types = const [MatrixAllOf];

  @override
  final String wireName = r'MatrixAllOf';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    MatrixAllOf object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.rowTitleWidth != null) {
      yield r'rowTitleWidth';
      yield serializers.serialize(
        object.rowTitleWidth,
        specifiedType: const FullType(String),
      );
    }
    if (object.columns != null) {
      yield r'columns';
      yield serializers.serialize(
        object.columns,
        specifiedType: const FullType(BuiltList, [FullType(Itemvalue)]),
      );
    }
    if (object.rows != null) {
      yield r'rows';
      yield serializers.serialize(
        object.rows,
        specifiedType: const FullType(BuiltList, [FullType(Itemvalue)]),
      );
    }
    if (object.cells != null) {
      yield r'cells';
      yield serializers.serialize(
        object.cells,
        specifiedType: const FullType(String),
      );
    }
    if (object.rowsOrder != null) {
      yield r'rowsOrder';
      yield serializers.serialize(
        object.rowsOrder,
        specifiedType: const FullType(MatrixRowsOrder),
      );
    }
    if (object.isAllRowRequired != null) {
      yield r'isAllRowRequired';
      yield serializers.serialize(
        object.isAllRowRequired,
        specifiedType: const FullType(bool),
      );
    }
    if (object.hideIfRowsEmpty != null) {
      yield r'hideIfRowsEmpty';
      yield serializers.serialize(
        object.hideIfRowsEmpty,
        specifiedType: const FullType(bool),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    MatrixAllOf object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  @override
  MatrixAllOf deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return serializers.deserialize(serialized, specifiedType: FullType($MatrixAllOf)) as $MatrixAllOf;
  }
}

/// a concrete implementation of [MatrixAllOf], since [MatrixAllOf] is not instantiable
@BuiltValue(instantiable: true)
abstract class $MatrixAllOf implements MatrixAllOf, Built<$MatrixAllOf, $MatrixAllOfBuilder> {
  $MatrixAllOf._();

  factory $MatrixAllOf([void Function($MatrixAllOfBuilder)? updates]) = _$$MatrixAllOf;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults($MatrixAllOfBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<$MatrixAllOf> get serializer => _$$MatrixAllOfSerializer();
}

class _$$MatrixAllOfSerializer implements PrimitiveSerializer<$MatrixAllOf> {
  @override
  final Iterable<Type> types = const [$MatrixAllOf, _$$MatrixAllOf];

  @override
  final String wireName = r'$MatrixAllOf';

  @override
  Object serialize(
    Serializers serializers,
    $MatrixAllOf object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return serializers.serialize(object, specifiedType: FullType(MatrixAllOf))!;
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required MatrixAllOfBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'rowTitleWidth':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.rowTitleWidth = valueDes;
          break;
        case r'columns':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(BuiltList, [FullType(Itemvalue)]),
          ) as BuiltList<Itemvalue>;
          result.columns.replace(valueDes);
          break;
        case r'rows':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(BuiltList, [FullType(Itemvalue)]),
          ) as BuiltList<Itemvalue>;
          result.rows.replace(valueDes);
          break;
        case r'cells':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.cells = valueDes;
          break;
        case r'rowsOrder':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(MatrixRowsOrder),
          ) as MatrixRowsOrder;
          result.rowsOrder = valueDes;
          break;
        case r'isAllRowRequired':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool;
          result.isAllRowRequired = valueDes;
          break;
        case r'hideIfRowsEmpty':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool;
          result.hideIfRowsEmpty = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  $MatrixAllOf deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = $MatrixAllOfBuilder();
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

