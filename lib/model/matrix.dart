part of 'survey.dart';

@JsonSerializable(includeIfNull: false)
class MatrixDropdown extends MatrixDropdownBase {
  static const $type = "matrixdropdown";
  String? get type => $type;

  @JsonKey(fromJson: ItemValue.fromListJson)
  List<ItemValue>? rows;
  String? rowsVisibleIf;
  String? rowTitleWidth;
  String? totalText;
  MatrixDropdown();
  factory MatrixDropdown.fromJson(Map<String, dynamic> json) =>
      _$MatrixDropdownFromJson(json);
  Map<String, dynamic> toJson() => _$MatrixDropdownToJson(this);
}

@JsonSerializable(includeIfNull: false)
class MatrixDynamic extends MatrixDropdownBase {
  static const $type = "matrixdynamic";
  String? get type => $type;

  String? rowsVisibleIf;
  bool? allowAddRows;
  bool? allowRemoveRows;
  int? rowCount;
  int? minRowCount;
  int? maxRowCount;
  String? keyName;
  dynamic defaultRowValue;
  bool? defaultValueFromLastRow;
  bool? confirmDelete;
  String? confirmDeleteText;
  //                "default",
  // "top",
  // "bottom",
  // "topBottom"
  String? addRowLocation;
  String? addRowText;
  String? removeRowText;
  bool? hideColumnsIfEmpty;
  String? emptyRowsText;

  MatrixDynamic();
  factory MatrixDynamic.fromJson(Map<String, dynamic> json) =>
      _$MatrixDynamicFromJson(json);
  Map<String, dynamic> toJson() => _$MatrixDynamicToJson(this);
}

@JsonSerializable(includeIfNull: false)
class Matrix extends MatrixBase {
  static const $type = "matrix";
  String? get type => $type;
  @JsonKey(fromJson: ItemValue.fromListJson)
  List<ItemValue>? columns;
  @JsonKey(fromJson: ItemValue.fromListJson)
  List<ItemValue>? rows;
  //TODO MatrixCell
  Map<String, Map<String, String>>? cells;
  //  "initial",     "random"
  String? rowsOrder;
  bool? isAllRowRequired;
  bool? hideIfRowsEmpty;

  Matrix();
  factory Matrix.fromJson(Map<String, dynamic> json) => _$MatrixFromJson(json);
  Map<String, dynamic> toJson() => _$MatrixToJson(this);
}

abstract class MatrixDropdownBase extends MatrixBase {
  static const $type = "matrixrropdownbase";
  String? get type => $type;
  List<MatrixDropdownColumn>? columns;
  //     "horizontal",   "vertical"
  String? columnLayout;
  String? detailElements;
  // "none", "underRow",   "underRowSingle"
  String? detailPanelMode;
  bool? horizontalScroll;
  String? optionsCaption;

  @JsonKey(fromJson: ItemValue.fromListJson)
  List<ItemValue>? choices;

  String? keyDuplicationError;
  //"dropdown","checkbox","radiogroup","text","comment","boolean","expression",  "rating"
  String? cellType;
  // 0,1,2,3,4
  int? columnColCount;
  String? columnMinWidth;

  MatrixDropdownBase();

  Map<String, dynamic> toJson();
}

@JsonSerializable(includeIfNull: false)
class MatrixDropdownColumn {
  static const $type = "matrixdropdowncolumn";
  String? get type => $type;

  String? name;
  String? title;
  //"dropdown","checkbox","radiogroup","text","comment","boolean","expression",  "rating"
  String? cellType;
  // -1,0,1,2,3,4
  String? colCount;
  bool? isRequired;
  bool? isUnique;
  String? requiredErrorText;
  bool? readOnly;
  String? minWidth;
  String? width;
  String? visibleIf;
  String? enableIf;
  String? requiredIf;
  bool? showInMultipleColumns;
  List<SurveyValidator>? validators;
  // "none",   "sum","count",         "min","max","avg"
  String? totalType;
  String? totalExpression;
  String? totalFormat;
  // "none",  "decimal","currency","percent"
  String? totalDisplayStyle;
  // "AED",
  // "AFN",
  // "ALL",
  // "AMD",
  // "ANG",
  // "AOA",
  // "ARS",
  // "AUD",
  // "AWG",
  // "AZN",
  // "BAM",
  // "BBD",
  // "BDT",
  // "BGN",
  // "BHD",
  // "BIF",
  // "BMD",
  // "BND",
  // "BOB",
  // "BOV",
  // "BRL",
  // "BSD",
  // "BTN",
  // "BWP",
  // "BYN",
  // "BZD",
  // "CAD",
  // "CDF",
  // "CHE",
  // "CHF",
  // "CHW",
  // "CLF",
  // "CLP",
  // "CNY",
  // "COP",
  // "COU",
  // "CRC",
  // "CUC",
  // "CUP",
  // "CVE",
  // "CZK",
  // "DJF",
  // "DKK",
  // "DOP",
  // "DZD",
  // "EGP",
  // "ERN",
  // "ETB",
  // "EUR",
  // "FJD",
  // "FKP",
  // "GBP",
  // "GEL",
  // "GHS",
  // "GIP",
  // "GMD",
  // "GNF",
  // "GTQ",
  // "GYD",
  // "HKD",
  // "HNL",
  // "HRK",
  // "HTG",
  // "HUF",
  // "IDR",
  // "ILS",
  // "INR",
  // "IQD",
  // "IRR",
  // "ISK",
  // "JMD",
  // "JOD",
  // "JPY",
  // "KES",
  // "KGS",
  // "KHR",
  // "KMF",
  // "KPW",
  // "KRW",
  // "KWD",
  // "KYD",
  // "KZT",
  // "LAK",
  // "LBP",
  // "LKR",
  // "LRD",
  // "LSL",
  // "LYD",
  // "MAD",
  // "MDL",
  // "MGA",
  // "MKD",
  // "MMK",
  // "MNT",
  // "MOP",
  // "MRO",
  // "MUR",
  // "MVR",
  // "MWK",
  // "MXN",
  // "MXV",
  // "MYR",
  // "MZN",
  // "NAD",
  // "NGN",
  // "NIO",
  // "NOK",
  // "NPR",
  // "NZD",
  // "OMR",
  // "PAB",
  // "PEN",
  // "PGK",
  // "PHP",
  // "PKR",
  // "PLN",
  // "PYG",
  // "QAR",
  // "RON",
  // "RSD",
  // "RUB",
  // "RWF",
  // "SAR",
  // "SBD",
  // "SCR",
  // "SDG",
  // "SEK",
  // "SGD",
  // "SHP",
  // "SLL",
  // "SOS",
  // "SRD",
  // "SSP",
  // "STD",
  // "SVC",
  // "SYP",
  // "SZL",
  // "THB",
  // "TJS",
  // "TMT",
  // "TND",
  // "TOP",
  // "TRY",
  // "TTD",
  // "TWD",
  // "TZS",
  // "UAH",
  // "UGX",
  // "USD",
  // "USN",
  // "UYI",
  // "UYU",
  // "UZS",
  // "VEF",
  // "VND",
  // "VUV",
  // "WST",
  // "XAF",
  // "XAG",
  // "XAU",
  // "XBA",
  // "XBB",
  // "XBC",
  // "XBD",
  // "XCD",
  // "XDR",
  // "XOF",
  // "XPD",
  // "XPF",
  // "XPT",
  // "XSU",
  // "XTS",
  // "XUA",
  // "XXX",
  // "YER",
  // "ZAR",
  // "ZMW",
  // "ZWL"
  String? totalCurrency;
  num? totalMaximumFractionDigits;
  num? totalMinimumFractionDigits;
  String? renderAs;

  MatrixDropdownColumn();
  factory MatrixDropdownColumn.fromJson(Map<String, dynamic> json) =>
      _$MatrixDropdownColumnFromJson(json);
  Map<String, dynamic> toJson() => _$MatrixDropdownColumnToJson(this);
}

abstract class MatrixBase extends Question {
  String? columnsVisibleIf;
  String? rowsVisibleIf;
  bool? showHeader;
  String? allowRowsDragAndDrop;
}
