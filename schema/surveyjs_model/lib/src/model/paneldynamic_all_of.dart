//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:surveyjs_model/src/model/paneldynamic_panel_count.dart';
import 'package:built_collection/built_collection.dart';
import 'package:surveyjs_model/src/model/paneldynamic_panel_remove_button_location.dart';
import 'package:surveyjs_model/src/model/paneldynamic_template_title_location.dart';
import 'package:surveyjs_model/src/model/paneldynamic_panels_state.dart';
import 'package:surveyjs_model/src/model/element_base.dart';
import 'package:surveyjs_model/src/model/paneldynamic_render_mode.dart';
import 'package:surveyjs_model/src/model/paneldynamic_show_question_numbers.dart';
import 'package:surveyjs_model/src/model/paneldynamic_tab_align.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'paneldynamic_all_of.g.dart';

/// PaneldynamicAllOf
///
/// Properties:
/// * [showCommentArea] 
/// * [templateElements] 
/// * [templateTitle] 
/// * [templateTabTitle] 
/// * [templateDescription] 
/// * [minWidth] 
/// * [noEntriesText] 
/// * [allowAddPanel] 
/// * [allowRemovePanel] 
/// * [panelCount] 
/// * [minPanelCount] 
/// * [maxPanelCount] 
/// * [defaultPanelValue] 
/// * [defaultValueFromLastPanel] 
/// * [panelsState] 
/// * [keyName] 
/// * [keyDuplicationError] 
/// * [confirmDelete] 
/// * [confirmDeleteText] 
/// * [panelAddText] 
/// * [panelRemoveText] 
/// * [panelPrevText] 
/// * [panelNextText] 
/// * [showQuestionNumbers] 
/// * [showRangeInProgress] 
/// * [renderMode] 
/// * [tabAlign] 
/// * [templateTitleLocation] 
/// * [panelRemoveButtonLocation] 
@BuiltValue(instantiable: false)
abstract class PaneldynamicAllOf  {
  @BuiltValueField(wireName: r'showCommentArea')
  String? get showCommentArea;

  @BuiltValueField(wireName: r'templateElements')
  BuiltList<ElementBase>? get templateElements;

  @BuiltValueField(wireName: r'templateTitle')
  String? get templateTitle;

  @BuiltValueField(wireName: r'templateTabTitle')
  String? get templateTabTitle;

  @BuiltValueField(wireName: r'templateDescription')
  String? get templateDescription;

  @BuiltValueField(wireName: r'minWidth')
  String? get minWidth;

  @BuiltValueField(wireName: r'noEntriesText')
  String? get noEntriesText;

  @BuiltValueField(wireName: r'allowAddPanel')
  bool? get allowAddPanel;

  @BuiltValueField(wireName: r'allowRemovePanel')
  bool? get allowRemovePanel;

  @BuiltValueField(wireName: r'panelCount')
  PaneldynamicPanelCount? get panelCount;
  // enum panelCountEnum {  0,  1,  2,  3,  4,  5,  6,  7,  8,  9,  10,  };

  @BuiltValueField(wireName: r'minPanelCount')
  num? get minPanelCount;

  @BuiltValueField(wireName: r'maxPanelCount')
  num? get maxPanelCount;

  @BuiltValueField(wireName: r'defaultPanelValue')
  String? get defaultPanelValue;

  @BuiltValueField(wireName: r'defaultValueFromLastPanel')
  bool? get defaultValueFromLastPanel;

  @BuiltValueField(wireName: r'panelsState')
  PaneldynamicPanelsState? get panelsState;
  // enum panelsStateEnum {  default,  collapsed,  expanded,  firstExpanded,  };

  @BuiltValueField(wireName: r'keyName')
  String? get keyName;

  @BuiltValueField(wireName: r'keyDuplicationError')
  String? get keyDuplicationError;

  @BuiltValueField(wireName: r'confirmDelete')
  bool? get confirmDelete;

  @BuiltValueField(wireName: r'confirmDeleteText')
  String? get confirmDeleteText;

  @BuiltValueField(wireName: r'panelAddText')
  String? get panelAddText;

  @BuiltValueField(wireName: r'panelRemoveText')
  String? get panelRemoveText;

  @BuiltValueField(wireName: r'panelPrevText')
  String? get panelPrevText;

  @BuiltValueField(wireName: r'panelNextText')
  String? get panelNextText;

  @BuiltValueField(wireName: r'showQuestionNumbers')
  PaneldynamicShowQuestionNumbers? get showQuestionNumbers;
  // enum showQuestionNumbersEnum {  false,  onPanel,  onSurvey,  };

  @BuiltValueField(wireName: r'showRangeInProgress')
  bool? get showRangeInProgress;

  @BuiltValueField(wireName: r'renderMode')
  PaneldynamicRenderMode? get renderMode;
  // enum renderModeEnum {  list,  progressTop,  progressBottom,  progressTopBottom,  tab,  };

  @BuiltValueField(wireName: r'tabAlign')
  PaneldynamicTabAlign? get tabAlign;
  // enum tabAlignEnum {  center,  left,  right,  };

  @BuiltValueField(wireName: r'templateTitleLocation')
  PaneldynamicTemplateTitleLocation? get templateTitleLocation;
  // enum templateTitleLocationEnum {  default,  top,  bottom,  left,  };

  @BuiltValueField(wireName: r'panelRemoveButtonLocation')
  PaneldynamicPanelRemoveButtonLocation? get panelRemoveButtonLocation;
  // enum panelRemoveButtonLocationEnum {  bottom,  right,  };

  @BuiltValueSerializer(custom: true)
  static Serializer<PaneldynamicAllOf> get serializer => _$PaneldynamicAllOfSerializer();
}

class _$PaneldynamicAllOfSerializer implements PrimitiveSerializer<PaneldynamicAllOf> {
  @override
  final Iterable<Type> types = const [PaneldynamicAllOf];

  @override
  final String wireName = r'PaneldynamicAllOf';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    PaneldynamicAllOf object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.showCommentArea != null) {
      yield r'showCommentArea';
      yield serializers.serialize(
        object.showCommentArea,
        specifiedType: const FullType(String),
      );
    }
    if (object.templateElements != null) {
      yield r'templateElements';
      yield serializers.serialize(
        object.templateElements,
        specifiedType: const FullType(BuiltList, [FullType(ElementBase)]),
      );
    }
    if (object.templateTitle != null) {
      yield r'templateTitle';
      yield serializers.serialize(
        object.templateTitle,
        specifiedType: const FullType(String),
      );
    }
    if (object.templateTabTitle != null) {
      yield r'templateTabTitle';
      yield serializers.serialize(
        object.templateTabTitle,
        specifiedType: const FullType(String),
      );
    }
    if (object.templateDescription != null) {
      yield r'templateDescription';
      yield serializers.serialize(
        object.templateDescription,
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
    if (object.noEntriesText != null) {
      yield r'noEntriesText';
      yield serializers.serialize(
        object.noEntriesText,
        specifiedType: const FullType(String),
      );
    }
    if (object.allowAddPanel != null) {
      yield r'allowAddPanel';
      yield serializers.serialize(
        object.allowAddPanel,
        specifiedType: const FullType(bool),
      );
    }
    if (object.allowRemovePanel != null) {
      yield r'allowRemovePanel';
      yield serializers.serialize(
        object.allowRemovePanel,
        specifiedType: const FullType(bool),
      );
    }
    if (object.panelCount != null) {
      yield r'panelCount';
      yield serializers.serialize(
        object.panelCount,
        specifiedType: const FullType(PaneldynamicPanelCount),
      );
    }
    if (object.minPanelCount != null) {
      yield r'minPanelCount';
      yield serializers.serialize(
        object.minPanelCount,
        specifiedType: const FullType(num),
      );
    }
    if (object.maxPanelCount != null) {
      yield r'maxPanelCount';
      yield serializers.serialize(
        object.maxPanelCount,
        specifiedType: const FullType(num),
      );
    }
    if (object.defaultPanelValue != null) {
      yield r'defaultPanelValue';
      yield serializers.serialize(
        object.defaultPanelValue,
        specifiedType: const FullType(String),
      );
    }
    if (object.defaultValueFromLastPanel != null) {
      yield r'defaultValueFromLastPanel';
      yield serializers.serialize(
        object.defaultValueFromLastPanel,
        specifiedType: const FullType(bool),
      );
    }
    if (object.panelsState != null) {
      yield r'panelsState';
      yield serializers.serialize(
        object.panelsState,
        specifiedType: const FullType(PaneldynamicPanelsState),
      );
    }
    if (object.keyName != null) {
      yield r'keyName';
      yield serializers.serialize(
        object.keyName,
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
    if (object.panelAddText != null) {
      yield r'panelAddText';
      yield serializers.serialize(
        object.panelAddText,
        specifiedType: const FullType(String),
      );
    }
    if (object.panelRemoveText != null) {
      yield r'panelRemoveText';
      yield serializers.serialize(
        object.panelRemoveText,
        specifiedType: const FullType(String),
      );
    }
    if (object.panelPrevText != null) {
      yield r'panelPrevText';
      yield serializers.serialize(
        object.panelPrevText,
        specifiedType: const FullType(String),
      );
    }
    if (object.panelNextText != null) {
      yield r'panelNextText';
      yield serializers.serialize(
        object.panelNextText,
        specifiedType: const FullType(String),
      );
    }
    if (object.showQuestionNumbers != null) {
      yield r'showQuestionNumbers';
      yield serializers.serialize(
        object.showQuestionNumbers,
        specifiedType: const FullType(PaneldynamicShowQuestionNumbers),
      );
    }
    if (object.showRangeInProgress != null) {
      yield r'showRangeInProgress';
      yield serializers.serialize(
        object.showRangeInProgress,
        specifiedType: const FullType(bool),
      );
    }
    if (object.renderMode != null) {
      yield r'renderMode';
      yield serializers.serialize(
        object.renderMode,
        specifiedType: const FullType(PaneldynamicRenderMode),
      );
    }
    if (object.tabAlign != null) {
      yield r'tabAlign';
      yield serializers.serialize(
        object.tabAlign,
        specifiedType: const FullType(PaneldynamicTabAlign),
      );
    }
    if (object.templateTitleLocation != null) {
      yield r'templateTitleLocation';
      yield serializers.serialize(
        object.templateTitleLocation,
        specifiedType: const FullType(PaneldynamicTemplateTitleLocation),
      );
    }
    if (object.panelRemoveButtonLocation != null) {
      yield r'panelRemoveButtonLocation';
      yield serializers.serialize(
        object.panelRemoveButtonLocation,
        specifiedType: const FullType(PaneldynamicPanelRemoveButtonLocation),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    PaneldynamicAllOf object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  @override
  PaneldynamicAllOf deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return serializers.deserialize(serialized, specifiedType: FullType($PaneldynamicAllOf)) as $PaneldynamicAllOf;
  }
}

/// a concrete implementation of [PaneldynamicAllOf], since [PaneldynamicAllOf] is not instantiable
@BuiltValue(instantiable: true)
abstract class $PaneldynamicAllOf implements PaneldynamicAllOf, Built<$PaneldynamicAllOf, $PaneldynamicAllOfBuilder> {
  $PaneldynamicAllOf._();

  factory $PaneldynamicAllOf([void Function($PaneldynamicAllOfBuilder)? updates]) = _$$PaneldynamicAllOf;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults($PaneldynamicAllOfBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<$PaneldynamicAllOf> get serializer => _$$PaneldynamicAllOfSerializer();
}

class _$$PaneldynamicAllOfSerializer implements PrimitiveSerializer<$PaneldynamicAllOf> {
  @override
  final Iterable<Type> types = const [$PaneldynamicAllOf, _$$PaneldynamicAllOf];

  @override
  final String wireName = r'$PaneldynamicAllOf';

  @override
  Object serialize(
    Serializers serializers,
    $PaneldynamicAllOf object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return serializers.serialize(object, specifiedType: FullType(PaneldynamicAllOf))!;
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required PaneldynamicAllOfBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'showCommentArea':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.showCommentArea = valueDes;
          break;
        case r'templateElements':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(BuiltList, [FullType(ElementBase)]),
          ) as BuiltList<ElementBase>;
          result.templateElements.replace(valueDes);
          break;
        case r'templateTitle':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.templateTitle = valueDes;
          break;
        case r'templateTabTitle':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.templateTabTitle = valueDes;
          break;
        case r'templateDescription':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.templateDescription = valueDes;
          break;
        case r'minWidth':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.minWidth = valueDes;
          break;
        case r'noEntriesText':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.noEntriesText = valueDes;
          break;
        case r'allowAddPanel':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool;
          result.allowAddPanel = valueDes;
          break;
        case r'allowRemovePanel':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool;
          result.allowRemovePanel = valueDes;
          break;
        case r'panelCount':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(PaneldynamicPanelCount),
          ) as PaneldynamicPanelCount;
          result.panelCount = valueDes;
          break;
        case r'minPanelCount':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(num),
          ) as num;
          result.minPanelCount = valueDes;
          break;
        case r'maxPanelCount':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(num),
          ) as num;
          result.maxPanelCount = valueDes;
          break;
        case r'defaultPanelValue':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.defaultPanelValue = valueDes;
          break;
        case r'defaultValueFromLastPanel':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool;
          result.defaultValueFromLastPanel = valueDes;
          break;
        case r'panelsState':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(PaneldynamicPanelsState),
          ) as PaneldynamicPanelsState;
          result.panelsState = valueDes;
          break;
        case r'keyName':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.keyName = valueDes;
          break;
        case r'keyDuplicationError':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.keyDuplicationError = valueDes;
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
        case r'panelAddText':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.panelAddText = valueDes;
          break;
        case r'panelRemoveText':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.panelRemoveText = valueDes;
          break;
        case r'panelPrevText':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.panelPrevText = valueDes;
          break;
        case r'panelNextText':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.panelNextText = valueDes;
          break;
        case r'showQuestionNumbers':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(PaneldynamicShowQuestionNumbers),
          ) as PaneldynamicShowQuestionNumbers;
          result.showQuestionNumbers = valueDes;
          break;
        case r'showRangeInProgress':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool;
          result.showRangeInProgress = valueDes;
          break;
        case r'renderMode':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(PaneldynamicRenderMode),
          ) as PaneldynamicRenderMode;
          result.renderMode = valueDes;
          break;
        case r'tabAlign':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(PaneldynamicTabAlign),
          ) as PaneldynamicTabAlign;
          result.tabAlign = valueDes;
          break;
        case r'templateTitleLocation':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(PaneldynamicTemplateTitleLocation),
          ) as PaneldynamicTemplateTitleLocation;
          result.templateTitleLocation = valueDes;
          break;
        case r'panelRemoveButtonLocation':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(PaneldynamicPanelRemoveButtonLocation),
          ) as PaneldynamicPanelRemoveButtonLocation;
          result.panelRemoveButtonLocation = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  $PaneldynamicAllOf deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = $PaneldynamicAllOfBuilder();
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

