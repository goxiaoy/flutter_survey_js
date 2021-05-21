// import 'survey_value_data.dart';
//
// class ConditionOperand {
//   final String original;
//   List<String> _list;
//
//   ConditionOperand(this.original) : _list = original.split(" ");
//
//   String? name() {
//     if (_list.length == 3)
//       return _getValueName(_list[0]);
//     else {
//       assert(false);
//       return '';
//     }
//   }
//
//   bool condition(dynamic value) {
//     if (_list.length == 3) {
//       /// TODO: value could be other type data!!!
//       var data = value as SurveyValueData;
//       switch (_list[1]) {
//         case '=':
//
//           /// TODO: use data value later
//           return _removeQuotesAndEscapes(_list[2]) == data.text ||
//               _removeQuotesAndEscapes(_list[2]) == data.value;
//         case '<>':
//
//           /// TODO: use data value later
//           return _removeQuotesAndEscapes(_list[2]) != data.text &&
//               _removeQuotesAndEscapes(_list[2]) != data.value;
//         default:
//
//           /// TODO: implementation!
//           assert(false);
//           return false;
//       }
//     } else {
//       assert(false);
//       return false;
//     }
//   }
//
//   String _removeQuotesAndEscapes(String val) {
//     if (_list.length == 3) {
//       if (val.length > 0 && (val[0] == "'" || val[0] == '"'))
//         val = val.substring(1);
//       var len = val.length;
//       if (len > 0 && (val[len - 1] == "'" || val[len - 1] == '"'))
//         val = val.substring(0, len - 1);
//       if (val.isNotEmpty) {
//         val = val.replaceFirst("\\'", "'");
//         val = val.replaceFirst('\\"', '"');
//       }
//       return val;
//     } else {
//       assert(false);
//       return '';
//     }
//   }
//
//   String? _getValueName(String val) {
//     if (val.length < 3 || val[0] != "{" || val[val.length - 1] != "}")
//       return null;
//     return val.substring(1, val.length - 1);
//   }
// }
