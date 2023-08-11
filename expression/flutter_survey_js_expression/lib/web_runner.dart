@JS('surveyjs')
library surveyjs;

import 'dart:async';
import 'dart:convert';

import 'package:flutter/foundation.dart';
import 'package:flutter_survey_js_expression/runner.dart';
import 'package:js/js.dart';
import 'dart:html';
import 'dart:js';

@JS('runCondition')
external bool? jsrunCondition(
    String expression, String value, String? properties);
@JS('runExpression')
external Object? jsRunExpression(
    String expression, String value, String? properties);

/// Injects a `script` with a `src` dynamically into the head of the current
/// document.
@visibleForTesting
Future<void> injectSrcScript(String src, String windowVar) async {
  ScriptElement script = ScriptElement();
  script.type = 'text/javascript';
  // script.crossOrigin = 'anonymous';
  // script.text = '''
  //     window.ff_trigger_$windowVar = async (callback) => {
  //       callback(await import("$src"));
  //     };
  //   ''';
  script.src = src;

  assert(document.head != null);
  document.head!.append(script);
  // Completer completer = Completer();

  // context.callMethod('ff_trigger_$windowVar', [
  //   (module) {
  //     context[windowVar] = module;
  //     context.deleteProperty('ff_trigger_$windowVar');
  //     completer.complete();
  //   }
  // ]);

  // await completer.future;
}

Future<void> loadJs() async {
  if (context['surveyjs'] != null) {
    //loaded
    return;
  }
  //https://github.com/flutter/flutter/issues/126713#issuecomment-1548025818
  // Fix Require.js issues with Flutter overrides
  try {
    context.callMethod('fixRequireJs', []);
  } catch (e) {
    //
  }

  return injectSrcScript(
    "assets/packages/flutter_survey_js_expression/assets/index.js",
    'surveyjs',
  );
}

class WebRunner implements Runner {
  @override
  Future<bool> dispose() async {
    return true;
  }

  @override
  Future<bool> init() async {
    await loadJs();
    return true;
  }

  @override
  bool? runCondition(String expression, Map<String, Object?> value,
      {Map<String, Object?>? properties}) {
    return jsrunCondition(expression, jsonEncode(value),
        properties == null ? null : jsonEncode(properties));
  }

  @override
  Object? runExpression(String expression, Map<String, Object?> value,
      {Map<String, Object?>? properties}) {
    return jsRunExpression(expression, jsonEncode(value),
        properties == null ? null : jsonEncode(properties));
  }
}

final WebRunner _singleton = WebRunner();
Runner getRunner() => _singleton;
