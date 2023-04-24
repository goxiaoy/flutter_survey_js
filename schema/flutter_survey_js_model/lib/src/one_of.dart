import 'package:built_value/serializer.dart';
import 'package:collection/collection.dart';
import 'package:flutter_survey_js_model/flutter_survey_js_model.dart';
import 'package:one_of/any_of.dart';
import 'package:one_of_serializer/any_of_serializer.dart';

const questionMap = <String, Type>{
  "checkbox": Checkbox,
  "tagbox": Tagbox,
  "ranking": Ranking,
  "radiogroup": Radiogroup,
  "imagepicker": Imagepicker,
  "buttongroup": Buttongroup,
  "dropdown": Dropdown,
  "matrixdropdownbase": Matrixdropdownbase,
  "matrixdropdown": Matrixdropdown,
  "matrixdynamic": Matrixdynamic,
  "matrix": Matrix,
  "expression": Expression,
  "textbase": Textbase,
  "text": Text,
  "comment": Comment,
  "multipletext": Multipletext,
  "nonvalue": Nonvalue,
  "html": Html,
  "image": Image,
  "empty": Empty,
  "file": File,
  "boolean": Boolean,
  "signaturepad": Signaturepad,
  "paneldynamic": Paneldynamic,
  "panel": Panel,
};

const triggerMap = <String, Type>{
  "visible": Visibletrigger,
  "complete": Completetrigger,
  "setvalue": Setvaluetrigger,
  "copyvalue": Copyvaluetrigger,
  "skip": Skiptrigger,
  "runexpression": Runexpressiontrigger
};
const validatorMap = {
  "numeric": Numericvalidator,
  "text": Textvalidator,
  "answercount": Answercountvalidator,
  "regex": Regexvalidator,
  "email": Emailvalidator,
  "expression": Expressionvalidator
};

class SurveyAnyOfSerializer extends AnyOfSerializer {
  @override
  AnyOf deserialize(Serializers serializers, Object serialized,
      {FullType specifiedType = FullType.unspecified}) {
    if (!(serialized is Iterable<Object?>)) {
      return super
          .deserialize(serializers, serialized, specifiedType: specifiedType);
    }
    //deserialize the object without knowing the type
    final types = specifiedType.parameters.map((e) => e.root!).toList();
    if (specifiedType.parameters.isEmpty) {
      throw UnsupportedError('Provide possible types in parameters');
    }
    final values = <int, Object?>{};

    final getType = () {
      final serializedList = (serialized as Iterable<Object?>).toList();
      for (var i = 0; i < serializedList.length; i += 2) {
        final key = serializedList[i] as String;
        final value = serializedList[i + 1];
        if (key == "type") {
          return value as String;
        }
      }
      return "";
    };
    final t = getType();
    if (t.isNotEmpty) {
      if (questionMap[t] != null) {
        final index = types.indexOf(questionMap[t]!);
        if (index != -1) {
          values[index] = serializers.deserialize(serialized,
              specifiedType: specifiedType.parameters[index]);
        }
      }
      if (triggerMap[t] != null) {
        final index = types.indexOf(triggerMap[t]!);
        if (index != -1) {
          values[index] = serializers.deserialize(serialized,
              specifiedType: specifiedType.parameters[index]);
        }
      }
      if (validatorMap[t] != null) {
        final index = types.indexOf(validatorMap[t]!);
        if (index != -1) {
          values[index] = serializers.deserialize(serialized,
              specifiedType: specifiedType.parameters[index]);
        }
      }
    }
    //fallback
    if (values.isEmpty) {
      for (var i = 0; i < specifiedType.parameters.length; i++) {
        final type = specifiedType.parameters[i];
        try {
          final _v = serializers.deserialize(serialized, specifiedType: type);
          values[i] = _v;
        } catch (e) {
          continue;
        }
      }
    }

    if (values.isEmpty) {
      throw UnsupportedError(
          'failed to deserialize to any of the provided types: $specifiedType');
    }
    return AnyOfDynamic(
      types: types,
      values: values,
    );
  }

  @override
  Object serialize(Serializers serializers, AnyOf object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[];
    //serialize the values
    for (var valueEntry in object.values.entries) {
      final typeIndex = valueEntry.key;
      final type = object.types[typeIndex];
      final value = valueEntry.value;
      final serialized = serializers.serialize(
        value,
        specifiedType: FullType(type),
      );
      if (serialized is Map) {
        for (var e in serialized.entries) {
          result.add(e.key);
          result.add(e.value);
        }
      } else {
        //primitive, return it
        return serialized!;
      }
    }
    return result;
  }
}
