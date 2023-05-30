//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:flutter_survey_js_model/src/model/survey_logo_width.dart';
import 'package:flutter_survey_js_model/src/model/matrixbase_vertical_align.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'matrixbase_all_of.g.dart';

/// MatrixbaseAllOf
///
/// Properties:
/// * [showCommentArea] 
/// * [columnsVisibleIf] 
/// * [rowsVisibleIf] 
/// * [columnMinWidth] 
/// * [showHeader] 
/// * [verticalAlign] 
/// * [alternateRows] 
@BuiltValue(instantiable: false)
abstract class MatrixbaseAllOf  {
  @BuiltValueField(wireName: r'showCommentArea')
  bool? get showCommentArea;

  @BuiltValueField(wireName: r'columnsVisibleIf')
  String? get columnsVisibleIf;

  @BuiltValueField(wireName: r'rowsVisibleIf')
  String? get rowsVisibleIf;

  @BuiltValueField(wireName: r'columnMinWidth')
  SurveyLogoWidth? get columnMinWidth;

  @BuiltValueField(wireName: r'showHeader')
  bool? get showHeader;

  @BuiltValueField(wireName: r'verticalAlign')
  MatrixbaseVerticalAlign? get verticalAlign;
  // enum verticalAlignEnum {  top,  middle,  };

  @BuiltValueField(wireName: r'alternateRows')
  bool? get alternateRows;

  @BuiltValueSerializer(custom: true)
  static Serializer<MatrixbaseAllOf> get serializer => _$MatrixbaseAllOfSerializer();
}

class _$MatrixbaseAllOfSerializer implements PrimitiveSerializer<MatrixbaseAllOf> {
  @override
  final Iterable<Type> types = const [MatrixbaseAllOf];

  @override
  final String wireName = r'MatrixbaseAllOf';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    MatrixbaseAllOf object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.showCommentArea != null) {
      yield r'showCommentArea';
      yield serializers.serialize(
        object.showCommentArea,
        specifiedType: const FullType(bool),
      );
    }
    if (object.columnsVisibleIf != null) {
      yield r'columnsVisibleIf';
      yield serializers.serialize(
        object.columnsVisibleIf,
        specifiedType: const FullType(String),
      );
    }
    if (object.rowsVisibleIf != null) {
      yield r'rowsVisibleIf';
      yield serializers.serialize(
        object.rowsVisibleIf,
        specifiedType: const FullType(String),
      );
    }
    if (object.columnMinWidth != null) {
      yield r'columnMinWidth';
      yield serializers.serialize(
        object.columnMinWidth,
        specifiedType: const FullType(SurveyLogoWidth),
      );
    }
    if (object.showHeader != null) {
      yield r'showHeader';
      yield serializers.serialize(
        object.showHeader,
        specifiedType: const FullType(bool),
      );
    }
    if (object.verticalAlign != null) {
      yield r'verticalAlign';
      yield serializers.serialize(
        object.verticalAlign,
        specifiedType: const FullType(MatrixbaseVerticalAlign),
      );
    }
    if (object.alternateRows != null) {
      yield r'alternateRows';
      yield serializers.serialize(
        object.alternateRows,
        specifiedType: const FullType(bool),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    MatrixbaseAllOf object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  @override
  MatrixbaseAllOf deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return serializers.deserialize(serialized, specifiedType: FullType($MatrixbaseAllOf)) as $MatrixbaseAllOf;
  }
}

/// a concrete implementation of [MatrixbaseAllOf], since [MatrixbaseAllOf] is not instantiable
@BuiltValue(instantiable: true)
abstract class $MatrixbaseAllOf implements MatrixbaseAllOf, Built<$MatrixbaseAllOf, $MatrixbaseAllOfBuilder> {
  $MatrixbaseAllOf._();

  factory $MatrixbaseAllOf([void Function($MatrixbaseAllOfBuilder)? updates]) = _$$MatrixbaseAllOf;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults($MatrixbaseAllOfBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<$MatrixbaseAllOf> get serializer => _$$MatrixbaseAllOfSerializer();
}

class _$$MatrixbaseAllOfSerializer implements PrimitiveSerializer<$MatrixbaseAllOf> {
  @override
  final Iterable<Type> types = const [$MatrixbaseAllOf, _$$MatrixbaseAllOf];

  @override
  final String wireName = r'$MatrixbaseAllOf';

  @override
  Object serialize(
    Serializers serializers,
    $MatrixbaseAllOf object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return serializers.serialize(object, specifiedType: FullType(MatrixbaseAllOf))!;
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required MatrixbaseAllOfBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'showCommentArea':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool;
          result.showCommentArea = valueDes;
          break;
        case r'columnsVisibleIf':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.columnsVisibleIf = valueDes;
          break;
        case r'rowsVisibleIf':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.rowsVisibleIf = valueDes;
          break;
        case r'columnMinWidth':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(SurveyLogoWidth),
          ) as SurveyLogoWidth;
          result.columnMinWidth.replace(valueDes);
          break;
        case r'showHeader':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool;
          result.showHeader = valueDes;
          break;
        case r'verticalAlign':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(MatrixbaseVerticalAlign),
          ) as MatrixbaseVerticalAlign;
          result.verticalAlign = valueDes;
          break;
        case r'alternateRows':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool;
          result.alternateRows = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  $MatrixbaseAllOf deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = $MatrixbaseAllOfBuilder();
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

