//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:flutter_survey_js_model/src/model/question_title_location.dart';
import 'package:flutter_survey_js_model/src/model/expression_display_style.dart';
import 'package:flutter_survey_js_model/src/model/question_state.dart';
import 'package:flutter_survey_js_model/src/model/question_all_of_validators_inner.dart';
import 'package:flutter_survey_js_model/src/model/question_clear_if_invisible.dart';
import 'package:flutter_survey_js_model/src/model/question_description_location.dart';
import 'package:flutter_survey_js_model/src/model/question_indent.dart';
import 'package:flutter_survey_js_model/src/model/question.dart';
import 'package:flutter_survey_js_model/src/model/survey_logo_width.dart';
import 'package:built_collection/built_collection.dart';
import 'package:flutter_survey_js_model/src/model/expression_all_of.dart';
import 'package:flutter_survey_js_model/src/model/expression_currency.dart';
import 'package:built_value/json_object.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'expression.g.dart';

/// Expression
///
/// Properties:
/// * [type] 
/// * [name] 
/// * [state] 
/// * [visible] 
/// * [useDisplayValuesInDynamicTexts] 
/// * [visibleIf] 
/// * [width] 
/// * [minWidth] 
/// * [maxWidth] 
/// * [startWithNewLine] 
/// * [indent] 
/// * [page] 
/// * [title] 
/// * [titleLocation] 
/// * [description] 
/// * [descriptionLocation] 
/// * [hideNumber] 
/// * [valueName] 
/// * [enableIf] 
/// * [defaultValue] 
/// * [defaultValueExpression] 
/// * [correctAnswer] 
/// * [clearIfInvisible] 
/// * [isRequired] 
/// * [requiredIf] 
/// * [requiredErrorText] 
/// * [readOnly] 
/// * [validators] 
/// * [bindings] 
/// * [renderAs] 
/// * [showCommentArea] 
/// * [commentText] 
/// * [commentPlaceholder] 
/// * [expression] 
/// * [format] 
/// * [displayStyle] 
/// * [currency] 
/// * [maximumFractionDigits] 
/// * [minimumFractionDigits] 
/// * [useGrouping] 
@BuiltValue()
abstract class Expression implements ExpressionAllOf, Question, Built<Expression, ExpressionBuilder> {
  Expression._();

  factory Expression([void updates(ExpressionBuilder b)]) = _$Expression;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(ExpressionBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<Expression> get serializer => _$ExpressionSerializer();
}

class _$ExpressionSerializer implements PrimitiveSerializer<Expression> {
  @override
  final Iterable<Type> types = const [Expression, _$Expression];

  @override
  final String wireName = r'Expression';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    Expression object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.useDisplayValuesInDynamicTexts != null) {
      yield r'useDisplayValuesInDynamicTexts';
      yield serializers.serialize(
        object.useDisplayValuesInDynamicTexts,
        specifiedType: const FullType(bool),
      );
    }
    if (object.indent != null) {
      yield r'indent';
      yield serializers.serialize(
        object.indent,
        specifiedType: const FullType(QuestionIndent),
      );
    }
    if (object.valueName != null) {
      yield r'valueName';
      yield serializers.serialize(
        object.valueName,
        specifiedType: const FullType(String),
      );
    }
    if (object.defaultValue != null) {
      yield r'defaultValue';
      yield serializers.serialize(
        object.defaultValue,
        specifiedType: const FullType.nullable(JsonObject),
      );
    }
    if (object.validators != null) {
      yield r'validators';
      yield serializers.serialize(
        object.validators,
        specifiedType: const FullType(BuiltList, [FullType(QuestionAllOfValidatorsInner)]),
      );
    }
    if (object.bindings != null) {
      yield r'bindings';
      yield serializers.serialize(
        object.bindings,
        specifiedType: const FullType(String),
      );
    }
    if (object.description != null) {
      yield r'description';
      yield serializers.serialize(
        object.description,
        specifiedType: const FullType(String),
      );
    }
    if (object.type != null) {
      yield r'type';
      yield serializers.serialize(
        object.type,
        specifiedType: const FullType(String),
      );
    }
    if (object.title != null) {
      yield r'title';
      yield serializers.serialize(
        object.title,
        specifiedType: const FullType(String),
      );
    }
    if (object.commentText != null) {
      yield r'commentText';
      yield serializers.serialize(
        object.commentText,
        specifiedType: const FullType(String),
      );
    }
    if (object.clearIfInvisible != null) {
      yield r'clearIfInvisible';
      yield serializers.serialize(
        object.clearIfInvisible,
        specifiedType: const FullType(QuestionClearIfInvisible),
      );
    }
    if (object.displayStyle != null) {
      yield r'displayStyle';
      yield serializers.serialize(
        object.displayStyle,
        specifiedType: const FullType(ExpressionDisplayStyle),
      );
    }
    if (object.startWithNewLine != null) {
      yield r'startWithNewLine';
      yield serializers.serialize(
        object.startWithNewLine,
        specifiedType: const FullType(bool),
      );
    }
    if (object.minimumFractionDigits != null) {
      yield r'minimumFractionDigits';
      yield serializers.serialize(
        object.minimumFractionDigits,
        specifiedType: const FullType(num),
      );
    }
    if (object.descriptionLocation != null) {
      yield r'descriptionLocation';
      yield serializers.serialize(
        object.descriptionLocation,
        specifiedType: const FullType(QuestionDescriptionLocation),
      );
    }
    if (object.currency != null) {
      yield r'currency';
      yield serializers.serialize(
        object.currency,
        specifiedType: const FullType(ExpressionCurrency),
      );
    }
    if (object.state != null) {
      yield r'state';
      yield serializers.serialize(
        object.state,
        specifiedType: const FullType(QuestionState),
      );
    }
    if (object.hideNumber != null) {
      yield r'hideNumber';
      yield serializers.serialize(
        object.hideNumber,
        specifiedType: const FullType(bool),
      );
    }
    if (object.correctAnswer != null) {
      yield r'correctAnswer';
      yield serializers.serialize(
        object.correctAnswer,
        specifiedType: const FullType.nullable(JsonObject),
      );
    }
    if (object.maxWidth != null) {
      yield r'maxWidth';
      yield serializers.serialize(
        object.maxWidth,
        specifiedType: const FullType(SurveyLogoWidth),
      );
    }
    if (object.showCommentArea != null) {
      yield r'showCommentArea';
      yield serializers.serialize(
        object.showCommentArea,
        specifiedType: const FullType(String),
      );
    }
    if (object.enableIf != null) {
      yield r'enableIf';
      yield serializers.serialize(
        object.enableIf,
        specifiedType: const FullType(String),
      );
    }
    if (object.isRequired != null) {
      yield r'isRequired';
      yield serializers.serialize(
        object.isRequired,
        specifiedType: const FullType(bool),
      );
    }
    if (object.expression != null) {
      yield r'expression';
      yield serializers.serialize(
        object.expression,
        specifiedType: const FullType(String),
      );
    }
    if (object.visible != null) {
      yield r'visible';
      yield serializers.serialize(
        object.visible,
        specifiedType: const FullType(bool),
      );
    }
    if (object.commentPlaceholder != null) {
      yield r'commentPlaceholder';
      yield serializers.serialize(
        object.commentPlaceholder,
        specifiedType: const FullType(String),
      );
    }
    if (object.defaultValueExpression != null) {
      yield r'defaultValueExpression';
      yield serializers.serialize(
        object.defaultValueExpression,
        specifiedType: const FullType(String),
      );
    }
    if (object.useGrouping != null) {
      yield r'useGrouping';
      yield serializers.serialize(
        object.useGrouping,
        specifiedType: const FullType(bool),
      );
    }
    if (object.format != null) {
      yield r'format';
      yield serializers.serialize(
        object.format,
        specifiedType: const FullType(String),
      );
    }
    if (object.requiredIf != null) {
      yield r'requiredIf';
      yield serializers.serialize(
        object.requiredIf,
        specifiedType: const FullType(String),
      );
    }
    if (object.renderAs != null) {
      yield r'renderAs';
      yield serializers.serialize(
        object.renderAs,
        specifiedType: const FullType(String),
      );
    }
    if (object.readOnly != null) {
      yield r'readOnly';
      yield serializers.serialize(
        object.readOnly,
        specifiedType: const FullType(String),
      );
    }
    if (object.minWidth != null) {
      yield r'minWidth';
      yield serializers.serialize(
        object.minWidth,
        specifiedType: const FullType(SurveyLogoWidth),
      );
    }
    if (object.titleLocation != null) {
      yield r'titleLocation';
      yield serializers.serialize(
        object.titleLocation,
        specifiedType: const FullType(QuestionTitleLocation),
      );
    }
    if (object.maximumFractionDigits != null) {
      yield r'maximumFractionDigits';
      yield serializers.serialize(
        object.maximumFractionDigits,
        specifiedType: const FullType(num),
      );
    }
    if (object.requiredErrorText != null) {
      yield r'requiredErrorText';
      yield serializers.serialize(
        object.requiredErrorText,
        specifiedType: const FullType(String),
      );
    }
    if (object.name != null) {
      yield r'name';
      yield serializers.serialize(
        object.name,
        specifiedType: const FullType(String),
      );
    }
    if (object.visibleIf != null) {
      yield r'visibleIf';
      yield serializers.serialize(
        object.visibleIf,
        specifiedType: const FullType(String),
      );
    }
    if (object.width != null) {
      yield r'width';
      yield serializers.serialize(
        object.width,
        specifiedType: const FullType(SurveyLogoWidth),
      );
    }
    if (object.page != null) {
      yield r'page';
      yield serializers.serialize(
        object.page,
        specifiedType: const FullType(String),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    Expression object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required ExpressionBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'useDisplayValuesInDynamicTexts':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool;
          result.useDisplayValuesInDynamicTexts = valueDes;
          break;
        case r'indent':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(QuestionIndent),
          ) as QuestionIndent;
          result.indent = valueDes;
          break;
        case r'valueName':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.valueName = valueDes;
          break;
        case r'defaultValue':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(JsonObject),
          ) as JsonObject?;
          if (valueDes == null) continue;
          result.defaultValue = valueDes;
          break;
        case r'validators':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(BuiltList, [FullType(QuestionAllOfValidatorsInner)]),
          ) as BuiltList<QuestionAllOfValidatorsInner>;
          result.validators.replace(valueDes);
          break;
        case r'bindings':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.bindings = valueDes;
          break;
        case r'description':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.description = valueDes;
          break;
        case r'type':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.type = valueDes;
          break;
        case r'title':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.title = valueDes;
          break;
        case r'commentText':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.commentText = valueDes;
          break;
        case r'clearIfInvisible':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(QuestionClearIfInvisible),
          ) as QuestionClearIfInvisible;
          result.clearIfInvisible = valueDes;
          break;
        case r'displayStyle':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(ExpressionDisplayStyle),
          ) as ExpressionDisplayStyle;
          result.displayStyle = valueDes;
          break;
        case r'startWithNewLine':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool;
          result.startWithNewLine = valueDes;
          break;
        case r'minimumFractionDigits':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(num),
          ) as num;
          result.minimumFractionDigits = valueDes;
          break;
        case r'descriptionLocation':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(QuestionDescriptionLocation),
          ) as QuestionDescriptionLocation;
          result.descriptionLocation = valueDes;
          break;
        case r'currency':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(ExpressionCurrency),
          ) as ExpressionCurrency;
          result.currency = valueDes;
          break;
        case r'state':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(QuestionState),
          ) as QuestionState;
          result.state = valueDes;
          break;
        case r'hideNumber':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool;
          result.hideNumber = valueDes;
          break;
        case r'correctAnswer':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(JsonObject),
          ) as JsonObject?;
          if (valueDes == null) continue;
          result.correctAnswer = valueDes;
          break;
        case r'maxWidth':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(SurveyLogoWidth),
          ) as SurveyLogoWidth;
          result.maxWidth.replace(valueDes);
          break;
        case r'showCommentArea':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.showCommentArea = valueDes;
          break;
        case r'enableIf':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.enableIf = valueDes;
          break;
        case r'isRequired':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool;
          result.isRequired = valueDes;
          break;
        case r'expression':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.expression = valueDes;
          break;
        case r'visible':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool;
          result.visible = valueDes;
          break;
        case r'commentPlaceholder':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.commentPlaceholder = valueDes;
          break;
        case r'defaultValueExpression':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.defaultValueExpression = valueDes;
          break;
        case r'useGrouping':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool;
          result.useGrouping = valueDes;
          break;
        case r'format':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.format = valueDes;
          break;
        case r'requiredIf':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.requiredIf = valueDes;
          break;
        case r'renderAs':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.renderAs = valueDes;
          break;
        case r'readOnly':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.readOnly = valueDes;
          break;
        case r'minWidth':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(SurveyLogoWidth),
          ) as SurveyLogoWidth;
          result.minWidth.replace(valueDes);
          break;
        case r'titleLocation':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(QuestionTitleLocation),
          ) as QuestionTitleLocation;
          result.titleLocation = valueDes;
          break;
        case r'maximumFractionDigits':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(num),
          ) as num;
          result.maximumFractionDigits = valueDes;
          break;
        case r'requiredErrorText':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.requiredErrorText = valueDes;
          break;
        case r'name':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.name = valueDes;
          break;
        case r'visibleIf':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.visibleIf = valueDes;
          break;
        case r'width':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(SurveyLogoWidth),
          ) as SurveyLogoWidth;
          result.width.replace(valueDes);
          break;
        case r'page':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.page = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  Expression deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = ExpressionBuilder();
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

