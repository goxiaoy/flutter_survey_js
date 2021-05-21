part of 'survey.dart';

final surveyElementMap =
    <String, ElementBase Function(Map<String, dynamic> json)>{
  // MatrixDropdownBase.$type: (d) => MatrixDropdownBase.fromJson(d),
  MatrixDropdown.$type: (d) => MatrixDropdown.fromJson(d),
  MatrixDynamic.$type: (d) => MatrixDynamic.fromJson(d),
  Matrix.$type: (d) => Matrix.fromJson(d),
  Expression.$type: (d) => Expression.fromJson(d),
  CheckBox.$type: (d) => CheckBox.fromJson(d),
  Ranking.$type: (d) => Ranking.fromJson(d),
  RadioGroup.$type: (d) => RadioGroup.fromJson(d),
  ImagePicker.$type: (d) => ImagePicker.fromJson(d),
  ButtonGroup.$type: (d) => ButtonGroup.fromJson(d),
  Dropdown.$type: (d) => Dropdown.fromJson(d),
  Text.$type: (d) => Text.fromJson(d),
  MultipleText.$type: (d) => MultipleText.fromJson(d),
  NonValue.$type: (d) => NonValue.fromJson(d),
  Html.$type: (d) => Html.fromJson(d),
  Image.$type: (d) => Image.fromJson(d),
  Empty.$type: (d) => Empty.fromJson(d),
  Comment.$type: (d) => Comment.fromJson(d),
  File.$type: (d) => File.fromJson(d),
  Rating.$type: (d) => Rating.fromJson(d),
  Boolean.$type: (d) => Boolean.fromJson(d),
  SignaturePad.$type: (d) => SignaturePad.fromJson(d),
  PanelDynamic.$type: (d) => PanelDynamic.fromJson(d),
  Panel.$type: (d) => Panel.fromJson(d),
};

abstract class ElementBase {
  String? get type;
  String? get name;
  ElementBase();
  factory ElementBase.fromJson(Map<String, dynamic> json) {
    final type = json['type'] as String?;
    final f = surveyElementMap[type];
    if (f != null) {
      return f(json);
    }
    throw UnsupportedError('ElementBase');
  }
  Map<String, dynamic> toJson();
}
