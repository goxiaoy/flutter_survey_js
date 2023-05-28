import 'package:flutter/material.dart';
import 'package:flutter_survey_js/generated/l10n.dart';
import 'package:flutter_survey_js/ui/validators.dart';
import 'package:reactive_forms/reactive_forms.dart';
import 'package:flutter_survey_js_model/flutter_survey_js_model.dart' as s;

const otherValue = "other";
const noneValue = "none";

typedef SelectbaseItemBuilder = Widget Function(
    BuildContext context, Widget child, SelectbaseController controller);

Widget defaultSelectbaseItemBuilder(
    BuildContext context, Widget child, SelectbaseController controller) {
  final element = controller.element;
  return Column(children: [
    child,
    if (controller.showOther)
      ReactiveTextField(
        formControlName: controller.getOtherName(),
        maxLines: null,
        keyboardType: TextInputType.multiline,
        decoration: InputDecoration(
            border: const OutlineInputBorder(),
            hintText: element.otherPlaceholder),
      )
  ]);
}

class SelectbaseWidget extends StatefulWidget {
  final Widget child;

  final SelectbaseController controller;
  final SelectbaseItemBuilder builder;

  const SelectbaseWidget({
    Key? key,
    required this.child,
    required this.controller,
    this.builder = defaultSelectbaseItemBuilder,
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
            return widget.builder(context, widget.child, widget.controller);
          },
        );
      },
    );
  }
}

class SelectbaseController extends ChangeNotifier {
  SelectbaseController({required this.element, this.postfix = "-Comment"});

  bool _showOther = false;
  bool _showNone = false;
  final String postfix;
  final s.Selectbase element;

  bool get showOther => _showOther;
  bool get showNone => _showNone;

  late FormGroup _fg;

  void setShowOther(bool value) {
    _showOther = value;
    final name = getOtherName();
    if (value) {
      //make show formControl exists

      if (!_fg.contains(name)) {
        _fg.addAll({
          getOtherName(): fb.control<String>(
              "", [if (element.isRequired ?? false) NonEmptyValidator.get])
        });
      }
    } else {
      if (_fg.contains(name)) {
        _fg.removeControl(getOtherName());
      }
    }
    notifyListeners();
  }

  void setShowNone(
    bool value,
  ) {
    _showNone = value;
    notifyListeners();
  }

  void setOtherValue(String value) {
    final name = getOtherName();
    if (!_showOther) {
      setShowOther(true);
    }
    _fg.control(name).value = value;
  }

  String? getOtherValue() {
    final name = getOtherName();
    return _fg.contains(name) ? _fg.control(name).value : null;
  }

  String getOtherName() {
    return "${element.name!}$postfix";
  }

  String getOtherLocaledText(BuildContext context) {
    return element.otherText ?? S.of(context).otherItemText;
  }
}
