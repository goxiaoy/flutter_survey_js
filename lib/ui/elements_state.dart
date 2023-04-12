import 'package:flutter/cupertino.dart';
import 'package:flutter_survey_js/model/survey.dart' as s;

@immutable
class ElementsState {
  final Map<s.ElementBase, ElementStatus> _statusMap;

  const ElementsState(Map<s.ElementBase, ElementStatus> status)
      : _statusMap = status;

  ElementStatus? get(s.ElementBase element) {
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
