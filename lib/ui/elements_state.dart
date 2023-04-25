import 'package:flutter/cupertino.dart';
import 'package:flutter_survey_js_model/flutter_survey_js_model.dart' as s;

@immutable
class ElementsState {
  final Map<s.Elementbase, ElementStatus> _statusMap;

  const ElementsState(Map<s.Elementbase, ElementStatus> status)
      : _statusMap = status;

  ElementStatus? get(s.Elementbase element) {
    return _statusMap[element];
  }
}

@immutable
class ElementStatus {
  final bool isVisible;

  //
  final bool isEnabled;

  //element index
  final int? indexAll;

  final int? pageIndex;

  final int? indexInPage;

  const ElementStatus({
    this.isVisible = true,
    this.isEnabled = true,
    this.indexAll,
    this.pageIndex,
    this.indexInPage,
  });
}
