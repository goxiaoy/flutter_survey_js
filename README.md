# flutter_survey_js

Flutter package for parsing and display [surveyjs](https://surveyjs.io/) widgets

All these widgets and highly depend on [reactive_forms](https://pub.dev/packages/reactive_forms)

Live preview [https://goxiaoy.github.io/flutter_survey_js/](https://goxiaoy.github.io/flutter_survey_js/)

# IMPORTANT_NOTE

# This package has not fully tested, use at your own risk

Supported widgets:

- [x] checkbox
- [ ] tagbox
- [x] ranking
- [x] radiogroup
- [x] imagepicker
- [ ] buttongroup
- [x] dropdown
- [x] matrixdropdown
- [x] matrixdynamic
- [x] matrix
- [x] expression
- [x] text
- [x] comment
- [x] multipletext
- [x] html
- [x] image
- [x] empty
- [ ] file
- [x] rating
- [x] boolean
- [x] signaturepad
- [x] paneldynamic
- [x] panel

Supported validator:

- [x] numericvalidator
- [x] textvalidator
- [ ] answercountvalidator
- [x] regexvalidator
- [x] emailvalidator
- [ ] expressionvalidator

## Getting Started

```
flutter pub add flutter_survey_js
```

Modify your main function

```dart
import 'package:flutter_survey_js/survey.dart' as s;
void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await s.getRunner().init();
  runApp(
    ...
  );
}
```

**Web**:

add following script into `web/index.html`
```html
<html>
  ...
  <body>
    <!-- Add this line -->
    <script src="assets/packages/flutter_survey_js_expression/assets/index.js"></script>

    <script src="main.dart.js" type="application/javascript"></script>
  </body>
</html>

```


**usage**:

```dart
import 'package:flutter_survey_js/survey.dart' as s;
...
const survey = {
  "questions": [
    {
      "type": "rating",
      "name": "satisfaction",
      "title": "How satisfied are you with the Product?",
      "mininumRateDescription": "Not Satisfied",
      "maximumRateDescription": "Completely satisfied"
    }
  ]
};
...
s.SurveyWidget(
  survey: s.surveyFromJson(survey),
  onChange: (v) {
    print(v);
  },
  onSubmit: (v) {
    print(v);
  },
)


```

## Customize
```dart
s.SurveyConfiguration(
  unsupportedBuilder: ...,
  ...
  child: s.SurveyWidget(
    survey: s.surveyFromJson(survey),
    onChange: (v) {
      print(v);
    },
    onSubmit: (v) {
      print(v);
    },
  )
)


```

# Development
## Melos

Install
```shell
dart pub global activate melos
```
Bootstrap
```shell
dart pub global run melos bs
```

## Test

### Before you run test

- Windows: `dart pub global run melos run build_windows`
- Linux: `dart pub global run melos run build_linux`
###
`dart pub global run melos run test`