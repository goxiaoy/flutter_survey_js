import 'package:flutter_survey_js/model/survey.dart';
import 'package:flutter_test/flutter_test.dart';

main() {
  group('JsonSerializable', () {});
  group('fromElementsJson', () {
    test('maps to a Page with appropriate elements', () {
      final List<ElementBase> elements = [
        Text()..name = 'element 1',
        Text()..name = 'element 2',
      ];
      final Page page = Page.fromElementsJson(
          elements.map((element) => element.toJson()).toList());
      elements.asMap().forEach((index, element) =>
          expect(page.elements?.elementAt(index).name, element.name));
    });
  });
}
