import 'package:flutter/cupertino.dart';
import 'package:flutter_survey_js_model/flutter_survey_js_model.dart' as s;

class ElementsState {
  final Map<s.Elementbase, ElementStatus> _statusMap;

  ElementsState(Map<s.Elementbase, ElementStatus> status) : _statusMap = status;

  ElementStatus? get(s.Elementbase element) {
    return _statusMap[element];
  }

  set(s.Elementbase element, ElementStatus? status) {
    if (status == null) {
      _statusMap.remove(status);
    } else {
      _statusMap[element] = status;
    }
  }

  ElementStatus? getLatestUnfinishedQuestion() {
    return _statusMap.values.cast<ElementStatus?>().firstWhere(
        (element) => element!.isLatestUnfinishedQuestion,
        orElse: () => null);
  }
}

@immutable
class ElementStatus {
  final bool isVisible;

  final bool isEnabled;

  final bool isRequired;

  //element index
  final int? indexAll;

  final int? pageIndex;

  final int? indexInPage;

  final int? panelIndex;

  final bool isLatestUnfinishedQuestion;

  const ElementStatus(
      {this.isVisible = true,
      this.isEnabled = true,
      this.isRequired = false,
      this.indexAll,
      this.pageIndex,
      this.indexInPage,
      this.panelIndex,
      this.isLatestUnfinishedQuestion = false});
}
