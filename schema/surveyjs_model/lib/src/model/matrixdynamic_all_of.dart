//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:surveyjs_model/src/model/matrixdynamic_add_row_location.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'matrixdynamic_all_of.g.dart';

/// MatrixdynamicAllOf
///
/// Properties:
/// * [rowsVisibleIf] 
/// * [allowAddRows] 
/// * [allowRemoveRows] 
/// * [rowCount] 
/// * [minRowCount] 
/// * [maxRowCount] 
/// * [keyName] 
/// * [defaultRowValue] 
/// * [defaultValueFromLastRow] 
/// * [confirmDelete] 
/// * [confirmDeleteText] 
/// * [addRowLocation] 
/// * [addRowText] 
/// * [removeRowText] 
/// * [hideColumnsIfEmpty] 
/// * [emptyRowsText] 
/// * [detailPanelShowOnAdding] 
/// * [allowRowsDragAndDrop] 
@BuiltValue(instantiable: false)
abstract class MatrixdynamicAllOf  {
  @BuiltValueField(wireName: r'rowsVisibleIf')
  String? get rowsVisibleIf;

  @BuiltValueField(wireName: r'allowAddRows')
  bool? get allowAddRows;

  @BuiltValueField(wireName: r'allowRemoveRows')
  bool? get allowRemoveRows;

  @BuiltValueField(wireName: r'rowCount')
  num? get rowCount;

  @BuiltValueField(wireName: r'minRowCount')
  num? get minRowCount;

  @BuiltValueField(wireName: r'maxRowCount')
  num? get maxRowCount;

  @BuiltValueField(wireName: r'keyName')
  String? get keyName;

  @BuiltValueField(wireName: r'defaultRowValue')
  String? get defaultRowValue;

  @BuiltValueField(wireName: r'defaultValueFromLastRow')
  bool? get defaultValueFromLastRow;

  @BuiltValueField(wireName: r'confirmDelete')
  bool? get confirmDelete;

  @BuiltValueField(wireName: r'confirmDeleteText')
  String? get confirmDeleteText;

  @BuiltValueField(wireName: r'addRowLocation')
  MatrixdynamicAddRowLocation? get addRowLocation;
  // enum addRowLocationEnum {  default,  top,  bottom,  topBottom,  };

  @BuiltValueField(wireName: r'addRowText')
  String? get addRowText;

  @BuiltValueField(wireName: r'removeRowText')
  String? get removeRowText;

  @BuiltValueField(wireName: r'hideColumnsIfEmpty')
  bool? get hideColumnsIfEmpty;

  @BuiltValueField(wireName: r'emptyRowsText')
  String? get emptyRowsText;

  @BuiltValueField(wireName: r'detailPanelShowOnAdding')
  bool? get detailPanelShowOnAdding;

  @BuiltValueField(wireName: r'allowRowsDragAndDrop')
  String? get allowRowsDragAndDrop;

  @BuiltValueSerializer(custom: true)
  static Serializer<MatrixdynamicAllOf> get serializer => _$MatrixdynamicAllOfSerializer();
}

class _$MatrixdynamicAllOfSerializer implements PrimitiveSerializer<MatrixdynamicAllOf> {
  @override
  final Iterable<Type> types = const [MatrixdynamicAllOf];

  @override
  final String wireName = r'MatrixdynamicAllOf';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    MatrixdynamicAllOf object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.rowsVisibleIf != null) {
      yield r'rowsVisibleIf';
      yield serializers.serialize(
        object.rowsVisibleIf,
        specifiedType: const FullType(String),
      );
    }
    if (object.allowAddRows != null) {
      yield r'allowAddRows';
      yield serializers.serialize(
        object.allowAddRows,
        specifiedType: const FullType(bool),
      );
    }
    if (object.allowRemoveRows != null) {
      yield r'allowRemoveRows';
      yield serializers.serialize(
        object.allowRemoveRows,
        specifiedType: const FullType(bool),
      );
    }
    if (object.rowCount != null) {
      yield r'rowCount';
      yield serializers.serialize(
        object.rowCount,
        specifiedType: const FullType(num),
      );
    }
    if (object.minRowCount != null) {
      yield r'minRowCount';
      yield serializers.serialize(
        object.minRowCount,
        specifiedType: const FullType(num),
      );
    }
    if (object.maxRowCount != null) {
      yield r'maxRowCount';
      yield serializers.serialize(
        object.maxRowCount,
        specifiedType: const FullType(num),
      );
    }
    if (object.keyName != null) {
      yield r'keyName';
      yield serializers.serialize(
        object.keyName,
        specifiedType: const FullType(String),
      );
    }
    if (object.defaultRowValue != null) {
      yield r'defaultRowValue';
      yield serializers.serialize(
        object.defaultRowValue,
        specifiedType: const FullType(String),
      );
    }
    if (object.defaultValueFromLastRow != null) {
      yield r'defaultValueFromLastRow';
      yield serializers.serialize(
        object.defaultValueFromLastRow,
        specifiedType: const FullType(bool),
      );
    }
    if (object.confirmDelete != null) {
      yield r'confirmDelete';
      yield serializers.serialize(
        object.confirmDelete,
        specifiedType: const FullType(bool),
      );
    }
    if (object.confirmDeleteText != null) {
      yield r'confirmDeleteText';
      yield serializers.serialize(
        object.confirmDeleteText,
        specifiedType: const FullType(String),
      );
    }
    if (object.addRowLocation != null) {
      yield r'addRowLocation';
      yield serializers.serialize(
        object.addRowLocation,
        specifiedType: const FullType(MatrixdynamicAddRowLocation),
      );
    }
    if (object.addRowText != null) {
      yield r'addRowText';
      yield serializers.serialize(
        object.addRowText,
        specifiedType: const FullType(String),
      );
    }
    if (object.removeRowText != null) {
      yield r'removeRowText';
      yield serializers.serialize(
        object.removeRowText,
        specifiedType: const FullType(String),
      );
    }
    if (object.hideColumnsIfEmpty != null) {
      yield r'hideColumnsIfEmpty';
      yield serializers.serialize(
        object.hideColumnsIfEmpty,
        specifiedType: const FullType(bool),
      );
    }
    if (object.emptyRowsText != null) {
      yield r'emptyRowsText';
      yield serializers.serialize(
        object.emptyRowsText,
        specifiedType: const FullType(String),
      );
    }
    if (object.detailPanelShowOnAdding != null) {
      yield r'detailPanelShowOnAdding';
      yield serializers.serialize(
        object.detailPanelShowOnAdding,
        specifiedType: const FullType(bool),
      );
    }
    if (object.allowRowsDragAndDrop != null) {
      yield r'allowRowsDragAndDrop';
      yield serializers.serialize(
        object.allowRowsDragAndDrop,
        specifiedType: const FullType(String),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    MatrixdynamicAllOf object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  @override
  MatrixdynamicAllOf deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return serializers.deserialize(serialized, specifiedType: FullType($MatrixdynamicAllOf)) as $MatrixdynamicAllOf;
  }
}

/// a concrete implementation of [MatrixdynamicAllOf], since [MatrixdynamicAllOf] is not instantiable
@BuiltValue(instantiable: true)
abstract class $MatrixdynamicAllOf implements MatrixdynamicAllOf, Built<$MatrixdynamicAllOf, $MatrixdynamicAllOfBuilder> {
  $MatrixdynamicAllOf._();

  factory $MatrixdynamicAllOf([void Function($MatrixdynamicAllOfBuilder)? updates]) = _$$MatrixdynamicAllOf;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults($MatrixdynamicAllOfBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<$MatrixdynamicAllOf> get serializer => _$$MatrixdynamicAllOfSerializer();
}

class _$$MatrixdynamicAllOfSerializer implements PrimitiveSerializer<$MatrixdynamicAllOf> {
  @override
  final Iterable<Type> types = const [$MatrixdynamicAllOf, _$$MatrixdynamicAllOf];

  @override
  final String wireName = r'$MatrixdynamicAllOf';

  @override
  Object serialize(
    Serializers serializers,
    $MatrixdynamicAllOf object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return serializers.serialize(object, specifiedType: FullType(MatrixdynamicAllOf))!;
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required MatrixdynamicAllOfBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'rowsVisibleIf':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.rowsVisibleIf = valueDes;
          break;
        case r'allowAddRows':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool;
          result.allowAddRows = valueDes;
          break;
        case r'allowRemoveRows':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool;
          result.allowRemoveRows = valueDes;
          break;
        case r'rowCount':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(num),
          ) as num;
          result.rowCount = valueDes;
          break;
        case r'minRowCount':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(num),
          ) as num;
          result.minRowCount = valueDes;
          break;
        case r'maxRowCount':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(num),
          ) as num;
          result.maxRowCount = valueDes;
          break;
        case r'keyName':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.keyName = valueDes;
          break;
        case r'defaultRowValue':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.defaultRowValue = valueDes;
          break;
        case r'defaultValueFromLastRow':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool;
          result.defaultValueFromLastRow = valueDes;
          break;
        case r'confirmDelete':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool;
          result.confirmDelete = valueDes;
          break;
        case r'confirmDeleteText':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.confirmDeleteText = valueDes;
          break;
        case r'addRowLocation':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(MatrixdynamicAddRowLocation),
          ) as MatrixdynamicAddRowLocation;
          result.addRowLocation = valueDes;
          break;
        case r'addRowText':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.addRowText = valueDes;
          break;
        case r'removeRowText':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.removeRowText = valueDes;
          break;
        case r'hideColumnsIfEmpty':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool;
          result.hideColumnsIfEmpty = valueDes;
          break;
        case r'emptyRowsText':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.emptyRowsText = valueDes;
          break;
        case r'detailPanelShowOnAdding':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool;
          result.detailPanelShowOnAdding = valueDes;
          break;
        case r'allowRowsDragAndDrop':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.allowRowsDragAndDrop = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  $MatrixdynamicAllOf deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = $MatrixdynamicAllOfBuilder();
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

