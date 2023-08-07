@JS('surveyjs')
library surveyjs;

import 'dart:async';

import 'package:flutter/foundation.dart';
import 'package:flutter/services.dart';
import 'package:flutter_survey_js_expression/runner.dart';
import 'package:js/js.dart';
import 'dart:html';
import 'dart:js';

@JS('runCondition')
external bool? jsrunCondition(String expression, Map<String, Object?> value,
    Map<String, Object?>? properties);
@JS('runExpression')
external dynamic jsRunExpression(String expression, Map<String, Object?> value,
    Map<String, Object?>? properties);

/// Injects a `script` with a `src` dynamically into the head of the current
/// document.
Future<void> _injectSrcScript(String src, String windowVar) async {
  ScriptElement script = ScriptElement();
  script.type = 'text/javascript';
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
    return;
  }
  return _injectSrcScript(
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
    return jsrunCondition(expression, value, properties);
  }

  @override
  runExpression(String expression, Map<String, Object?> value,
      {Map<String, Object?>? properties}) {
    return jsRunExpression(expression, value, properties);
  }
}

final WebRunner _singleton = WebRunner();
Runner getRunner() => _singleton;
