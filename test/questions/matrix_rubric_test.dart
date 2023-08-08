import 'package:flutter_survey_js/survey.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  // 单一的测试
  const json = {
    "questions": [
      {
        "type": "matrix",
        "name": "Quality",
        "title":
            "Please indicate if you agree or disagree with the following statements",
        "columns": [
          {"value": 1, "text": "Strongly Disagree"},
          {"value": 2, "text": "Disagree"},
          {"value": 3, "text": "Neutral"},
          {"value": 4, "text": "Agree"},
          {"value": 5, "text": "Strongly Agree"}
        ],
        "rows": [
          {"value": "affordable", "text": "Product is affordable"},
          {
            "value": "does what it claims",
            "text": "Product does what it claims"
          },
          {
            "value": "better than others",
            "text": "Product is better than other products on the market"
          },
          {"value": "easy to use", "text": "Product is easy to use"}
        ],
        "cells": {
          "affordable": {
            "1": "1x1",
            "2": "1x2",
            "3": "1x3",
            "4": "1x4",
            "5": "1x3"
          },
          "does what it claims": {
            "1": "2x1",
            "2": "2x2",
            "3": "2x3",
            "4": "2x4",
            "5": "2x3"
          },
          "better than others": {
            "1": "3x1",
            "2": "3x2",
            "3": "3x3",
            "4": "3x4",
            "5": "3x3"
          },
          "easy to use": {
            "1": "4x1",
            "2": "4x2",
            "3": "4x3",
            "4": "4x4",
            "5": "4x3"
          }
        }
      }
    ]
  };
  test("Serialize Deserialize Survey", () {
    surveyFromJson(json);
  });
}
