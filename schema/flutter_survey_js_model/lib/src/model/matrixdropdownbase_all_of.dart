//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:flutter_survey_js_model/src/model/matrixdropdownbase_cell_type.dart';
import 'package:flutter_survey_js_model/src/model/survey_logo_width.dart';
import 'package:built_collection/built_collection.dart';
import 'package:flutter_survey_js_model/src/model/selectbase_all_of_choices_inner.dart';
import 'package:flutter_survey_js_model/src/model/matrixdropdownbase_detail_panel_mode.dart';
import 'package:flutter_survey_js_model/src/model/matrixdropdowncolumn.dart';
import 'package:flutter_survey_js_model/src/model/matrixdropdownbase_column_col_count.dart';
import 'package:flutter_survey_js_model/src/model/matrixdropdownbase_column_layout.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'matrixdropdownbase_all_of.g.dart';

/// MatrixdropdownbaseAllOf
///
/// Properties:
/// * [columns] 
/// * [columnLayout] 
/// * [detailElements] 
/// * [detailPanelMode] 
/// * [horizontalScroll] 
/// * [choices] 
/// * [placeholder] 
/// * [keyDuplicationError] 
/// * [cellType] 
/// * [columnColCount] 
/// * [columnMinWidth] 
/// * [allowAdaptiveActions] 
@BuiltValue(instantiable: false)
abstract class MatrixdropdownbaseAllOf  {
  @BuiltValueField(wireName: r'columns')
  BuiltList<Matrixdropdowncolumn>? get columns;

  @BuiltValueField(wireName: r'columnLayout')
  MatrixdropdownbaseColumnLayout? get columnLayout;
  // enum columnLayoutEnum {  horizontal,  vertical,  };

  @BuiltValueField(wireName: r'detailElements')
  String? get detailElements;

  @BuiltValueField(wireName: r'detailPanelMode')
  MatrixdropdownbaseDetailPanelMode? get detailPanelMode;
  // enum detailPanelModeEnum {  none,  underRow,  underRowSingle,  };

  @BuiltValueField(wireName: r'horizontalScroll')
  bool? get horizontalScroll;

  @BuiltValueField(wireName: r'choices')
  BuiltList<SelectbaseAllOfChoicesInner>? get choices;

  @BuiltValueField(wireName: r'placeholder')
  String? get placeholder;

  @BuiltValueField(wireName: r'keyDuplicationError')
  String? get keyDuplicationError;

  @BuiltValueField(wireName: r'cellType')
  MatrixdropdownbaseCellType? get cellType;
  // enum cellTypeEnum {  dropdown,  checkbox,  radiogroup,  tagbox,  text,  comment,  boolean,  expression,  rating,  };

  @BuiltValueField(wireName: r'columnColCount')
  MatrixdropdownbaseColumnColCount? get columnColCount;
  // enum columnColCountEnum {  0,  1,  2,  3,  4,  };

  @BuiltValueField(wireName: r'columnMinWidth')
  SurveyLogoWidth? get columnMinWidth;

  @BuiltValueField(wireName: r'allowAdaptiveActions')
  bool? get allowAdaptiveActions;

  @BuiltValueSerializer(custom: true)
  static Serializer<MatrixdropdownbaseAllOf> get serializer => _$MatrixdropdownbaseAllOfSerializer();
}

class _$MatrixdropdownbaseAllOfSerializer implements PrimitiveSerializer<MatrixdropdownbaseAllOf> {
  @override
  final Iterable<Type> types = const [MatrixdropdownbaseAllOf];

  @override
  final String wireName = r'MatrixdropdownbaseAllOf';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    MatrixdropdownbaseAllOf object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.columns != null) {
      yield r'columns';
      yield serializers.serialize(
        object.columns,
        specifiedType: const FullType(BuiltList, [FullType(Matrixdropdowncolumn)]),
      );
    }
    if (object.columnLayout != null) {
      yield r'columnLayout';
      yield serializers.serialize(
        object.columnLayout,
        specifiedType: const FullType(MatrixdropdownbaseColumnLayout),
      );
    }
    if (object.detailElements != null) {
      yield r'detailElements';
      yield serializers.serialize(
        object.detailElements,
        specifiedType: const FullType(String),
      );
    }
    if (object.detailPanelMode != null) {
      yield r'detailPanelMode';
      yield serializers.serialize(
        object.detailPanelMode,
        specifiedType: const FullType(MatrixdropdownbaseDetailPanelMode),
      );
    }
    if (object.horizontalScroll != null) {
      yield r'horizontalScroll';
      yield serializers.serialize(
        object.horizontalScroll,
        specifiedType: const FullType(bool),
      );
    }
    if (object.choices != null) {
      yield r'choices';
      yield serializers.serialize(
        object.choices,
        specifiedType: const FullType(BuiltList, [FullType(SelectbaseAllOfChoicesInner)]),
      );
    }
    if (object.placeholder != null) {
      yield r'placeholder';
      yield serializers.serialize(
        object.placeholder,
        specifiedType: const FullType(String),
      );
    }
    if (object.keyDuplicationError != null) {
      yield r'keyDuplicationError';
      yield serializers.serialize(
        object.keyDuplicationError,
        specifiedType: const FullType(String),
      );
    }
    if (object.cellType != null) {
      yield r'cellType';
      yield serializers.serialize(
        object.cellType,
        specifiedType: const FullType(MatrixdropdownbaseCellType),
      );
    }
    if (object.columnColCount != null) {
      yield r'columnColCount';
      yield serializers.serialize(
        object.columnColCount,
        specifiedType: const FullType(MatrixdropdownbaseColumnColCount),
      );
    }
    if (object.columnMinWidth != null) {
      yield r'columnMinWidth';
      yield serializers.serialize(
        object.columnMinWidth,
        specifiedType: const FullType(SurveyLogoWidth),
      );
    }
    if (object.allowAdaptiveActions != null) {
      yield r'allowAdaptiveActions';
      yield serializers.serialize(
        object.allowAdaptiveActions,
        specifiedType: const FullType(bool),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    MatrixdropdownbaseAllOf object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  @override
  MatrixdropdownbaseAllOf deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return serializers.deserialize(serialized, specifiedType: FullType($MatrixdropdownbaseAllOf)) as $MatrixdropdownbaseAllOf;
  }
}

/// a concrete implementation of [MatrixdropdownbaseAllOf], since [MatrixdropdownbaseAllOf] is not instantiable
@BuiltValue(instantiable: true)
abstract class $MatrixdropdownbaseAllOf implements MatrixdropdownbaseAllOf, Built<$MatrixdropdownbaseAllOf, $MatrixdropdownbaseAllOfBuilder> {
  $MatrixdropdownbaseAllOf._();

  factory $MatrixdropdownbaseAllOf([void Function($MatrixdropdownbaseAllOfBuilder)? updates]) = _$$MatrixdropdownbaseAllOf;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults($MatrixdropdownbaseAllOfBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<$MatrixdropdownbaseAllOf> get serializer => _$$MatrixdropdownbaseAllOfSerializer();
}

class _$$MatrixdropdownbaseAllOfSerializer implements PrimitiveSerializer<$MatrixdropdownbaseAllOf> {
  @override
  final Iterable<Type> types = const [$MatrixdropdownbaseAllOf, _$$MatrixdropdownbaseAllOf];

  @override
  final String wireName = r'$MatrixdropdownbaseAllOf';

  @override
  Object serialize(
    Serializers serializers,
    $MatrixdropdownbaseAllOf object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return serializers.serialize(object, specifiedType: FullType(MatrixdropdownbaseAllOf))!;
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required MatrixdropdownbaseAllOfBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'columns':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(BuiltList, [FullType(Matrixdropdowncolumn)]),
          ) as BuiltList<Matrixdropdowncolumn>;
          result.columns.replace(valueDes);
          break;
        case r'columnLayout':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(MatrixdropdownbaseColumnLayout),
          ) as MatrixdropdownbaseColumnLayout;
          result.columnLayout = valueDes;
          break;
        case r'detailElements':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.detailElements = valueDes;
          break;
        case r'detailPanelMode':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(MatrixdropdownbaseDetailPanelMode),
          ) as MatrixdropdownbaseDetailPanelMode;
          result.detailPanelMode = valueDes;
          break;
        case r'horizontalScroll':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool;
          result.horizontalScroll = valueDes;
          break;
        case r'choices':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(BuiltList, [FullType(SelectbaseAllOfChoicesInner)]),
          ) as BuiltList<SelectbaseAllOfChoicesInner>;
          result.choices.replace(valueDes);
          break;
        case r'placeholder':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.placeholder = valueDes;
          break;
        case r'keyDuplicationError':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.keyDuplicationError = valueDes;
          break;
        case r'cellType':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(MatrixdropdownbaseCellType),
          ) as MatrixdropdownbaseCellType;
          result.cellType = valueDes;
          break;
        case r'columnColCount':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(MatrixdropdownbaseColumnColCount),
          ) as MatrixdropdownbaseColumnColCount;
          result.columnColCount = valueDes;
          break;
        case r'columnMinWidth':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(SurveyLogoWidth),
          ) as SurveyLogoWidth;
          result.columnMinWidth.replace(valueDes);
          break;
        case r'allowAdaptiveActions':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool;
          result.allowAdaptiveActions = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  $MatrixdropdownbaseAllOf deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = $MatrixdropdownbaseAllOfBuilder();
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

