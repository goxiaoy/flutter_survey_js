import 'package:flutter/material.dart';
import 'package:flutter_survey_js/generated/l10n.dart';
import 'package:reactive_forms/reactive_forms.dart';
import 'package:flutter_survey_js_model/flutter_survey_js_model.dart' as s;
import 'package:flutter_survey_js/utils.dart';

const otherValue = "other";
const noneValue = "none";

class SelectbaseWidget extends StatefulWidget {
  final Widget child;

  final SelectbaseController controller;

  final ValueChanged<String>? otherValueChanged;

  const SelectbaseWidget({
    Key? key,
    required this.child,
    required this.controller,
    this.otherValueChanged,
  }) : super(key: key);
  @override
  State<StatefulWidget> createState() => SelectbaseWidgetState();
}

class SelectbaseWidgetState extends State<SelectbaseWidget> {
  @override
  Widget build(BuildContext context) {
    return ReactiveFormConsumer(
      builder: (BuildContext context, FormGroup formGroup, Widget? child) {
        widget.controller._fg = formGroup;
        return ListenableBuilder(
          listenable: widget.controller,
          builder: (context, _) {
            final element = widget.controller.element;
            final controller = widget.controller;
            return Wrap(children: [
              widget.child,
              if (controller.showOther)
                controller.storeOtherAsComment
                    ? ReactiveTextField<dynamic>(
                        formControlName: controller.getCommentName(),
                        maxLines: null,
                        keyboardType: TextInputType.multiline,
                        onChanged: (control) {
                          widget.otherValueChanged
                              ?.call(control.value?.toString() ?? "");
                        },
                        decoration: InputDecoration(
                            border: const OutlineInputBorder(),
                            hintText: element.otherPlaceholder
                                ?.getLocalizedText(context)),
                      )
                    : TextField(
                        controller: widget.controller._otherTextController,
                        maxLines: null,
                        keyboardType: TextInputType.multiline,
                        decoration: InputDecoration(
                            border: const OutlineInputBorder(),
                            hintText: element.otherPlaceholder
                                ?.getLocalizedText(context)),
                        onChanged: (v) {
                          widget.otherValueChanged?.call(v);
                        }),
              if (controller.showCommentArea)
                Text(controller.getCommentLocaledText(context)),
              if (controller.showCommentArea)
                ReactiveTextField<dynamic>(
                  formControlName: controller.getCommentName(),
                  maxLines: null,
                  keyboardType: TextInputType.multiline,
                  decoration: InputDecoration(
                      border: const OutlineInputBorder(),
                      hintText: element.commentPlaceholder
                          ?.getLocalizedText(context)),
                ),
            ]);
          },
        );
      },
    );
  }
}

class SelectbaseController extends ChangeNotifier {
  SelectbaseController({required this.element, this.postfix = "-Comment"});

  bool _showOther = false;

  final String postfix;
  final s.Selectbase element;

  bool get showOther => _showOther;
  bool get showNone => element.showNoneItem ?? false;
  bool get showCommentArea => element.showCommentArea ?? false;

  bool get storeOtherAsComment => !showCommentArea;

  late FormGroup _fg;

  final TextEditingController _otherTextController = TextEditingController();

  String get otherValue => storeOtherAsComment ? "" : _otherTextController.text;

  void setShowOther(bool value) {
    _showOther = value;
    final name = getCommentName();
    if (_showOther) {
      _fg.control(name).markAsEnabled();
    } else {
      _fg.control(name).markAsDisabled();
    }
    if (!value) {
      _otherTextController.text = "";
    }
    if (storeOtherAsComment) {
      if (!showOther) {
        _fg.control(name).value = "";
      }
    }
    notifyListeners();
  }

  void setOtherValue(String value) {
    if (!_showOther) {
      setShowOther(true);
    }
    if (!storeOtherAsComment) {
      //store in self
      _otherTextController.text = value;
    } else {
      final name = getCommentName();
      _fg.control(name).value = value;
    }
  }

  String? getOtherValue() {
    final name = getCommentName();
    return _fg.contains(name) ? _fg.control(name).value : null;
  }

  String getCommentName() {
    return "${element.name!}$postfix";
  }

  String getOtherLocaledText(BuildContext context) {
    return element.otherText?.getLocalizedText(context) ??
        S.of(context).otherItemText;
  }

  String getCommentLocaledText(BuildContext context) {
    return element.commentText?.getLocalizedText(context) ??
        S.of(context).otherItemText;
  }
}
