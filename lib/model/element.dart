part of 'survey.dart';

abstract class ElementBase extends Equatable {
  String? get type;

  String? get name;

  ElementBase();

  factory ElementBase.fromJson(Map<String, dynamic> json) {
    final type = json['type'] as String?;
    if (type != null) {
      return _getElementBase(type, json);
    }
    throw UnsupportedError('ElementBase');
  }

  Map<String, dynamic> toJson();

  static ElementBase _getElementBase(String? type, Map<String, dynamic> d) {
    switch (type) {
      case MatrixDropdown.$type:
        return MatrixDropdown.fromJson(d);
      case MatrixDynamic.$type:
        return MatrixDynamic.fromJson(d);
      case Matrix.$type:
        return Matrix.fromJson(d);
      case Expression.$type:
        return Expression.fromJson(d);
      case CheckBox.$type:
        return CheckBox.fromJson(d);
      case Ranking.$type:
        return Ranking.fromJson(d);
      case RadioGroup.$type:
        return RadioGroup.fromJson(d);
      case ImagePicker.$type:
        return ImagePicker.fromJson(d);
      case ButtonGroup.$type:
        return ButtonGroup.fromJson(d);
      case Dropdown.$type:
        return Dropdown.fromJson(d);
      case Text.$type:
        return Text.fromJson(d);
      case MultipleText.$type:
        return MultipleText.fromJson(d);
      case NonValue.$type:
        return NonValue.fromJson(d);
      case Html.$type:
        return Html.fromJson(d);
      case Image.$type:
        return Image.fromJson(d);
      case Empty.$type:
        return Empty.fromJson(d);
      case Comment.$type:
        return Comment.fromJson(d);
      case File.$type:
        return File.fromJson(d);
      case Rating.$type:
        return Rating.fromJson(d);
      case Boolean.$type:
        return Boolean.fromJson(d);
      case SignaturePad.$type:
        return SignaturePad.fromJson(d);
      case PanelDynamic.$type:
        return PanelDynamic.fromJson(d);
      case Panel.$type:
        return Panel.fromJson(d);
      default:
        return UnsupportedElement.fromJson(d);
    }
  }

  @override
  List<Object?> get props => [
        type,
        name,
      ];
}

class UnsupportedElement extends ElementBase {
  UnsupportedElement({
    required this.type,
    required this.name,
    required this.title,
  });

  @override
  final String? type;
  @override
  final String? name;
  final String? title;

  @override
  Map<String, dynamic> toJson() {
    return {
      'name': name,
      'type': type,
      'title': title,
    };
  }

  factory UnsupportedElement.fromJson(Map<String, dynamic> json) =>
      UnsupportedElement(
        type: json['type'],
        name: json['name'],
        title: json['title'],
      );

  @override
  List<Object?> get props => [
        ...super.props,
        title,
      ];
}
