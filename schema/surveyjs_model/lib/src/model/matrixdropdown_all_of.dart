//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:surveyjs_model/src/model/itemvalue.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'matrixdropdown_all_of.g.dart';

/// MatrixdropdownAllOf
///
/// Properties:
/// * [rows] 
/// * [rowsVisibleIf] 
/// * [rowTitleWidth] 
/// * [totalText] 
/// * [hideIfRowsEmpty] 
@BuiltValue(instantiable: false)
abstract class MatrixdropdownAllOf  {
  @BuiltValueField(wireName: r'rows')
  BuiltList<Itemvalue>? get rows;

  @BuiltValueField(wireName: r'rowsVisibleIf')
  String? get rowsVisibleIf;

  @BuiltValueField(wireName: r'rowTitleWidth')
  String? get rowTitleWidth;

  @BuiltValueField(wireName: r'totalText')
  String? get totalText;

  @BuiltValueField(wireName: r'hideIfRowsEmpty')
  bool? get hideIfRowsEmpty;

  @BuiltValueSerializer(custom: true)
  static Serializer<MatrixdropdownAllOf> get serializer => _$MatrixdropdownAllOfSerializer();
}

class _$MatrixdropdownAllOfSerializer implements PrimitiveSerializer<MatrixdropdownAllOf> {
  @override
  final Iterable<Type> types = const [MatrixdropdownAllOf];

  @override
  final String wireName = r'MatrixdropdownAllOf';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    MatrixdropdownAllOf object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.rows != null) {
      yield r'rows';
      yield serializers.serialize(
        object.rows,
        specifiedType: const FullType(BuiltList, [FullType(Itemvalue)]),
      );
    }
    if (object.rowsVisibleIf != null) {
      yield r'rowsVisibleIf';
      yield serializers.serialize(
        object.rowsVisibleIf,
        specifiedType: const FullType(String),
      );
    }
    if (object.rowTitleWidth != null) {
      yield r'rowTitleWidth';
      yield serializers.serialize(
        object.rowTitleWidth,
        specifiedType: const FullType(String),
      );
    }
    if (object.totalText != null) {
      yield r'totalText';
      yield serializers.serialize(
        object.totalText,
        specifiedType: const FullType(String),
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
    MatrixdropdownAllOf object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  @override
  MatrixdropdownAllOf deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return serializers.deserialize(serialized, specifiedType: FullType($MatrixdropdownAllOf)) as $MatrixdropdownAllOf;
  }
}

/// a concrete implementation of [MatrixdropdownAllOf], since [MatrixdropdownAllOf] is not instantiable
@BuiltValue(instantiable: true)
abstract class $MatrixdropdownAllOf implements MatrixdropdownAllOf, Built<$MatrixdropdownAllOf, $MatrixdropdownAllOfBuilder> {
  $MatrixdropdownAllOf._();

  factory $MatrixdropdownAllOf([void Function($MatrixdropdownAllOfBuilder)? updates]) = _$$MatrixdropdownAllOf;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults($MatrixdropdownAllOfBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<$MatrixdropdownAllOf> get serializer => _$$MatrixdropdownAllOfSerializer();
}

class _$$MatrixdropdownAllOfSerializer implements PrimitiveSerializer<$MatrixdropdownAllOf> {
  @override
  final Iterable<Type> types = const [$MatrixdropdownAllOf, _$$MatrixdropdownAllOf];

  @override
  final String wireName = r'$MatrixdropdownAllOf';

  @override
  Object serialize(
    Serializers serializers,
    $MatrixdropdownAllOf object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return serializers.serialize(object, specifiedType: FullType(MatrixdropdownAllOf))!;
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required MatrixdropdownAllOfBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'rows':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(BuiltList, [FullType(Itemvalue)]),
          ) as BuiltList<Itemvalue>;
          result.rows.replace(valueDes);
          break;
        case r'rowsVisibleIf':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.rowsVisibleIf = valueDes;
          break;
        case r'rowTitleWidth':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.rowTitleWidth = valueDes;
          break;
        case r'totalText':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.totalText = valueDes;
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
  $MatrixdropdownAllOf deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = $MatrixdropdownAllOfBuilder();
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

