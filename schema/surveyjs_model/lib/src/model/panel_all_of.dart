//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:surveyjs_model/src/model/panel_inner_indent.dart';
import 'package:surveyjs_model/src/model/panel_show_question_numbers.dart';
import 'package:surveyjs_model/src/model/panel_indent.dart';
import 'package:surveyjs_model/src/model/panel_state.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'panel_all_of.g.dart';

/// PanelAllOf
///
/// Properties:
/// * [state] 
/// * [isRequired] 
/// * [requiredErrorText] 
/// * [startWithNewLine] 
/// * [width] 
/// * [minWidth] 
/// * [maxWidth] 
/// * [innerIndent] 
/// * [indent] 
/// * [page] 
/// * [showNumber] 
/// * [showQuestionNumbers] 
/// * [questionStartIndex] 
/// * [allowAdaptiveActions] 
@BuiltValue(instantiable: false)
abstract class PanelAllOf  {
  @BuiltValueField(wireName: r'state')
  PanelState? get state;
  // enum stateEnum {  default,  collapsed,  expanded,  };

  @BuiltValueField(wireName: r'isRequired')
  String? get isRequired;

  @BuiltValueField(wireName: r'requiredErrorText')
  String? get requiredErrorText;

  @BuiltValueField(wireName: r'startWithNewLine')
  bool? get startWithNewLine;

  @BuiltValueField(wireName: r'width')
  String? get width;

  @BuiltValueField(wireName: r'minWidth')
  String? get minWidth;

  @BuiltValueField(wireName: r'maxWidth')
  String? get maxWidth;

  @BuiltValueField(wireName: r'innerIndent')
  PanelInnerIndent? get innerIndent;
  // enum innerIndentEnum {  0,  1,  2,  3,  };

  @BuiltValueField(wireName: r'indent')
  PanelIndent? get indent;
  // enum indentEnum {  0,  1,  2,  3,  };

  @BuiltValueField(wireName: r'page')
  String? get page;

  @BuiltValueField(wireName: r'showNumber')
  bool? get showNumber;

  @BuiltValueField(wireName: r'showQuestionNumbers')
  PanelShowQuestionNumbers? get showQuestionNumbers;
  // enum showQuestionNumbersEnum {  default,  onpanel,  false,  };

  @BuiltValueField(wireName: r'questionStartIndex')
  String? get questionStartIndex;

  @BuiltValueField(wireName: r'allowAdaptiveActions')
  bool? get allowAdaptiveActions;

  @BuiltValueSerializer(custom: true)
  static Serializer<PanelAllOf> get serializer => _$PanelAllOfSerializer();
}

class _$PanelAllOfSerializer implements PrimitiveSerializer<PanelAllOf> {
  @override
  final Iterable<Type> types = const [PanelAllOf];

  @override
  final String wireName = r'PanelAllOf';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    PanelAllOf object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.state != null) {
      yield r'state';
      yield serializers.serialize(
        object.state,
        specifiedType: const FullType(PanelState),
      );
    }
    if (object.isRequired != null) {
      yield r'isRequired';
      yield serializers.serialize(
        object.isRequired,
        specifiedType: const FullType(String),
      );
    }
    if (object.requiredErrorText != null) {
      yield r'requiredErrorText';
      yield serializers.serialize(
        object.requiredErrorText,
        specifiedType: const FullType(String),
      );
    }
    if (object.startWithNewLine != null) {
      yield r'startWithNewLine';
      yield serializers.serialize(
        object.startWithNewLine,
        specifiedType: const FullType(bool),
      );
    }
    if (object.width != null) {
      yield r'width';
      yield serializers.serialize(
        object.width,
        specifiedType: const FullType(String),
      );
    }
    if (object.minWidth != null) {
      yield r'minWidth';
      yield serializers.serialize(
        object.minWidth,
        specifiedType: const FullType(String),
      );
    }
    if (object.maxWidth != null) {
      yield r'maxWidth';
      yield serializers.serialize(
        object.maxWidth,
        specifiedType: const FullType(String),
      );
    }
    if (object.innerIndent != null) {
      yield r'innerIndent';
      yield serializers.serialize(
        object.innerIndent,
        specifiedType: const FullType(PanelInnerIndent),
      );
    }
    if (object.indent != null) {
      yield r'indent';
      yield serializers.serialize(
        object.indent,
        specifiedType: const FullType(PanelIndent),
      );
    }
    if (object.page != null) {
      yield r'page';
      yield serializers.serialize(
        object.page,
        specifiedType: const FullType(String),
      );
    }
    if (object.showNumber != null) {
      yield r'showNumber';
      yield serializers.serialize(
        object.showNumber,
        specifiedType: const FullType(bool),
      );
    }
    if (object.showQuestionNumbers != null) {
      yield r'showQuestionNumbers';
      yield serializers.serialize(
        object.showQuestionNumbers,
        specifiedType: const FullType(PanelShowQuestionNumbers),
      );
    }
    if (object.questionStartIndex != null) {
      yield r'questionStartIndex';
      yield serializers.serialize(
        object.questionStartIndex,
        specifiedType: const FullType(String),
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
    PanelAllOf object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  @override
  PanelAllOf deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return serializers.deserialize(serialized, specifiedType: FullType($PanelAllOf)) as $PanelAllOf;
  }
}

/// a concrete implementation of [PanelAllOf], since [PanelAllOf] is not instantiable
@BuiltValue(instantiable: true)
abstract class $PanelAllOf implements PanelAllOf, Built<$PanelAllOf, $PanelAllOfBuilder> {
  $PanelAllOf._();

  factory $PanelAllOf([void Function($PanelAllOfBuilder)? updates]) = _$$PanelAllOf;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults($PanelAllOfBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<$PanelAllOf> get serializer => _$$PanelAllOfSerializer();
}

class _$$PanelAllOfSerializer implements PrimitiveSerializer<$PanelAllOf> {
  @override
  final Iterable<Type> types = const [$PanelAllOf, _$$PanelAllOf];

  @override
  final String wireName = r'$PanelAllOf';

  @override
  Object serialize(
    Serializers serializers,
    $PanelAllOf object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return serializers.serialize(object, specifiedType: FullType(PanelAllOf))!;
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required PanelAllOfBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'state':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(PanelState),
          ) as PanelState;
          result.state = valueDes;
          break;
        case r'isRequired':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.isRequired = valueDes;
          break;
        case r'requiredErrorText':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.requiredErrorText = valueDes;
          break;
        case r'startWithNewLine':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool;
          result.startWithNewLine = valueDes;
          break;
        case r'width':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.width = valueDes;
          break;
        case r'minWidth':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.minWidth = valueDes;
          break;
        case r'maxWidth':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.maxWidth = valueDes;
          break;
        case r'innerIndent':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(PanelInnerIndent),
          ) as PanelInnerIndent;
          result.innerIndent = valueDes;
          break;
        case r'indent':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(PanelIndent),
          ) as PanelIndent;
          result.indent = valueDes;
          break;
        case r'page':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.page = valueDes;
          break;
        case r'showNumber':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool;
          result.showNumber = valueDes;
          break;
        case r'showQuestionNumbers':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(PanelShowQuestionNumbers),
          ) as PanelShowQuestionNumbers;
          result.showQuestionNumbers = valueDes;
          break;
        case r'questionStartIndex':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.questionStartIndex = valueDes;
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
  $PanelAllOf deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = $PanelAllOfBuilder();
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

