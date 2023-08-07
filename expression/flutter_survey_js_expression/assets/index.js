(function (global, factory) {
    typeof exports === 'object' && typeof module !== 'undefined' ? module.exports = factory() :
    typeof define === 'function' && define.amd ? define(factory) :
    (global = typeof globalThis !== 'undefined' ? globalThis : global || self, global.surveyjs = factory());
})(this, (function () { 'use strict';

    /******************************************************************************
    Copyright (c) Microsoft Corporation.

    Permission to use, copy, modify, and/or distribute this software for any
    purpose with or without fee is hereby granted.

    THE SOFTWARE IS PROVIDED "AS IS" AND THE AUTHOR DISCLAIMS ALL WARRANTIES WITH
    REGARD TO THIS SOFTWARE INCLUDING ALL IMPLIED WARRANTIES OF MERCHANTABILITY
    AND FITNESS. IN NO EVENT SHALL THE AUTHOR BE LIABLE FOR ANY SPECIAL, DIRECT,
    INDIRECT, OR CONSEQUENTIAL DAMAGES OR ANY DAMAGES WHATSOEVER RESULTING FROM
    LOSS OF USE, DATA OR PROFITS, WHETHER IN AN ACTION OF CONTRACT, NEGLIGENCE OR
    OTHER TORTIOUS ACTION, ARISING OUT OF OR IN CONNECTION WITH THE USE OR
    PERFORMANCE OF THIS SOFTWARE.
    ***************************************************************************** */
    /* global Reflect, Promise, SuppressedError, Symbol */

    var extendStatics = function(d, b) {
        extendStatics = Object.setPrototypeOf ||
            ({ __proto__: [] } instanceof Array && function (d, b) { d.__proto__ = b; }) ||
            function (d, b) { for (var p in b) if (Object.prototype.hasOwnProperty.call(b, p)) d[p] = b[p]; };
        return extendStatics(d, b);
    };

    function __extends(d, b) {
        if (typeof b !== "function" && b !== null)
            throw new TypeError("Class extends value " + String(b) + " is not a constructor or null");
        extendStatics(d, b);
        function __() { this.constructor = d; }
        d.prototype = b === null ? Object.create(b) : (__.prototype = b.prototype, new __());
    }

    typeof SuppressedError === "function" ? SuppressedError : function (error, suppressed, message) {
        var e = new Error(message);
        return e.name = "SuppressedError", e.error = error, e.suppressed = suppressed, e;
    };

    var document = globalThis.document;
    var defaultEnvironment = (!!document ? {
        root: document,
        _rootElement: document.body,
        get rootElement() {
            var _a;
            return (_a = this._rootElement) !== null && _a !== void 0 ? _a : document.body;
        },
        set rootElement(rootElement) {
            this._rootElement = rootElement;
        },
        _popupMountContainer: document.body,
        get popupMountContainer() {
            var _a;
            return (_a = this._popupMountContainer) !== null && _a !== void 0 ? _a : document.body;
        },
        set popupMountContainer(popupMountContainer) {
            this._popupMountContainer = popupMountContainer;
        },
        svgMountContainer: document.head,
        stylesSheetsMountContainer: document.head,
    } : undefined);
    var columnWidthsByType = {
        "file": { minWidth: "240px" },
        "comment": { minWidth: "200px" }
    };
    var settings = {
        designMode: {
            showEmptyDescriptions: true,
            showEmptyTitles: true
        },
        get allowShowEmptyDescriptionInDesignMode() { return this.designMode.showEmptyDescriptions; },
        set allowShowEmptyDescriptionInDesignMode(val) { this.designMode.showEmptyDescriptions = val; },
        get allowShowEmptyTitleInDesignMode() { return this.designMode.showEmptyTitles; },
        set allowShowEmptyTitleInDesignMode(val) { this.designMode.showEmptyTitles = val; },
        localization: {
            useLocalTimeZone: true,
            storeDuplicatedTranslations: false,
            defaultLocaleName: "default"
        },
        get useLocalTimeZone() { return this.localization.useLocalTimeZone; },
        set useLocalTimeZone(val) { this.localization.useLocalTimeZone = val; },
        get storeDuplicatedTranslations() { return this.localization.storeDuplicatedTranslations; },
        set storeDuplicatedTranslations(val) { this.localization.storeDuplicatedTranslations = val; },
        get defaultLocaleName() { return this.localization.defaultLocaleName; },
        set defaultLocaleName(val) { this.localization.defaultLocaleName = val; },
        web: {
            encodeUrlParams: true,
            cacheLoadedChoices: true,
            disableQuestionWhileLoadingChoices: false,
            surveyServiceUrl: "https://api.surveyjs.io/public/v1/Survey"
        },
        get webserviceEncodeParameters() { return this.web.encodeUrlParams; },
        set webserviceEncodeParameters(val) { this.web.encodeUrlParams = val; },
        get useCachingForChoicesRestful() { return this.web.cacheLoadedChoices; },
        set useCachingForChoicesRestful(val) { this.web.cacheLoadedChoices = val; },
        get useCachingForChoicesRestfull() { return this.web.cacheLoadedChoices; },
        set useCachingForChoicesRestfull(val) { this.web.cacheLoadedChoices = val; },
        get disableOnGettingChoicesFromWeb() { return this.web.disableQuestionWhileLoadingChoices; },
        set disableOnGettingChoicesFromWeb(val) { this.web.disableQuestionWhileLoadingChoices = val; },
        get surveyServiceUrl() { return this.web.surveyServiceUrl; },
        set surveyServiceUrl(val) { this.web.surveyServiceUrl = val; },
        triggers: {
            changeNavigationButtonsOnComplete: true,
            executeCompleteOnValueChanged: false,
            executeSkipOnValueChanged: true
        },
        get executeCompleteTriggerOnValueChanged() { return this.triggers.executeCompleteOnValueChanged; },
        set executeCompleteTriggerOnValueChanged(val) { this.triggers.executeCompleteOnValueChanged = val; },
        get changeNavigationButtonsOnCompleteTrigger() { return this.triggers.changeNavigationButtonsOnComplete; },
        set changeNavigationButtonsOnCompleteTrigger(val) { this.triggers.changeNavigationButtonsOnComplete = val; },
        get executeSkipTriggerOnValueChanged() { return this.triggers.executeSkipOnValueChanged; },
        set executeSkipTriggerOnValueChanged(val) { this.triggers.executeSkipOnValueChanged = val; },
        serialization: {
            itemValueSerializeAsObject: false,
            itemValueSerializeDisplayText: false,
            localizableStringSerializeAsObject: false
        },
        get itemValueAlwaysSerializeAsObject() { return this.serialization.itemValueSerializeAsObject; },
        set itemValueAlwaysSerializeAsObject(val) { this.serialization.itemValueSerializeAsObject = val; },
        get itemValueAlwaysSerializeText() { return this.serialization.itemValueSerializeDisplayText; },
        set itemValueAlwaysSerializeText(val) { this.serialization.itemValueSerializeDisplayText = val; },
        get serializeLocalizableStringAsObject() { return this.serialization.localizableStringSerializeAsObject; },
        set serializeLocalizableStringAsObject(val) { this.serialization.localizableStringSerializeAsObject = val; },
        lazyRender: {
            enabled: false,
            firstBatchSize: 3
        },
        get lazyRowsRendering() { return this.lazyRender.enabled; },
        set lazyRowsRendering(val) { this.lazyRender.enabled = val; },
        get lazyRowsRenderingStartRow() { return this.lazyRender.firstBatchSize; },
        set lazyRowsRenderingStartRow(val) { this.lazyRender.firstBatchSize = val; },
        matrix: {
            defaultCellType: "dropdown",
            defaultRowName: "default",
            totalsSuffix: "-total",
            maxRowCount: 1000,
            maxRowCountInCondition: 1,
            renderRemoveAsIcon: true,
            columnWidthsByType: columnWidthsByType,
            rateSize: "small",
        },
        get matrixDefaultRowName() { return this.matrix.defaultRowName; },
        set matrixDefaultRowName(val) { this.matrix.defaultRowName = val; },
        get matrixDefaultCellType() { return this.matrix.defaultCellType; },
        set matrixDefaultCellType(val) { this.matrix.defaultCellType = val; },
        get matrixTotalValuePostFix() { return this.matrix.totalsSuffix; },
        set matrixTotalValuePostFix(val) { this.matrix.totalsSuffix = val; },
        get matrixMaximumRowCount() { return this.matrix.maxRowCount; },
        set matrixMaximumRowCount(val) { this.matrix.maxRowCount = val; },
        get matrixMaxRowCountInCondition() { return this.matrix.maxRowCountInCondition; },
        set matrixMaxRowCountInCondition(val) { this.matrix.maxRowCountInCondition = val; },
        get matrixRenderRemoveAsIcon() { return this.matrix.renderRemoveAsIcon; },
        set matrixRenderRemoveAsIcon(val) { this.matrix.renderRemoveAsIcon = val; },
        panel: {
            maxPanelCount: 100,
            maxPanelCountInCondition: 1
        },
        get panelDynamicMaxPanelCountInCondition() { return this.panel.maxPanelCountInCondition; },
        set panelDynamicMaxPanelCountInCondition(val) { this.panel.maxPanelCountInCondition = val; },
        get panelMaximumPanelCount() { return this.panel.maxPanelCount; },
        set panelMaximumPanelCount(val) { this.panel.maxPanelCount = val; },
        readOnly: {
            commentRenderMode: "textarea",
            textRenderMode: "input"
        },
        get readOnlyCommentRenderMode() { return this.readOnly.commentRenderMode; },
        set readOnlyCommentRenderMode(val) { this.readOnly.commentRenderMode = val; },
        get readOnlyTextRenderMode() { return this.readOnly.textRenderMode; },
        set readOnlyTextRenderMode(val) { this.readOnly.textRenderMode = val; },
        numbering: {
            includeQuestionsWithHiddenNumber: false,
            includeQuestionsWithHiddenTitle: false
        },
        get setQuestionVisibleIndexForHiddenTitle() { return this.numbering.includeQuestionsWithHiddenTitle; },
        set setQuestionVisibleIndexForHiddenTitle(val) { this.numbering.includeQuestionsWithHiddenTitle = val; },
        get setQuestionVisibleIndexForHiddenNumber() { return this.numbering.includeQuestionsWithHiddenNumber; },
        set setQuestionVisibleIndexForHiddenNumber(val) { this.numbering.includeQuestionsWithHiddenNumber = val; },
        enterKeyAction: "default",
        comparator: {
            trimStrings: true,
            caseSensitive: false,
            normalizeTextCallback: function (str, reason) { return str; }
        },
        expressionDisableConversionChar: "#",
        get commentPrefix() { return settings.commentSuffix; },
        set commentPrefix(val) { settings.commentSuffix = val; },
        commentSuffix: "-Comment",
        itemValueSeparator: "|",
        ratingMaximumRateValueCount: 20,
        tagboxCloseOnSelect: false,
        confirmActionFunc: function (message) {
            return confirm(message);
        },
        minWidth: "300px",
        maxWidth: "100%",
        maxConditionRunCountOnValueChanged: 10,
        notifications: {
            lifetime: 2000
        },
        showItemsInOrder: "default",
        noneItemValue: "none",
        supportedValidators: {
            question: ["expression"],
            comment: ["text", "regex"],
            text: ["numeric", "text", "regex", "email"],
            checkbox: ["answercount"],
            imagepicker: ["answercount"],
        },
        minDate: "",
        maxDate: "",
        showModal: undefined,
        showDialog: undefined,
        supportCreatorV2: false,
        showDefaultItemsInCreatorV2: true,
        customIcons: {},
        rankingDragHandleArea: "entireItem",
        environment: defaultEnvironment,
        showMaxLengthIndicator: true,
        titleTags: {
            survey: "h3",
            page: "h4",
            panel: "h4",
            question: "h5",
        },
        questions: {
            inputTypes: [
                "color",
                "date",
                "datetime-local",
                "email",
                "month",
                "number",
                "password",
                "range",
                "tel",
                "text",
                "time",
                "url",
                "week",
            ],
            dataList: [
                "",
                "name",
                "honorific-prefix",
                "given-name",
                "additional-name",
                "family-name",
                "honorific-suffix",
                "nickname",
                "organization-title",
                "username",
                "new-password",
                "current-password",
                "organization",
                "street-address",
                "address-line1",
                "address-line2",
                "address-line3",
                "address-level4",
                "address-level3",
                "address-level2",
                "address-level1",
                "country",
                "country-name",
                "postal-code",
                "cc-name",
                "cc-given-name",
                "cc-additional-name",
                "cc-family-name",
                "cc-number",
                "cc-exp",
                "cc-exp-month",
                "cc-exp-year",
                "cc-csc",
                "cc-type",
                "transaction-currency",
                "transaction-amount",
                "language",
                "bday",
                "bday-day",
                "bday-month",
                "bday-year",
                "sex",
                "url",
                "photo",
                "tel",
                "tel-country-code",
                "tel-national",
                "tel-area-code",
                "tel-local",
                "tel-local-prefix",
                "tel-local-suffix",
                "tel-extension",
                "email",
                "impp",
            ]
        }
    };

    var Helpers =  (function () {
        function Helpers() {
        }
        Helpers.isValueEmpty = function (value) {
            if (Array.isArray(value) && value.length === 0)
                return true;
            if (!!value && Helpers.isValueObject(value) && value.constructor === Object) {
                for (var key in value) {
                    if (!Helpers.isValueEmpty(value[key]))
                        return false;
                }
                return true;
            }
            return !value && value !== 0 && value !== false;
        };
        Helpers.isArrayContainsEqual = function (x, y) {
            if (!Array.isArray(x) || !Array.isArray(y))
                return false;
            if (x.length !== y.length)
                return false;
            for (var i = 0; i < x.length; i++) {
                var j = 0;
                for (; j < y.length; j++) {
                    if (Helpers.isTwoValueEquals(x[i], y[j]))
                        break;
                }
                if (j === y.length)
                    return false;
            }
            return true;
        };
        Helpers.isArraysEqual = function (x, y, ignoreOrder, caseSensitive, trimStrings) {
            if (ignoreOrder === void 0) { ignoreOrder = false; }
            if (!Array.isArray(x) || !Array.isArray(y))
                return false;
            if (x.length !== y.length)
                return false;
            if (ignoreOrder) {
                var xSorted = [];
                var ySorted = [];
                for (var i = 0; i < x.length; i++) {
                    xSorted.push(x[i]);
                    ySorted.push(y[i]);
                }
                xSorted.sort();
                ySorted.sort();
                x = xSorted;
                y = ySorted;
            }
            for (var i = 0; i < x.length; i++) {
                if (!Helpers.isTwoValueEquals(x[i], y[i], ignoreOrder, caseSensitive, trimStrings))
                    return false;
            }
            return true;
        };
        Helpers.compareStrings = function (x, y) {
            var normalize = settings.comparator.normalizeTextCallback;
            if (!!x)
                x = normalize(x, "compare").trim();
            if (!!y)
                y = normalize(y, "compare").trim();
            if (!x && !y)
                return 0;
            if (!x)
                return -1;
            if (!y)
                return 1;
            if (x === y)
                return 0;
            var digitIndex = -1;
            for (var i = 0; i < x.length && i < y.length; i++) {
                if (this.isCharDigit(x[i]) && this.isCharDigit(y[i])) {
                    digitIndex = i;
                    break;
                }
                if (x[i] !== y[i])
                    break;
            }
            if (digitIndex > -1) {
                var nX = this.getNumberFromStr(x, digitIndex);
                var nY = this.getNumberFromStr(y, digitIndex);
                if (!Number.isNaN(nX) && !Number.isNaN(nY) && nX !== nY) {
                    return nX > nY ? 1 : -1;
                }
            }
            return x > y ? 1 : -1;
        };
        Helpers.isTwoValueEquals = function (x, y, ignoreOrder, caseSensitive, trimStrings) {
            if (ignoreOrder === void 0) { ignoreOrder = false; }
            if (x === y)
                return true;
            if (Array.isArray(x) && x.length === 0 && typeof y === "undefined")
                return true;
            if (Array.isArray(y) && y.length === 0 && typeof x === "undefined")
                return true;
            if ((x === undefined || x === null) && y === "")
                return true;
            if ((y === undefined || y === null) && x === "")
                return true;
            if (trimStrings === undefined)
                trimStrings = settings.comparator.trimStrings;
            if (caseSensitive === undefined)
                caseSensitive = settings.comparator.caseSensitive;
            if (typeof x === "string" && typeof y === "string") {
                var normalize = settings.comparator.normalizeTextCallback;
                x = normalize(x, "compare");
                y = normalize(y, "compare");
                if (trimStrings) {
                    x = x.trim();
                    y = y.trim();
                }
                if (!caseSensitive) {
                    x = x.toLowerCase();
                    y = y.toLowerCase();
                }
                return x === y;
            }
            if (x instanceof Date && y instanceof Date)
                return x.getTime() == y.getTime();
            if (Helpers.isConvertibleToNumber(x) && Helpers.isConvertibleToNumber(y)) {
                if (parseInt(x) === parseInt(y) && parseFloat(x) === parseFloat(y)) {
                    return true;
                }
            }
            if ((!Helpers.isValueEmpty(x) && Helpers.isValueEmpty(y)) ||
                (Helpers.isValueEmpty(x) && !Helpers.isValueEmpty(y)))
                return false;
            if ((x === true || x === false) && typeof y == "string") {
                return x.toString() === y.toLocaleLowerCase();
            }
            if ((y === true || y === false) && typeof x == "string") {
                return y.toString() === x.toLocaleLowerCase();
            }
            if (!Helpers.isValueObject(x) && !Helpers.isValueObject(y))
                return x == y;
            if (!Helpers.isValueObject(x) || !Helpers.isValueObject(y))
                return false;
            if (x["equals"])
                return x.equals(y);
            if (!!x.toJSON && !!y.toJSON && !!x.getType && !!y.getType) {
                if (x.isDiposed || y.isDiposed)
                    return false;
                if (x.getType() !== y.getType())
                    return false;
                if (!!x.name && x.name !== y.name)
                    return false;
                return this.isTwoValueEquals(x.toJSON(), y.toJSON(), ignoreOrder, caseSensitive, trimStrings);
            }
            if (Array.isArray(x) && Array.isArray(y))
                return Helpers.isArraysEqual(x, y, ignoreOrder, caseSensitive, trimStrings);
            if (!!x.equalsTo && y.equalsTo)
                return x.equalsTo(y);
            for (var p in x) {
                if (!x.hasOwnProperty(p))
                    continue;
                if (!y.hasOwnProperty(p))
                    return false;
                if (!this.isTwoValueEquals(x[p], y[p], ignoreOrder, caseSensitive, trimStrings))
                    return false;
            }
            for (p in y) {
                if (y.hasOwnProperty(p) && !x.hasOwnProperty(p))
                    return false;
            }
            return true;
        };
        Helpers.randomizeArray = function (array) {
            for (var i = array.length - 1; i > 0; i--) {
                var j = Math.floor(Math.random() * (i + 1));
                var temp = array[i];
                array[i] = array[j];
                array[j] = temp;
            }
            return array;
        };
        Helpers.getUnbindValue = function (value) {
            if (Array.isArray(value)) {
                var res = [];
                for (var i = 0; i < value.length; i++) {
                    res.push(Helpers.getUnbindValue(value[i]));
                }
                return res;
            }
            if (!!value && Helpers.isValueObject(value) && !(value instanceof Date)) {
                return JSON.parse(JSON.stringify(value));
            }
            return value;
        };
        Helpers.createCopy = function (obj) {
            var res = {};
            if (!obj)
                return res;
            for (var key in obj) {
                res[key] = obj[key];
            }
            return res;
        };
        Helpers.isConvertibleToNumber = function (value) {
            return (value !== undefined &&
                value !== null &&
                !Array.isArray(value) &&
                !isNaN(value));
        };
        Helpers.isValueObject = function (val) {
            return val instanceof Object;
        };
        Helpers.isNumber = function (value) {
            return !isNaN(this.getNumber(value));
        };
        Helpers.getNumber = function (value) {
            if (typeof value == "string" &&
                !!value &&
                value.indexOf("0x") == 0 &&
                value.length > 32)
                return NaN;
            value = this.prepareStringToNumber(value);
            var res = parseFloat(value);
            if (isNaN(res) || !isFinite(value))
                return NaN;
            return res;
        };
        Helpers.prepareStringToNumber = function (val) {
            if (typeof val !== "string" || !val)
                return val;
            var i = val.indexOf(",");
            if (i > -1 && val.indexOf(",", i + 1) < 0) {
                return val.replace(",", ".");
            }
            return val;
        };
        Helpers.getMaxLength = function (maxLength, surveyLength) {
            if (maxLength < 0) {
                maxLength = surveyLength;
            }
            return maxLength > 0 ? maxLength : null;
        };
        Helpers.getRemainingCharacterCounterText = function (newValue, maxLength) {
            if (!maxLength || maxLength <= 0 || !settings.showMaxLengthIndicator) {
                return "";
            }
            var value = newValue ? newValue.length : "0";
            return [value, maxLength].join("/");
        };
        Helpers.getNumberByIndex = function (index, startIndexStr) {
            if (index < 0)
                return "";
            var startIndex = 1;
            var prefix = "";
            var postfix = ".";
            var isNumeric = true;
            var strIndex = "A";
            var str = "";
            if (!!startIndexStr) {
                str = startIndexStr;
                var ind = str.length - 1;
                var hasDigit = false;
                for (var i = 0; i < str.length; i++) {
                    if (Helpers.isCharDigit(str[i])) {
                        hasDigit = true;
                        break;
                    }
                }
                var checkLetter = function () {
                    return ((hasDigit && !Helpers.isCharDigit(str[ind])) ||
                        Helpers.isCharNotLetterAndDigit(str[ind]));
                };
                while (ind >= 0 && checkLetter())
                    ind--;
                var newPostfix = "";
                if (ind < str.length - 1) {
                    newPostfix = str.substring(ind + 1);
                    str = str.substring(0, ind + 1);
                }
                ind = str.length - 1;
                while (ind >= 0) {
                    if (checkLetter())
                        break;
                    ind--;
                    if (!hasDigit)
                        break;
                }
                strIndex = str.substring(ind + 1);
                prefix = str.substring(0, ind + 1);
                if (parseInt(strIndex))
                    startIndex = parseInt(strIndex);
                else if (strIndex.length == 1)
                    isNumeric = false;
                if (!!newPostfix || !!prefix) {
                    postfix = newPostfix;
                }
            }
            if (isNumeric) {
                var val = (index + startIndex).toString();
                while (val.length < strIndex.length)
                    val = "0" + val;
                return prefix + val + postfix;
            }
            return (prefix + String.fromCharCode(strIndex.charCodeAt(0) + index) + postfix);
        };
        Helpers.isCharNotLetterAndDigit = function (ch) {
            return ch.toUpperCase() == ch.toLowerCase() && !Helpers.isCharDigit(ch);
        };
        Helpers.isCharDigit = function (ch) {
            return ch >= "0" && ch <= "9";
        };
        Helpers.getNumberFromStr = function (str, index) {
            if (!this.isCharDigit(str[index]))
                return NaN;
            var nStr = "";
            while (index < str.length && this.isCharDigit(str[index])) {
                nStr += str[index];
                index++;
            }
            if (!nStr)
                return NaN;
            return this.getNumber(nStr);
        };
        Helpers.countDecimals = function (value) {
            if (Helpers.isNumber(value) && Math.floor(value) !== value) {
                var strs = value.toString().split(".");
                return strs.length > 1 && strs[1].length || 0;
            }
            return 0;
        };
        Helpers.correctAfterPlusMinis = function (a, b, res) {
            var digitsA = Helpers.countDecimals(a);
            var digitsB = Helpers.countDecimals(b);
            if (digitsA > 0 || digitsB > 0) {
                var digits = Math.max(digitsA, digitsB);
                res = parseFloat(res.toFixed(digits));
            }
            return res;
        };
        Helpers.sumAnyValues = function (a, b) {
            if (!Helpers.isNumber(a) || !Helpers.isNumber(b)) {
                if (Array.isArray(a) && Array.isArray(b))
                    return [].concat(a).concat(b);
                if (Array.isArray(a) || Array.isArray(b)) {
                    var arr = Array.isArray(a) ? a : b;
                    var val = arr === a ? b : a;
                    if (typeof val === "string") {
                        var str = arr.join(", ");
                        return arr === a ? str + val : val + str;
                    }
                    if (typeof val === "number") {
                        var res = 0;
                        for (var i = 0; i < arr.length; i++) {
                            if (typeof arr[i] === "number") {
                                res = Helpers.correctAfterPlusMinis(res, arr[i], res + arr[i]);
                            }
                        }
                        return Helpers.correctAfterPlusMinis(res, val, res + val);
                    }
                }
                return a + b;
            }
            return Helpers.correctAfterPlusMinis(a, b, a + b);
        };
        Helpers.correctAfterMultiple = function (a, b, res) {
            var digits = Helpers.countDecimals(a) + Helpers.countDecimals(b);
            if (digits > 0) {
                res = parseFloat(res.toFixed(digits));
            }
            return res;
        };
        Helpers.convertArrayValueToObject = function (src, propName, dest) {
            if (dest === void 0) { dest = undefined; }
            var res = new Array();
            if (!src || !Array.isArray(src))
                return res;
            for (var i = 0; i < src.length; i++) {
                var item = void 0;
                if (Array.isArray(dest)) {
                    item = Helpers.findObjByPropValue(dest, propName, src[i]);
                }
                if (!item) {
                    item = {};
                    item[propName] = src[i];
                }
                res.push(item);
            }
            return res;
        };
        Helpers.findObjByPropValue = function (arr, propName, val) {
            for (var i = 0; i < arr.length; i++) {
                if (Helpers.isTwoValueEquals(arr[i][propName], val))
                    return arr[i];
            }
            return undefined;
        };
        Helpers.convertArrayObjectToValue = function (src, propName) {
            var res = new Array();
            if (!src || !Array.isArray(src))
                return res;
            for (var i = 0; i < src.length; i++) {
                var itemVal = !!src[i] ? src[i][propName] : undefined;
                if (!Helpers.isValueEmpty(itemVal))
                    res.push(itemVal);
            }
            return res;
        };
        Helpers.convertDateToString = function (date) {
            var toStr = function (val) {
                if (val < 10)
                    return "0" + val.toString();
                return val.toString();
            };
            return date.getFullYear() + "-" + toStr(date.getMonth() + 1) + "-" + toStr(date.getDate());
        };
        Helpers.convertDateTimeToString = function (date) {
            var toStr = function (val) {
                if (val < 10)
                    return "0" + val.toString();
                return val.toString();
            };
            return this.convertDateToString(date) + " " + toStr(date.getHours()) + ":" + toStr(date.getMinutes());
        };
        Helpers.convertValToQuestionVal = function (val, inputType) {
            if (val instanceof Date) {
                if (inputType === "datetime-local")
                    return Helpers.convertDateTimeToString(val);
                return Helpers.convertDateToString(val);
            }
            return val;
        };
        return Helpers;
    }());
    if (!String.prototype["format"]) {
        String.prototype["format"] = function () {
            var args = arguments;
            return this.replace(/{(\d+)}/g, function (match, number) {
                return typeof args[number] != "undefined" ? args[number] : match;
            });
        };
    }

    var surveyBuiltInVarible = "@survey";
    var ProcessValue =  (function () {
        function ProcessValue() {
            this.values = null;
            this.properties = null;
        }
        ProcessValue.prototype.getFirstName = function (text, obj) {
            if (obj === void 0) { obj = null; }
            if (!text)
                return text;
            var res = "";
            if (!!obj) {
                res = this.getFirstPropertyName(text, obj);
                if (!!res)
                    return res;
            }
            for (var i = 0; i < text.length; i++) {
                var ch = text[i];
                if (ch == "." || ch == "[")
                    break;
                res += ch;
            }
            return res;
        };
        ProcessValue.prototype.hasValue = function (text, values) {
            if (values === void 0) { values = null; }
            if (!values)
                values = this.values;
            var res = this.getValueCore(text, values);
            return res.hasValue;
        };
        ProcessValue.prototype.getValue = function (text, values) {
            if (values === void 0) { values = null; }
            if (!values)
                values = this.values;
            var res = this.getValueCore(text, values);
            return res.value;
        };
        ProcessValue.prototype.setValue = function (obj, text, value) {
            if (!text)
                return;
            var nonNestedObj = this.getNonNestedObject(obj, text, true);
            if (!nonNestedObj)
                return;
            obj = nonNestedObj.value;
            text = nonNestedObj.text;
            if (!!obj && !!text) {
                obj[text] = value;
            }
        };
        ProcessValue.prototype.getValueInfo = function (valueInfo) {
            if (!!valueInfo.path) {
                valueInfo.value = this.getValueFromPath(valueInfo.path, this.values);
                valueInfo.hasValue =
                    valueInfo.value !== null && !Helpers.isValueEmpty(valueInfo.value);
                if (!valueInfo.hasValue &&
                    valueInfo.path.length > 1 &&
                    valueInfo.path[valueInfo.path.length - 1] == "length") {
                    valueInfo.hasValue = true;
                    valueInfo.value = 0;
                }
                return;
            }
            var res = this.getValueCore(valueInfo.name, this.values);
            valueInfo.value = res.value;
            valueInfo.hasValue = res.hasValue;
            valueInfo.path = res.hasValue ? res.path : null;
            valueInfo.sctrictCompare = res.sctrictCompare;
        };
        ProcessValue.prototype.getValueFromPath = function (path, values) {
            if (path.length === 2 && path[0] === surveyBuiltInVarible) {
                return this.getValueFromSurvey(path[1]);
            }
            var index = 0;
            while (!!values && index < path.length) {
                var ind_name = path[index];
                if (Helpers.isNumber(ind_name) &&
                    Array.isArray(values) &&
                    ind_name >= values.length)
                    return null;
                values = values[ind_name];
                index++;
            }
            return values;
        };
        ProcessValue.prototype.getValueCore = function (text, values) {
            var question = this.getQuestionDirectly(text);
            if (question) {
                return {
                    hasValue: true,
                    value: question.value,
                    path: [text],
                    sctrictCompare: question.requireStrictCompare,
                };
            }
            var res = this.getValueFromValues(text, values);
            if (!!text && !res.hasValue) {
                var val = this.getValueFromSurvey(text);
                if (val !== undefined) {
                    res.hasValue = true;
                    res.value = val;
                    res.path = [surveyBuiltInVarible, text];
                }
            }
            return res;
        };
        ProcessValue.prototype.getQuestionDirectly = function (name) {
            if (!!this.properties && !!this.properties.survey)
                return this.properties.survey.getQuestionByValueName(name);
            return undefined;
        };
        ProcessValue.prototype.getValueFromSurvey = function (name) {
            if (!!this.properties && !!this.properties.survey)
                return this.properties.survey.getBuiltInVariableValue(name.toLocaleLowerCase());
            return undefined;
        };
        ProcessValue.prototype.getValueFromValues = function (text, values) {
            var res = { hasValue: false, value: null, path: null };
            var curValue = values;
            if (!curValue && curValue !== 0 && curValue !== false)
                return res;
            if (text &&
                text.lastIndexOf(".length") > -1 &&
                text.lastIndexOf(".length") === text.length - ".length".length) {
                res.value = 0;
                res.hasValue = true;
            }
            var nonNestedObj = this.getNonNestedObject(curValue, text, false);
            if (!nonNestedObj)
                return res;
            res.path = nonNestedObj.path;
            res.value = !!nonNestedObj.text
                ? this.getObjectValue(nonNestedObj.value, nonNestedObj.text)
                : nonNestedObj.value;
            res.hasValue = !Helpers.isValueEmpty(res.value);
            return res;
        };
        ProcessValue.prototype.getNonNestedObject = function (obj, text, createPath) {
            var curName = this.getFirstPropertyName(text, obj, createPath);
            var path = !!curName ? [curName] : null;
            while (text != curName && !!obj) {
                var isArray = text[0] == "[";
                if (!isArray) {
                    if (!curName && text == this.getFirstName(text))
                        return { value: obj, text: text, path: path };
                    obj = this.getObjectValue(obj, curName);
                    if (Helpers.isValueEmpty(obj) && !createPath)
                        return null;
                    text = text.substring(curName.length);
                }
                else {
                    var objInArray = this.getObjInArray(obj, text);
                    if (!objInArray)
                        return null;
                    obj = objInArray.value;
                    text = objInArray.text;
                    path.push(objInArray.index);
                }
                if (!!text && text[0] == ".") {
                    text = text.substring(1);
                }
                curName = this.getFirstPropertyName(text, obj, createPath);
                if (!!curName) {
                    path.push(curName);
                }
            }
            return { value: obj, text: text, path: path };
        };
        ProcessValue.prototype.getObjInArray = function (curValue, text) {
            if (!Array.isArray(curValue))
                return null;
            var index = 1;
            var str = "";
            while (index < text.length && text[index] != "]") {
                str += text[index];
                index++;
            }
            text = index < text.length ? text.substring(index + 1) : "";
            index = this.getIntValue(str);
            if (index < 0 || index >= curValue.length)
                return null;
            return { value: curValue[index], text: text, index: index };
        };
        ProcessValue.prototype.getFirstPropertyName = function (name, obj, createProp) {
            if (createProp === void 0) { createProp = false; }
            if (!name)
                return name;
            if (!obj)
                obj = {};
            if (obj.hasOwnProperty(name))
                return name;
            var nameInLow = name.toLowerCase();
            var A = nameInLow[0];
            var a = A.toUpperCase();
            for (var key in obj) {
                var first = key[0];
                if (first === a || first === A) {
                    var keyName = key.toLowerCase();
                    if (keyName == nameInLow)
                        return key;
                    if (nameInLow.length <= keyName.length)
                        continue;
                    var ch = nameInLow[keyName.length];
                    if (ch != "." && ch != "[")
                        continue;
                    if (keyName == nameInLow.substring(0, keyName.length))
                        return key;
                }
            }
            if (createProp && name[0] !== "[") {
                var ind = name.indexOf(".");
                if (ind > -1) {
                    name = name.substring(0, ind);
                    obj[name] = {};
                }
                return name;
            }
            return "";
        };
        ProcessValue.prototype.getObjectValue = function (obj, name) {
            if (!name)
                return null;
            return obj[name];
        };
        ProcessValue.prototype.getIntValue = function (str) {
            if (str == "0" || ((str | 0) > 0 && str % 1 == 0))
                return Number(str);
            return -1;
        };
        return ProcessValue;
    }());

    var FunctionFactory =  (function () {
        function FunctionFactory() {
            this.functionHash = {};
            this.isAsyncHash = {};
        }
        FunctionFactory.prototype.register = function (name, func, isAsync) {
            if (isAsync === void 0) { isAsync = false; }
            this.functionHash[name] = func;
            if (isAsync)
                this.isAsyncHash[name] = true;
        };
        FunctionFactory.prototype.unregister = function (name) {
            delete this.functionHash[name];
            delete this.isAsyncHash[name];
        };
        FunctionFactory.prototype.hasFunction = function (name) {
            return !!this.functionHash[name];
        };
        FunctionFactory.prototype.isAsyncFunction = function (name) {
            return !!this.isAsyncHash[name];
        };
        FunctionFactory.prototype.clear = function () {
            this.functionHash = {};
        };
        FunctionFactory.prototype.getAll = function () {
            var result = [];
            for (var key in this.functionHash) {
                result.push(key);
            }
            return result.sort();
        };
        FunctionFactory.prototype.run = function (name, params, properties) {
            if (properties === void 0) { properties = null; }
            var func = this.functionHash[name];
            if (!func)
                return null;
            var classRunner = {
                func: func,
            };
            if (properties) {
                for (var key in properties) {
                    classRunner[key] = properties[key];
                }
            }
            return classRunner.func(params);
        };
        FunctionFactory.Instance = new FunctionFactory();
        return FunctionFactory;
    }());
    FunctionFactory.Instance.register;
    function getParamsAsArray(value, arr) {
        if (value === undefined || value === null)
            return;
        if (Array.isArray(value)) {
            for (var i = 0; i < value.length; i++) {
                getParamsAsArray(value[i], arr);
            }
        }
        else {
            if (Helpers.isNumber(value)) {
                value = Helpers.getNumber(value);
            }
            arr.push(value);
        }
    }
    function sum(params) {
        var arr = [];
        getParamsAsArray(params, arr);
        var res = 0;
        for (var i = 0; i < arr.length; i++) {
            res = Helpers.correctAfterPlusMinis(res, arr[i], res + arr[i]);
        }
        return res;
    }
    FunctionFactory.Instance.register("sum", sum);
    function min_max(params, isMin) {
        var arr = [];
        getParamsAsArray(params, arr);
        var res = undefined;
        for (var i = 0; i < arr.length; i++) {
            if (res === undefined) {
                res = arr[i];
            }
            if (isMin) {
                if (res > arr[i])
                    res = arr[i];
            }
            else {
                if (res < arr[i])
                    res = arr[i];
            }
        }
        return res;
    }
    function min(params) {
        return min_max(params, true);
    }
    FunctionFactory.Instance.register("min", min);
    function max(params) {
        return min_max(params, false);
    }
    FunctionFactory.Instance.register("max", max);
    function count(params) {
        var arr = [];
        getParamsAsArray(params, arr);
        return arr.length;
    }
    FunctionFactory.Instance.register("count", count);
    function avg(params) {
        var arr = [];
        getParamsAsArray(params, arr);
        var res = sum(params);
        return arr.length > 0 ? res / arr.length : 0;
    }
    FunctionFactory.Instance.register("avg", avg);
    function getInArrayParams(params) {
        if (params.length != 2)
            return null;
        var arr = params[0];
        if (!arr)
            return null;
        if (!Array.isArray(arr) && !Array.isArray(Object.keys(arr)))
            return null;
        var name = params[1];
        if (typeof name !== "string" && !(name instanceof String))
            return null;
        return { data: arr, name: name };
    }
    function convertToNumber(val) {
        if (typeof val === "string")
            return Helpers.isNumber(val) ? Helpers.getNumber(val) : undefined;
        return val;
    }
    function processItemInArray(item, name, res, func, needToConvert) {
        if (!item || Helpers.isValueEmpty(item[name]))
            return res;
        var val = needToConvert ? convertToNumber(item[name]) : 1;
        return func(res, val);
    }
    function calcInArray(params, func, needToConvert) {
        if (needToConvert === void 0) { needToConvert = true; }
        var v = getInArrayParams(params);
        if (!v)
            return undefined;
        var res = undefined;
        if (Array.isArray(v.data)) {
            for (var i = 0; i < v.data.length; i++) {
                res = processItemInArray(v.data[i], v.name, res, func, needToConvert);
            }
        }
        else {
            for (var key in v.data) {
                res = processItemInArray(v.data[key], v.name, res, func, needToConvert);
            }
        }
        return res;
    }
    function sumInArray(params) {
        var res = calcInArray(params, function (res, val) {
            if (res == undefined)
                res = 0;
            if (val == undefined || val == null)
                return res;
            return Helpers.correctAfterPlusMinis(res, val, res + val);
        });
        return res !== undefined ? res : 0;
    }
    FunctionFactory.Instance.register("sumInArray", sumInArray);
    function minInArray(params) {
        return calcInArray(params, function (res, val) {
            if (res == undefined)
                return val;
            if (val == undefined || val == null)
                return res;
            return res < val ? res : val;
        });
    }
    FunctionFactory.Instance.register("minInArray", minInArray);
    function maxInArray(params) {
        return calcInArray(params, function (res, val) {
            if (res == undefined)
                return val;
            if (val == undefined || val == null)
                return res;
            return res > val ? res : val;
        });
    }
    FunctionFactory.Instance.register("maxInArray", maxInArray);
    function countInArray(params) {
        var res = calcInArray(params, function (res, val) {
            if (res == undefined)
                res = 0;
            if (val == undefined || val == null)
                return res;
            return res + 1;
        }, false);
        return res !== undefined ? res : 0;
    }
    FunctionFactory.Instance.register("countInArray", countInArray);
    function avgInArray(params) {
        var count = countInArray(params);
        if (count == 0)
            return 0;
        return sumInArray(params) / count;
    }
    FunctionFactory.Instance.register("avgInArray", avgInArray);
    function iif(params) {
        if (!params && params.length !== 3)
            return "";
        return params[0] ? params[1] : params[2];
    }
    FunctionFactory.Instance.register("iif", iif);
    function getDate(params) {
        if (!params && params.length < 1)
            return null;
        if (!params[0])
            return null;
        return new Date(params[0]);
    }
    FunctionFactory.Instance.register("getDate", getDate);
    function age(params) {
        if (!params && params.length < 1)
            return null;
        if (!params[0])
            return null;
        var birthDate = new Date(params[0]);
        var today = new Date();
        var age = today.getFullYear() - birthDate.getFullYear();
        var m = today.getMonth() - birthDate.getMonth();
        if (m < 0 || (m === 0 && today.getDate() < birthDate.getDate())) {
            age -= age > 0 ? 1 : 0;
        }
        return age;
    }
    FunctionFactory.Instance.register("age", age);
    function isContainerReadyCore(container) {
        if (!container)
            return false;
        var questions = container.questions;
        for (var i = 0; i < questions.length; i++) {
            if (!questions[i].validate(false))
                return false;
        }
        return true;
    }
    function isContainerReady(params) {
        if (!params && params.length < 1)
            return false;
        if (!params[0] || !this.survey)
            return false;
        var name = params[0];
        var container = this.survey.getPageByName(name);
        if (!container)
            container = this.survey.getPanelByName(name);
        if (!container) {
            var question = this.survey.getQuestionByName(name);
            if (!question || !Array.isArray(question.panels))
                return false;
            if (params.length > 1) {
                if (params[1] < question.panels.length) {
                    container = question.panels[params[1]];
                }
            }
            else {
                for (var i = 0; i < question.panels.length; i++) {
                    if (!isContainerReadyCore(question.panels[i]))
                        return false;
                }
                return true;
            }
        }
        return isContainerReadyCore(container);
    }
    FunctionFactory.Instance.register("isContainerReady", isContainerReady);
    function isDisplayMode() {
        return this.survey && this.survey.isDisplayMode;
    }
    FunctionFactory.Instance.register("isDisplayMode", isDisplayMode);
    function currentDate() {
        return new Date();
    }
    FunctionFactory.Instance.register("currentDate", currentDate);
    function today(params) {
        var res = new Date();
        {
            res.setHours(0, 0, 0, 0);
        }
        if (Array.isArray(params) && params.length == 1) {
            res.setDate(res.getDate() + params[0]);
        }
        return res;
    }
    FunctionFactory.Instance.register("today", today);
    function getYear(params) {
        if (params.length !== 1 || !params[0])
            return undefined;
        return new Date(params[0]).getFullYear();
    }
    FunctionFactory.Instance.register("getYear", getYear);
    function currentYear() {
        return new Date().getFullYear();
    }
    FunctionFactory.Instance.register("currentYear", currentYear);
    function diffDays(params) {
        if (!Array.isArray(params) || params.length !== 2)
            return 0;
        if (!params[0] || !params[1])
            return 0;
        var date1 = new Date(params[0]);
        var date2 = new Date(params[1]);
        var diffTime = Math.abs(date2 - date1);
        return Math.ceil(diffTime / (1000 * 60 * 60 * 24));
    }
    FunctionFactory.Instance.register("diffDays", diffDays);
    function dateFromFirstParameterOrToday(params) {
        var date = today(undefined);
        if (params && params[0]) {
            date = new Date(params[0]);
        }
        return date;
    }
    function year(params) {
        var date = dateFromFirstParameterOrToday(params);
        return date.getFullYear();
    }
    FunctionFactory.Instance.register("year", year);
    function month(params) {
        var date = dateFromFirstParameterOrToday(params);
        return date.getMonth() + 1;
    }
    FunctionFactory.Instance.register("month", month);
    function day(params) {
        var date = dateFromFirstParameterOrToday(params);
        return date.getDate();
    }
    FunctionFactory.Instance.register("day", day);
    function weekday(params) {
        var date = dateFromFirstParameterOrToday(params);
        return date.getDay();
    }
    FunctionFactory.Instance.register("weekday", weekday);

    var Operand =  (function () {
        function Operand() {
        }
        Operand.prototype.toString = function (func) {
            return "";
        };
        Operand.prototype.hasFunction = function () {
            return false;
        };
        Operand.prototype.hasAsyncFunction = function () { return false; };
        Operand.prototype.addToAsyncList = function (list) { };
        Operand.prototype.isEqual = function (op) {
            return !!op && op.getType() === this.getType() && this.isContentEqual(op);
        };
        Operand.prototype.areOperatorsEquals = function (op1, op2) {
            return !op1 && !op2 || !!op1 && op1.isEqual(op2);
        };
        return Operand;
    }());
    var BinaryOperand =  (function (_super) {
        __extends(BinaryOperand, _super);
        function BinaryOperand(operatorName, left, right, isArithmeticOp) {
            if (left === void 0) { left = null; }
            if (right === void 0) { right = null; }
            if (isArithmeticOp === void 0) { isArithmeticOp = false; }
            var _this = _super.call(this) || this;
            _this.operatorName = operatorName;
            _this.left = left;
            _this.right = right;
            _this.isArithmeticValue = isArithmeticOp;
            if (isArithmeticOp) {
                _this.consumer = OperandMaker.binaryFunctions["arithmeticOp"](operatorName);
            }
            else {
                _this.consumer = OperandMaker.binaryFunctions[operatorName];
            }
            if (_this.consumer == null) {
                OperandMaker.throwInvalidOperatorError(operatorName);
            }
            return _this;
        }
        Object.defineProperty(BinaryOperand.prototype, "requireStrictCompare", {
            get: function () {
                return this.getIsOperandRequireStrict(this.left) ||
                    this.getIsOperandRequireStrict(this.right);
            },
            enumerable: false,
            configurable: true
        });
        BinaryOperand.prototype.getIsOperandRequireStrict = function (op) {
            return !!op && op.requireStrictCompare;
        };
        BinaryOperand.prototype.getType = function () {
            return "binary";
        };
        Object.defineProperty(BinaryOperand.prototype, "isArithmetic", {
            get: function () {
                return this.isArithmeticValue;
            },
            enumerable: false,
            configurable: true
        });
        Object.defineProperty(BinaryOperand.prototype, "isConjunction", {
            get: function () {
                return this.operatorName == "or" || this.operatorName == "and";
            },
            enumerable: false,
            configurable: true
        });
        Object.defineProperty(BinaryOperand.prototype, "conjunction", {
            get: function () {
                return this.isConjunction ? this.operatorName : "";
            },
            enumerable: false,
            configurable: true
        });
        Object.defineProperty(BinaryOperand.prototype, "operator", {
            get: function () {
                return this.operatorName;
            },
            enumerable: false,
            configurable: true
        });
        Object.defineProperty(BinaryOperand.prototype, "leftOperand", {
            get: function () {
                return this.left;
            },
            enumerable: false,
            configurable: true
        });
        Object.defineProperty(BinaryOperand.prototype, "rightOperand", {
            get: function () {
                return this.right;
            },
            enumerable: false,
            configurable: true
        });
        BinaryOperand.prototype.isContentEqual = function (op) {
            var bOp = op;
            return bOp.operator === this.operator &&
                this.areOperatorsEquals(this.left, bOp.left) &&
                this.areOperatorsEquals(this.right, bOp.right);
        };
        BinaryOperand.prototype.evaluateParam = function (x, processValue) {
            return x == null ? null : x.evaluate(processValue);
        };
        BinaryOperand.prototype.evaluate = function (processValue) {
            return this.consumer.call(this, this.evaluateParam(this.left, processValue), this.evaluateParam(this.right, processValue), this.requireStrictCompare);
        };
        BinaryOperand.prototype.toString = function (func) {
            if (func === void 0) { func = undefined; }
            if (!!func) {
                var res = func(this);
                if (!!res)
                    return res;
            }
            return ("(" +
                OperandMaker.safeToString(this.left, func) +
                " " +
                OperandMaker.operatorToString(this.operatorName) +
                " " +
                OperandMaker.safeToString(this.right, func) +
                ")");
        };
        BinaryOperand.prototype.setVariables = function (variables) {
            if (this.left != null)
                this.left.setVariables(variables);
            if (this.right != null)
                this.right.setVariables(variables);
        };
        BinaryOperand.prototype.hasFunction = function () {
            return ((!!this.left && this.left.hasFunction()) ||
                (!!this.right && this.right.hasFunction()));
        };
        BinaryOperand.prototype.hasAsyncFunction = function () {
            return ((!!this.left && this.left.hasAsyncFunction()) ||
                (!!this.right && this.right.hasAsyncFunction()));
        };
        BinaryOperand.prototype.addToAsyncList = function (list) {
            if (!!this.left)
                this.left.addToAsyncList(list);
            if (!!this.right)
                this.right.addToAsyncList(list);
        };
        return BinaryOperand;
    }(Operand));
    var UnaryOperand =  (function (_super) {
        __extends(UnaryOperand, _super);
        function UnaryOperand(expressionValue, operatorName) {
            var _this = _super.call(this) || this;
            _this.expressionValue = expressionValue;
            _this.operatorName = operatorName;
            _this.consumer = OperandMaker.unaryFunctions[operatorName];
            if (_this.consumer == null) {
                OperandMaker.throwInvalidOperatorError(operatorName);
            }
            return _this;
        }
        Object.defineProperty(UnaryOperand.prototype, "operator", {
            get: function () {
                return this.operatorName;
            },
            enumerable: false,
            configurable: true
        });
        Object.defineProperty(UnaryOperand.prototype, "expression", {
            get: function () {
                return this.expressionValue;
            },
            enumerable: false,
            configurable: true
        });
        UnaryOperand.prototype.getType = function () {
            return "unary";
        };
        UnaryOperand.prototype.toString = function (func) {
            if (func === void 0) { func = undefined; }
            if (!!func) {
                var res = func(this);
                if (!!res)
                    return res;
            }
            return (OperandMaker.operatorToString(this.operatorName) +
                " " +
                this.expression.toString(func));
        };
        UnaryOperand.prototype.isContentEqual = function (op) {
            var uOp = op;
            return uOp.operator == this.operator && this.areOperatorsEquals(this.expression, uOp.expression);
        };
        UnaryOperand.prototype.evaluate = function (processValue) {
            var value = this.expression.evaluate(processValue);
            return this.consumer.call(this, value);
        };
        UnaryOperand.prototype.setVariables = function (variables) {
            this.expression.setVariables(variables);
        };
        return UnaryOperand;
    }(Operand));
    var ArrayOperand =  (function (_super) {
        __extends(ArrayOperand, _super);
        function ArrayOperand(values) {
            var _this = _super.call(this) || this;
            _this.values = values;
            return _this;
        }
        ArrayOperand.prototype.getType = function () {
            return "array";
        };
        ArrayOperand.prototype.toString = function (func) {
            if (func === void 0) { func = undefined; }
            if (!!func) {
                var res = func(this);
                if (!!res)
                    return res;
            }
            return ("[" +
                this.values
                    .map(function (el) {
                    return el.toString(func);
                })
                    .join(", ") +
                "]");
        };
        ArrayOperand.prototype.evaluate = function (processValue) {
            return this.values.map(function (el) {
                return el.evaluate(processValue);
            });
        };
        ArrayOperand.prototype.setVariables = function (variables) {
            this.values.forEach(function (el) {
                el.setVariables(variables);
            });
        };
        ArrayOperand.prototype.hasFunction = function () {
            return this.values.some(function (operand) { return operand.hasFunction(); });
        };
        ArrayOperand.prototype.hasAsyncFunction = function () {
            return this.values.some(function (operand) { return operand.hasAsyncFunction(); });
        };
        ArrayOperand.prototype.addToAsyncList = function (list) {
            this.values.forEach(function (operand) { return operand.addToAsyncList(list); });
        };
        ArrayOperand.prototype.isContentEqual = function (op) {
            var aOp = op;
            if (aOp.values.length !== this.values.length)
                return false;
            for (var i = 0; i < this.values.length; i++) {
                if (!aOp.values[i].isEqual(this.values[i]))
                    return false;
            }
            return true;
        };
        return ArrayOperand;
    }(Operand));
    var Const =  (function (_super) {
        __extends(Const, _super);
        function Const(value) {
            var _this = _super.call(this) || this;
            _this.value = value;
            return _this;
        }
        Const.prototype.getType = function () {
            return "const";
        };
        Const.prototype.toString = function (func) {
            if (func === void 0) { func = undefined; }
            if (!!func) {
                var res = func(this);
                if (!!res)
                    return res;
            }
            return this.value.toString();
        };
        Object.defineProperty(Const.prototype, "correctValue", {
            get: function () {
                return this.getCorrectValue(this.value);
            },
            enumerable: false,
            configurable: true
        });
        Object.defineProperty(Const.prototype, "requireStrictCompare", {
            get: function () { return false; },
            enumerable: false,
            configurable: true
        });
        Const.prototype.evaluate = function () {
            return this.getCorrectValue(this.value);
        };
        Const.prototype.setVariables = function (variables) { };
        Const.prototype.getCorrectValue = function (value) {
            if (!value || typeof value != "string")
                return value;
            if (this.isBooleanValue(value))
                return value.toLowerCase() === "true";
            if (value.length > 1 &&
                this.isQuote(value[0]) &&
                this.isQuote(value[value.length - 1]))
                return value.substring(1, value.length - 1);
            if (OperandMaker.isNumeric(value)) {
                if (value.indexOf("0x") == 0)
                    return parseInt(value);
                if (value.length > 1 && value[0] == "0")
                    return value;
                return parseFloat(value);
            }
            return value;
        };
        Const.prototype.isContentEqual = function (op) {
            var cOp = op;
            return cOp.value == this.value;
        };
        Const.prototype.isQuote = function (ch) {
            return ch == "'" || ch == '"';
        };
        Const.prototype.isBooleanValue = function (value) {
            return (value &&
                (value.toLowerCase() === "true" || value.toLowerCase() === "false"));
        };
        return Const;
    }(Operand));
    var Variable =  (function (_super) {
        __extends(Variable, _super);
        function Variable(variableName) {
            var _this = _super.call(this, variableName) || this;
            _this.variableName = variableName;
            _this.valueInfo = {};
            _this.useValueAsItIs = false;
            if (!!_this.variableName &&
                _this.variableName.length > 1 &&
                _this.variableName[0] === Variable.DisableConversionChar) {
                _this.variableName = _this.variableName.substring(1);
                _this.useValueAsItIs = true;
            }
            return _this;
        }
        Object.defineProperty(Variable, "DisableConversionChar", {
            get: function () { return settings.expressionDisableConversionChar; },
            set: function (val) { settings.expressionDisableConversionChar = val; },
            enumerable: false,
            configurable: true
        });
        Object.defineProperty(Variable.prototype, "requireStrictCompare", {
            get: function () {
                return this.valueInfo.sctrictCompare === true;
            },
            enumerable: false,
            configurable: true
        });
        Variable.prototype.getType = function () {
            return "variable";
        };
        Variable.prototype.toString = function (func) {
            if (func === void 0) { func = undefined; }
            if (!!func) {
                var res = func(this);
                if (!!res)
                    return res;
            }
            var prefix = this.useValueAsItIs ? Variable.DisableConversionChar : "";
            return "{" + prefix + this.variableName + "}";
        };
        Object.defineProperty(Variable.prototype, "variable", {
            get: function () {
                return this.variableName;
            },
            enumerable: false,
            configurable: true
        });
        Variable.prototype.evaluate = function (processValue) {
            this.valueInfo.name = this.variableName;
            processValue.getValueInfo(this.valueInfo);
            return this.valueInfo.hasValue
                ? this.getCorrectValue(this.valueInfo.value)
                : null;
        };
        Variable.prototype.setVariables = function (variables) {
            variables.push(this.variableName);
        };
        Variable.prototype.getCorrectValue = function (value) {
            if (this.useValueAsItIs)
                return value;
            return _super.prototype.getCorrectValue.call(this, value);
        };
        Variable.prototype.isContentEqual = function (op) {
            var vOp = op;
            return vOp.variable == this.variable;
        };
        return Variable;
    }(Const));
    var FunctionOperand =  (function (_super) {
        __extends(FunctionOperand, _super);
        function FunctionOperand(originalValue, parameters) {
            var _this = _super.call(this) || this;
            _this.originalValue = originalValue;
            _this.parameters = parameters;
            _this.isReadyValue = false;
            if (Array.isArray(parameters) && parameters.length === 0) {
                _this.parameters = new ArrayOperand([]);
            }
            return _this;
        }
        FunctionOperand.prototype.getType = function () {
            return "function";
        };
        FunctionOperand.prototype.evaluateAsync = function (processValue) {
            var _this = this;
            this.isReadyValue = false;
            var asyncProcessValue = new ProcessValue();
            asyncProcessValue.values = Helpers.createCopy(processValue.values);
            asyncProcessValue.properties = Helpers.createCopy(processValue.properties);
            asyncProcessValue.properties.returnResult = function (result) {
                _this.asynResult = result;
                _this.isReadyValue = true;
                _this.onAsyncReady();
            };
            this.evaluateCore(asyncProcessValue);
        };
        FunctionOperand.prototype.evaluate = function (processValue) {
            if (this.isReady)
                return this.asynResult;
            return this.evaluateCore(processValue);
        };
        FunctionOperand.prototype.evaluateCore = function (processValue) {
            return FunctionFactory.Instance.run(this.originalValue, this.parameters.evaluate(processValue), processValue.properties);
        };
        FunctionOperand.prototype.toString = function (func) {
            if (func === void 0) { func = undefined; }
            if (!!func) {
                var res = func(this);
                if (!!res)
                    return res;
            }
            return this.originalValue + "(" + this.parameters.toString(func) + ")";
        };
        FunctionOperand.prototype.setVariables = function (variables) {
            this.parameters.setVariables(variables);
        };
        Object.defineProperty(FunctionOperand.prototype, "isReady", {
            get: function () {
                return this.isReadyValue;
            },
            enumerable: false,
            configurable: true
        });
        FunctionOperand.prototype.hasFunction = function () {
            return true;
        };
        FunctionOperand.prototype.hasAsyncFunction = function () {
            return FunctionFactory.Instance.isAsyncFunction(this.originalValue);
        };
        FunctionOperand.prototype.addToAsyncList = function (list) {
            if (this.hasAsyncFunction()) {
                list.push(this);
            }
        };
        FunctionOperand.prototype.isContentEqual = function (op) {
            var fOp = op;
            return fOp.originalValue == this.originalValue && this.areOperatorsEquals(fOp.parameters, this.parameters);
        };
        return FunctionOperand;
    }(Operand));
    var OperandMaker =  (function () {
        function OperandMaker() {
        }
        OperandMaker.throwInvalidOperatorError = function (op) {
            throw new Error("Invalid operator: '" + op + "'");
        };
        OperandMaker.safeToString = function (operand, func) {
            return operand == null ? "" : operand.toString(func);
        };
        OperandMaker.toOperandString = function (value) {
            if (!!value &&
                !OperandMaker.isNumeric(value) &&
                !OperandMaker.isBooleanValue(value))
                value = "'" + value + "'";
            return value;
        };
        OperandMaker.isSpaceString = function (str) {
            return !!str && !str.replace(" ", "");
        };
        OperandMaker.isNumeric = function (value) {
            if (!!value &&
                (value.indexOf("-") > -1 ||
                    value.indexOf("+") > 1 ||
                    value.indexOf("*") > -1 ||
                    value.indexOf("^") > -1 ||
                    value.indexOf("/") > -1 ||
                    value.indexOf("%") > -1))
                return false;
            if (OperandMaker.isSpaceString(value))
                return false;
            return Helpers.isNumber(value);
        };
        OperandMaker.isBooleanValue = function (value) {
            return (!!value &&
                (value.toLowerCase() === "true" || value.toLowerCase() === "false"));
        };
        OperandMaker.countDecimals = function (value) {
            if (Helpers.isNumber(value) && Math.floor(value) !== value) {
                var strs = value.toString().split(".");
                return strs.length > 1 && strs[1].length || 0;
            }
            return 0;
        };
        OperandMaker.plusMinus = function (a, b, res) {
            var digitsA = OperandMaker.countDecimals(a);
            var digitsB = OperandMaker.countDecimals(b);
            if (digitsA > 0 || digitsB > 0) {
                var digits = Math.max(digitsA, digitsB);
                res = parseFloat(res.toFixed(digits));
            }
            return res;
        };
        OperandMaker.isTwoValueEquals = function (x, y, ignoreOrder) {
            if (ignoreOrder === void 0) { ignoreOrder = true; }
            if (x === "undefined")
                x = undefined;
            if (y === "undefined")
                y = undefined;
            return Helpers.isTwoValueEquals(x, y, ignoreOrder);
        };
        OperandMaker.operatorToString = function (operatorName) {
            var opStr = OperandMaker.signs[operatorName];
            return opStr == null ? operatorName : opStr;
        };
        OperandMaker.convertValForDateCompare = function (val, second) {
            if (second instanceof Date && typeof val === "string") {
                var res = new Date(val);
                res.setHours(0, 0, 0);
                return res;
            }
            return val;
        };
        OperandMaker.unaryFunctions = {
            empty: function (value) {
                return Helpers.isValueEmpty(value);
            },
            notempty: function (value) {
                return !OperandMaker.unaryFunctions.empty(value);
            },
            negate: function (value) {
                return !value;
            },
        };
        OperandMaker.binaryFunctions = {
            arithmeticOp: function (operatorName) {
                var convertForArithmeticOp = function (val, second) {
                    if (!Helpers.isValueEmpty(val))
                        return val;
                    if (typeof second === "number")
                        return 0;
                    if (typeof val === "string")
                        return val;
                    if (typeof second === "string")
                        return "";
                    if (Array.isArray(second))
                        return [];
                    return 0;
                };
                return function (a, b) {
                    a = convertForArithmeticOp(a, b);
                    b = convertForArithmeticOp(b, a);
                    var consumer = OperandMaker.binaryFunctions[operatorName];
                    return consumer == null ? null : consumer.call(this, a, b);
                };
            },
            and: function (a, b) {
                return a && b;
            },
            or: function (a, b) {
                return a || b;
            },
            plus: function (a, b) {
                return Helpers.sumAnyValues(a, b);
            },
            minus: function (a, b) {
                return Helpers.correctAfterPlusMinis(a, b, a - b);
            },
            mul: function (a, b) {
                return Helpers.correctAfterMultiple(a, b, a * b);
            },
            div: function (a, b) {
                if (!b)
                    return null;
                return a / b;
            },
            mod: function (a, b) {
                if (!b)
                    return null;
                return a % b;
            },
            power: function (a, b) {
                return Math.pow(a, b);
            },
            greater: function (left, right) {
                if (left == null || right == null)
                    return false;
                left = OperandMaker.convertValForDateCompare(left, right);
                right = OperandMaker.convertValForDateCompare(right, left);
                return left > right;
            },
            less: function (left, right) {
                if (left == null || right == null)
                    return false;
                left = OperandMaker.convertValForDateCompare(left, right);
                right = OperandMaker.convertValForDateCompare(right, left);
                return left < right;
            },
            greaterorequal: function (left, right) {
                if (OperandMaker.binaryFunctions.equal(left, right))
                    return true;
                return OperandMaker.binaryFunctions.greater(left, right);
            },
            lessorequal: function (left, right) {
                if (OperandMaker.binaryFunctions.equal(left, right))
                    return true;
                return OperandMaker.binaryFunctions.less(left, right);
            },
            equal: function (left, right, strictCompare) {
                left = OperandMaker.convertValForDateCompare(left, right);
                right = OperandMaker.convertValForDateCompare(right, left);
                return OperandMaker.isTwoValueEquals(left, right, strictCompare !== true);
            },
            notequal: function (left, right) {
                return !OperandMaker.binaryFunctions.equal(left, right);
            },
            contains: function (left, right) {
                return OperandMaker.binaryFunctions.containsCore(left, right, true);
            },
            notcontains: function (left, right) {
                if (!left && !Helpers.isValueEmpty(right))
                    return true;
                return OperandMaker.binaryFunctions.containsCore(left, right, false);
            },
            anyof: function (left, right) {
                if (Helpers.isValueEmpty(left) && Helpers.isValueEmpty(right))
                    return true;
                if (Helpers.isValueEmpty(left) ||
                    (!Array.isArray(left) && left.length === 0))
                    return false;
                if (Helpers.isValueEmpty(right))
                    return true;
                if (!Array.isArray(left))
                    return OperandMaker.binaryFunctions.contains(right, left);
                if (!Array.isArray(right))
                    return OperandMaker.binaryFunctions.contains(left, right);
                for (var i = 0; i < right.length; i++) {
                    if (OperandMaker.binaryFunctions.contains(left, right[i]))
                        return true;
                }
                return false;
            },
            allof: function (left, right) {
                if (!left && !Helpers.isValueEmpty(right))
                    return false;
                if (!Array.isArray(right))
                    return OperandMaker.binaryFunctions.contains(left, right);
                for (var i = 0; i < right.length; i++) {
                    if (!OperandMaker.binaryFunctions.contains(left, right[i]))
                        return false;
                }
                return true;
            },
            containsCore: function (left, right, isContains) {
                if (!left && left !== 0 && left !== false)
                    return false;
                if (!left.length) {
                    left = left.toString();
                    if (typeof right === "string" || right instanceof String) {
                        left = left.toUpperCase();
                        right = right.toUpperCase();
                    }
                }
                if (typeof left === "string" || left instanceof String) {
                    if (!right)
                        return false;
                    right = right.toString();
                    var found = left.indexOf(right) > -1;
                    return isContains ? found : !found;
                }
                var rightArray = Array.isArray(right) ? right : [right];
                for (var rIndex = 0; rIndex < rightArray.length; rIndex++) {
                    var i = 0;
                    right = rightArray[rIndex];
                    for (; i < left.length; i++) {
                        if (OperandMaker.isTwoValueEquals(left[i], right))
                            break;
                    }
                    if (i == left.length)
                        return !isContains;
                }
                return isContains;
            },
        };
        OperandMaker.signs = {
            less: "<",
            lessorequal: "<=",
            greater: ">",
            greaterorequal: ">=",
            equal: "==",
            notequal: "!=",
            plus: "+",
            minus: "-",
            mul: "*",
            div: "/",
            and: "and",
            or: "or",
            power: "^",
            mod: "%",
            negate: "!",
        };
        return OperandMaker;
    }());

    var SyntaxError =  (function (_super) {
        __extends(SyntaxError, _super);
        function SyntaxError(message, expected, found, location) {
            var _this = _super.call(this) || this;
            _this.message = message;
            _this.expected = expected;
            _this.found = found;
            _this.location = location;
            _this.name = "SyntaxError";
            if (typeof Error.captureStackTrace === "function") {
                Error.captureStackTrace(_this, SyntaxError);
            }
            return _this;
        }
        SyntaxError.buildMessage = function (expected, found) {
            function hex(ch) {
                return ch.charCodeAt(0).toString(16).toUpperCase();
            }
            function literalEscape(s) {
                return s
                    .replace(/\\/g, "\\\\")
                    .replace(/"/g, "\\\"")
                    .replace(/\0/g, "\\0")
                    .replace(/\t/g, "\\t")
                    .replace(/\n/g, "\\n")
                    .replace(/\r/g, "\\r")
                    .replace(/[\x00-\x0F]/g, function (ch) { return "\\x0" + hex(ch); })
                    .replace(/[\x10-\x1F\x7F-\x9F]/g, function (ch) { return "\\x" + hex(ch); });
            }
            function classEscape(s) {
                return s
                    .replace(/\\/g, "\\\\")
                    .replace(/\]/g, "\\]")
                    .replace(/\^/g, "\\^")
                    .replace(/-/g, "\\-")
                    .replace(/\0/g, "\\0")
                    .replace(/\t/g, "\\t")
                    .replace(/\n/g, "\\n")
                    .replace(/\r/g, "\\r")
                    .replace(/[\x00-\x0F]/g, function (ch) { return "\\x0" + hex(ch); })
                    .replace(/[\x10-\x1F\x7F-\x9F]/g, function (ch) { return "\\x" + hex(ch); });
            }
            function describeExpectation(expectation) {
                switch (expectation.type) {
                    case "literal":
                        return "\"" + literalEscape(expectation.text) + "\"";
                    case "class":
                        var escapedParts = expectation.parts.map(function (part) {
                            return Array.isArray(part)
                                ? classEscape(part[0]) + "-" + classEscape(part[1])
                                : classEscape(part);
                        });
                        return "[" + (expectation.inverted ? "^" : "") + escapedParts + "]";
                    case "any":
                        return "any character";
                    case "end":
                        return "end of input";
                    case "other":
                        return expectation.description;
                }
            }
            function describeExpected(expected1) {
                var descriptions = expected1.map(describeExpectation);
                var i;
                var j;
                descriptions.sort();
                if (descriptions.length > 0) {
                    for (i = 1, j = 1; i < descriptions.length; i++) {
                        if (descriptions[i - 1] !== descriptions[i]) {
                            descriptions[j] = descriptions[i];
                            j++;
                        }
                    }
                    descriptions.length = j;
                }
                switch (descriptions.length) {
                    case 1:
                        return descriptions[0];
                    case 2:
                        return descriptions[0] + " or " + descriptions[1];
                    default:
                        return descriptions.slice(0, -1).join(", ")
                            + ", or "
                            + descriptions[descriptions.length - 1];
                }
            }
            function describeFound(found1) {
                return found1 ? "\"" + literalEscape(found1) + "\"" : "end of input";
            }
            return "Expected " + describeExpected(expected) + " but " + describeFound(found) + " found.";
        };
        return SyntaxError;
    }(Error));
    function peg$parse(input, options) {
        options = options !== undefined ? options : {};
        var peg$FAILED = {};
        var peg$startRuleFunctions = { Expression: peg$parseExpression };
        var peg$startRuleFunction = peg$parseExpression;
        var peg$c0 = function (head, tail) {
            return buildBinaryOperand(head, tail, true);
        };
        var peg$c1 = "||";
        var peg$c2 = peg$literalExpectation("||", false);
        var peg$c3 = "or";
        var peg$c4 = peg$literalExpectation("or", true);
        var peg$c5 = function () { return "or"; };
        var peg$c6 = "&&";
        var peg$c7 = peg$literalExpectation("&&", false);
        var peg$c8 = "and";
        var peg$c9 = peg$literalExpectation("and", true);
        var peg$c10 = function () { return "and"; };
        var peg$c11 = function (head, tail) {
            return buildBinaryOperand(head, tail);
        };
        var peg$c12 = "<=";
        var peg$c13 = peg$literalExpectation("<=", false);
        var peg$c14 = "lessorequal";
        var peg$c15 = peg$literalExpectation("lessorequal", true);
        var peg$c16 = function () { return "lessorequal"; };
        var peg$c17 = ">=";
        var peg$c18 = peg$literalExpectation(">=", false);
        var peg$c19 = "greaterorequal";
        var peg$c20 = peg$literalExpectation("greaterorequal", true);
        var peg$c21 = function () { return "greaterorequal"; };
        var peg$c22 = "==";
        var peg$c23 = peg$literalExpectation("==", false);
        var peg$c24 = "equal";
        var peg$c25 = peg$literalExpectation("equal", true);
        var peg$c26 = function () { return "equal"; };
        var peg$c27 = "=";
        var peg$c28 = peg$literalExpectation("=", false);
        var peg$c29 = "!=";
        var peg$c30 = peg$literalExpectation("!=", false);
        var peg$c31 = "notequal";
        var peg$c32 = peg$literalExpectation("notequal", true);
        var peg$c33 = function () { return "notequal"; };
        var peg$c34 = "<";
        var peg$c35 = peg$literalExpectation("<", false);
        var peg$c36 = "less";
        var peg$c37 = peg$literalExpectation("less", true);
        var peg$c38 = function () { return "less"; };
        var peg$c39 = ">";
        var peg$c40 = peg$literalExpectation(">", false);
        var peg$c41 = "greater";
        var peg$c42 = peg$literalExpectation("greater", true);
        var peg$c43 = function () { return "greater"; };
        var peg$c44 = "+";
        var peg$c45 = peg$literalExpectation("+", false);
        var peg$c46 = function () { return "plus"; };
        var peg$c47 = "-";
        var peg$c48 = peg$literalExpectation("-", false);
        var peg$c49 = function () { return "minus"; };
        var peg$c50 = "*";
        var peg$c51 = peg$literalExpectation("*", false);
        var peg$c52 = function () { return "mul"; };
        var peg$c53 = "/";
        var peg$c54 = peg$literalExpectation("/", false);
        var peg$c55 = function () { return "div"; };
        var peg$c56 = "%";
        var peg$c57 = peg$literalExpectation("%", false);
        var peg$c58 = function () { return "mod"; };
        var peg$c59 = "^";
        var peg$c60 = peg$literalExpectation("^", false);
        var peg$c61 = "power";
        var peg$c62 = peg$literalExpectation("power", true);
        var peg$c63 = function () { return "power"; };
        var peg$c64 = "*=";
        var peg$c65 = peg$literalExpectation("*=", false);
        var peg$c66 = "contains";
        var peg$c67 = peg$literalExpectation("contains", true);
        var peg$c68 = "contain";
        var peg$c69 = peg$literalExpectation("contain", true);
        var peg$c70 = function () { return "contains"; };
        var peg$c71 = "notcontains";
        var peg$c72 = peg$literalExpectation("notcontains", true);
        var peg$c73 = "notcontain";
        var peg$c74 = peg$literalExpectation("notcontain", true);
        var peg$c75 = function () { return "notcontains"; };
        var peg$c76 = "anyof";
        var peg$c77 = peg$literalExpectation("anyof", true);
        var peg$c78 = function () { return "anyof"; };
        var peg$c79 = "allof";
        var peg$c80 = peg$literalExpectation("allof", true);
        var peg$c81 = function () { return "allof"; };
        var peg$c82 = "(";
        var peg$c83 = peg$literalExpectation("(", false);
        var peg$c84 = ")";
        var peg$c85 = peg$literalExpectation(")", false);
        var peg$c86 = function (expr) { return expr; };
        var peg$c87 = function (name, params) { return new FunctionOperand(name, params); };
        var peg$c88 = "!";
        var peg$c89 = peg$literalExpectation("!", false);
        var peg$c90 = "negate";
        var peg$c91 = peg$literalExpectation("negate", true);
        var peg$c92 = function (expr) { return new UnaryOperand(expr, "negate"); };
        var peg$c93 = function (expr, op) { return new UnaryOperand(expr, op); };
        var peg$c94 = "empty";
        var peg$c95 = peg$literalExpectation("empty", true);
        var peg$c96 = function () { return "empty"; };
        var peg$c97 = "notempty";
        var peg$c98 = peg$literalExpectation("notempty", true);
        var peg$c99 = function () { return "notempty"; };
        var peg$c100 = "undefined";
        var peg$c101 = peg$literalExpectation("undefined", false);
        var peg$c102 = "null";
        var peg$c103 = peg$literalExpectation("null", false);
        var peg$c104 = function () { return null; };
        var peg$c105 = function (value) { return new Const(value); };
        var peg$c106 = "{";
        var peg$c107 = peg$literalExpectation("{", false);
        var peg$c108 = "}";
        var peg$c109 = peg$literalExpectation("}", false);
        var peg$c110 = function (value) { return new Variable(value); };
        var peg$c111 = function (value) { return value; };
        var peg$c112 = "''";
        var peg$c113 = peg$literalExpectation("''", false);
        var peg$c114 = function () { return ""; };
        var peg$c115 = "\"\"";
        var peg$c116 = peg$literalExpectation("\"\"", false);
        var peg$c117 = "'";
        var peg$c118 = peg$literalExpectation("'", false);
        var peg$c119 = function (value) { return "'" + value + "'"; };
        var peg$c120 = "\"";
        var peg$c121 = peg$literalExpectation("\"", false);
        var peg$c122 = "[";
        var peg$c123 = peg$literalExpectation("[", false);
        var peg$c124 = "]";
        var peg$c125 = peg$literalExpectation("]", false);
        var peg$c126 = function (sequence) { return sequence; };
        var peg$c127 = ",";
        var peg$c128 = peg$literalExpectation(",", false);
        var peg$c129 = function (expr, tail) {
            if (expr == null)
                return new ArrayOperand([]);
            var array = [expr];
            if (Array.isArray(tail)) {
                var flatten = flattenArray(tail);
                for (var i = 3; i < flatten.length; i += 4) {
                    array.push(flatten[i]);
                }
            }
            return new ArrayOperand(array);
        };
        var peg$c130 = "true";
        var peg$c131 = peg$literalExpectation("true", true);
        var peg$c132 = function () { return true; };
        var peg$c133 = "false";
        var peg$c134 = peg$literalExpectation("false", true);
        var peg$c135 = function () { return false; };
        var peg$c136 = "0x";
        var peg$c137 = peg$literalExpectation("0x", false);
        var peg$c138 = function () { return parseInt(text(), 16); };
        var peg$c139 = /^[\-]/;
        var peg$c140 = peg$classExpectation(["-"], false, false);
        var peg$c141 = function (sign, num) { return sign == null ? num : -num; };
        var peg$c142 = ".";
        var peg$c143 = peg$literalExpectation(".", false);
        var peg$c144 = function () { return parseFloat(text()); };
        var peg$c145 = function () { return parseInt(text(), 10); };
        var peg$c146 = "0";
        var peg$c147 = peg$literalExpectation("0", false);
        var peg$c148 = function () { return 0; };
        var peg$c149 = function (chars) { return chars.join(""); };
        var peg$c150 = "\\'";
        var peg$c151 = peg$literalExpectation("\\'", false);
        var peg$c152 = function () { return "'"; };
        var peg$c153 = "\\\"";
        var peg$c154 = peg$literalExpectation("\\\"", false);
        var peg$c155 = function () { return "\""; };
        var peg$c156 = /^[^"']/;
        var peg$c157 = peg$classExpectation(["\"", "'"], true, false);
        var peg$c158 = function () { return text(); };
        var peg$c159 = /^[^{}]/;
        var peg$c160 = peg$classExpectation(["{", "}"], true, false);
        var peg$c161 = /^[0-9]/;
        var peg$c162 = peg$classExpectation([["0", "9"]], false, false);
        var peg$c163 = /^[1-9]/;
        var peg$c164 = peg$classExpectation([["1", "9"]], false, false);
        var peg$c165 = /^[a-zA-Z_]/;
        var peg$c166 = peg$classExpectation([["a", "z"], ["A", "Z"], "_"], false, false);
        var peg$c167 = peg$otherExpectation("whitespace");
        var peg$c168 = /^[ \t\n\r]/;
        var peg$c169 = peg$classExpectation([" ", "\t", "\n", "\r"], false, false);
        var peg$currPos = 0;
        var peg$savedPos = 0;
        var peg$posDetailsCache = [{ line: 1, column: 1 }];
        var peg$maxFailPos = 0;
        var peg$maxFailExpected = [];
        var peg$silentFails = 0;
        var peg$resultsCache = {};
        var peg$result;
        if (options.startRule !== undefined) {
            if (!(options.startRule in peg$startRuleFunctions)) {
                throw new Error("Can't start parsing from rule \"" + options.startRule + "\".");
            }
            peg$startRuleFunction = peg$startRuleFunctions[options.startRule];
        }
        function text() {
            return input.substring(peg$savedPos, peg$currPos);
        }
        function peg$literalExpectation(text1, ignoreCase) {
            return { type: "literal", text: text1, ignoreCase: ignoreCase };
        }
        function peg$classExpectation(parts, inverted, ignoreCase) {
            return { type: "class", parts: parts, inverted: inverted, ignoreCase: ignoreCase };
        }
        function peg$endExpectation() {
            return { type: "end" };
        }
        function peg$otherExpectation(description) {
            return { type: "other", description: description };
        }
        function peg$computePosDetails(pos) {
            var details = peg$posDetailsCache[pos];
            var p;
            if (details) {
                return details;
            }
            else {
                p = pos - 1;
                while (!peg$posDetailsCache[p]) {
                    p--;
                }
                details = peg$posDetailsCache[p];
                details = {
                    line: details.line,
                    column: details.column
                };
                while (p < pos) {
                    if (input.charCodeAt(p) === 10) {
                        details.line++;
                        details.column = 1;
                    }
                    else {
                        details.column++;
                    }
                    p++;
                }
                peg$posDetailsCache[pos] = details;
                return details;
            }
        }
        function peg$computeLocation(startPos, endPos) {
            var startPosDetails = peg$computePosDetails(startPos);
            var endPosDetails = peg$computePosDetails(endPos);
            return {
                start: {
                    offset: startPos,
                    line: startPosDetails.line,
                    column: startPosDetails.column
                },
                end: {
                    offset: endPos,
                    line: endPosDetails.line,
                    column: endPosDetails.column
                }
            };
        }
        function peg$fail(expected1) {
            if (peg$currPos < peg$maxFailPos) {
                return;
            }
            if (peg$currPos > peg$maxFailPos) {
                peg$maxFailPos = peg$currPos;
                peg$maxFailExpected = [];
            }
            peg$maxFailExpected.push(expected1);
        }
        function peg$buildStructuredError(expected1, found, location1) {
            return new SyntaxError(SyntaxError.buildMessage(expected1, found), expected1, found, location1);
        }
        function peg$parseExpression() {
            var s0, s1, s2, s3, s4, s5, s6, s7, s8;
            var key = peg$currPos * 34 + 0;
            var cached = peg$resultsCache[key];
            if (cached) {
                peg$currPos = cached.nextPos;
                return cached.result;
            }
            s0 = peg$currPos;
            s1 = peg$parse_();
            if (s1 !== peg$FAILED) {
                s2 = peg$parseLogicOr();
                if (s2 !== peg$FAILED) {
                    s3 = [];
                    s4 = peg$currPos;
                    s5 = peg$parse_();
                    if (s5 !== peg$FAILED) {
                        s6 = peg$parseOrSign();
                        if (s6 !== peg$FAILED) {
                            s7 = peg$parse_();
                            if (s7 !== peg$FAILED) {
                                s8 = peg$parseLogicOr();
                                if (s8 !== peg$FAILED) {
                                    s5 = [s5, s6, s7, s8];
                                    s4 = s5;
                                }
                                else {
                                    peg$currPos = s4;
                                    s4 = peg$FAILED;
                                }
                            }
                            else {
                                peg$currPos = s4;
                                s4 = peg$FAILED;
                            }
                        }
                        else {
                            peg$currPos = s4;
                            s4 = peg$FAILED;
                        }
                    }
                    else {
                        peg$currPos = s4;
                        s4 = peg$FAILED;
                    }
                    while (s4 !== peg$FAILED) {
                        s3.push(s4);
                        s4 = peg$currPos;
                        s5 = peg$parse_();
                        if (s5 !== peg$FAILED) {
                            s6 = peg$parseOrSign();
                            if (s6 !== peg$FAILED) {
                                s7 = peg$parse_();
                                if (s7 !== peg$FAILED) {
                                    s8 = peg$parseLogicOr();
                                    if (s8 !== peg$FAILED) {
                                        s5 = [s5, s6, s7, s8];
                                        s4 = s5;
                                    }
                                    else {
                                        peg$currPos = s4;
                                        s4 = peg$FAILED;
                                    }
                                }
                                else {
                                    peg$currPos = s4;
                                    s4 = peg$FAILED;
                                }
                            }
                            else {
                                peg$currPos = s4;
                                s4 = peg$FAILED;
                            }
                        }
                        else {
                            peg$currPos = s4;
                            s4 = peg$FAILED;
                        }
                    }
                    if (s3 !== peg$FAILED) {
                        s4 = peg$parse_();
                        if (s4 !== peg$FAILED) {
                            peg$savedPos = s0;
                            s1 = peg$c0(s2, s3);
                            s0 = s1;
                        }
                        else {
                            peg$currPos = s0;
                            s0 = peg$FAILED;
                        }
                    }
                    else {
                        peg$currPos = s0;
                        s0 = peg$FAILED;
                    }
                }
                else {
                    peg$currPos = s0;
                    s0 = peg$FAILED;
                }
            }
            else {
                peg$currPos = s0;
                s0 = peg$FAILED;
            }
            peg$resultsCache[key] = { nextPos: peg$currPos, result: s0 };
            return s0;
        }
        function peg$parseOrSign() {
            var s0, s1;
            var key = peg$currPos * 34 + 1;
            var cached = peg$resultsCache[key];
            if (cached) {
                peg$currPos = cached.nextPos;
                return cached.result;
            }
            s0 = peg$currPos;
            if (input.substr(peg$currPos, 2) === peg$c1) {
                s1 = peg$c1;
                peg$currPos += 2;
            }
            else {
                s1 = peg$FAILED;
                if (peg$silentFails === 0) {
                    peg$fail(peg$c2);
                }
            }
            if (s1 === peg$FAILED) {
                if (input.substr(peg$currPos, 2).toLowerCase() === peg$c3) {
                    s1 = input.substr(peg$currPos, 2);
                    peg$currPos += 2;
                }
                else {
                    s1 = peg$FAILED;
                    if (peg$silentFails === 0) {
                        peg$fail(peg$c4);
                    }
                }
            }
            if (s1 !== peg$FAILED) {
                peg$savedPos = s0;
                s1 = peg$c5();
            }
            s0 = s1;
            peg$resultsCache[key] = { nextPos: peg$currPos, result: s0 };
            return s0;
        }
        function peg$parseLogicOr() {
            var s0, s1, s2, s3, s4, s5, s6, s7;
            var key = peg$currPos * 34 + 2;
            var cached = peg$resultsCache[key];
            if (cached) {
                peg$currPos = cached.nextPos;
                return cached.result;
            }
            s0 = peg$currPos;
            s1 = peg$parseLogicAnd();
            if (s1 !== peg$FAILED) {
                s2 = [];
                s3 = peg$currPos;
                s4 = peg$parse_();
                if (s4 !== peg$FAILED) {
                    s5 = peg$parseAndSign();
                    if (s5 !== peg$FAILED) {
                        s6 = peg$parse_();
                        if (s6 !== peg$FAILED) {
                            s7 = peg$parseLogicAnd();
                            if (s7 !== peg$FAILED) {
                                s4 = [s4, s5, s6, s7];
                                s3 = s4;
                            }
                            else {
                                peg$currPos = s3;
                                s3 = peg$FAILED;
                            }
                        }
                        else {
                            peg$currPos = s3;
                            s3 = peg$FAILED;
                        }
                    }
                    else {
                        peg$currPos = s3;
                        s3 = peg$FAILED;
                    }
                }
                else {
                    peg$currPos = s3;
                    s3 = peg$FAILED;
                }
                while (s3 !== peg$FAILED) {
                    s2.push(s3);
                    s3 = peg$currPos;
                    s4 = peg$parse_();
                    if (s4 !== peg$FAILED) {
                        s5 = peg$parseAndSign();
                        if (s5 !== peg$FAILED) {
                            s6 = peg$parse_();
                            if (s6 !== peg$FAILED) {
                                s7 = peg$parseLogicAnd();
                                if (s7 !== peg$FAILED) {
                                    s4 = [s4, s5, s6, s7];
                                    s3 = s4;
                                }
                                else {
                                    peg$currPos = s3;
                                    s3 = peg$FAILED;
                                }
                            }
                            else {
                                peg$currPos = s3;
                                s3 = peg$FAILED;
                            }
                        }
                        else {
                            peg$currPos = s3;
                            s3 = peg$FAILED;
                        }
                    }
                    else {
                        peg$currPos = s3;
                        s3 = peg$FAILED;
                    }
                }
                if (s2 !== peg$FAILED) {
                    peg$savedPos = s0;
                    s1 = peg$c0(s1, s2);
                    s0 = s1;
                }
                else {
                    peg$currPos = s0;
                    s0 = peg$FAILED;
                }
            }
            else {
                peg$currPos = s0;
                s0 = peg$FAILED;
            }
            peg$resultsCache[key] = { nextPos: peg$currPos, result: s0 };
            return s0;
        }
        function peg$parseAndSign() {
            var s0, s1;
            var key = peg$currPos * 34 + 3;
            var cached = peg$resultsCache[key];
            if (cached) {
                peg$currPos = cached.nextPos;
                return cached.result;
            }
            s0 = peg$currPos;
            if (input.substr(peg$currPos, 2) === peg$c6) {
                s1 = peg$c6;
                peg$currPos += 2;
            }
            else {
                s1 = peg$FAILED;
                if (peg$silentFails === 0) {
                    peg$fail(peg$c7);
                }
            }
            if (s1 === peg$FAILED) {
                if (input.substr(peg$currPos, 3).toLowerCase() === peg$c8) {
                    s1 = input.substr(peg$currPos, 3);
                    peg$currPos += 3;
                }
                else {
                    s1 = peg$FAILED;
                    if (peg$silentFails === 0) {
                        peg$fail(peg$c9);
                    }
                }
            }
            if (s1 !== peg$FAILED) {
                peg$savedPos = s0;
                s1 = peg$c10();
            }
            s0 = s1;
            peg$resultsCache[key] = { nextPos: peg$currPos, result: s0 };
            return s0;
        }
        function peg$parseLogicAnd() {
            var s0, s1, s2, s3, s4, s5, s6, s7;
            var key = peg$currPos * 34 + 4;
            var cached = peg$resultsCache[key];
            if (cached) {
                peg$currPos = cached.nextPos;
                return cached.result;
            }
            s0 = peg$currPos;
            s1 = peg$parseCompOps();
            if (s1 !== peg$FAILED) {
                s2 = [];
                s3 = peg$currPos;
                s4 = peg$parse_();
                if (s4 !== peg$FAILED) {
                    s5 = peg$parseComparableOperators();
                    if (s5 !== peg$FAILED) {
                        s6 = peg$parse_();
                        if (s6 !== peg$FAILED) {
                            s7 = peg$parseCompOps();
                            if (s7 !== peg$FAILED) {
                                s4 = [s4, s5, s6, s7];
                                s3 = s4;
                            }
                            else {
                                peg$currPos = s3;
                                s3 = peg$FAILED;
                            }
                        }
                        else {
                            peg$currPos = s3;
                            s3 = peg$FAILED;
                        }
                    }
                    else {
                        peg$currPos = s3;
                        s3 = peg$FAILED;
                    }
                }
                else {
                    peg$currPos = s3;
                    s3 = peg$FAILED;
                }
                while (s3 !== peg$FAILED) {
                    s2.push(s3);
                    s3 = peg$currPos;
                    s4 = peg$parse_();
                    if (s4 !== peg$FAILED) {
                        s5 = peg$parseComparableOperators();
                        if (s5 !== peg$FAILED) {
                            s6 = peg$parse_();
                            if (s6 !== peg$FAILED) {
                                s7 = peg$parseCompOps();
                                if (s7 !== peg$FAILED) {
                                    s4 = [s4, s5, s6, s7];
                                    s3 = s4;
                                }
                                else {
                                    peg$currPos = s3;
                                    s3 = peg$FAILED;
                                }
                            }
                            else {
                                peg$currPos = s3;
                                s3 = peg$FAILED;
                            }
                        }
                        else {
                            peg$currPos = s3;
                            s3 = peg$FAILED;
                        }
                    }
                    else {
                        peg$currPos = s3;
                        s3 = peg$FAILED;
                    }
                }
                if (s2 !== peg$FAILED) {
                    peg$savedPos = s0;
                    s1 = peg$c11(s1, s2);
                    s0 = s1;
                }
                else {
                    peg$currPos = s0;
                    s0 = peg$FAILED;
                }
            }
            else {
                peg$currPos = s0;
                s0 = peg$FAILED;
            }
            peg$resultsCache[key] = { nextPos: peg$currPos, result: s0 };
            return s0;
        }
        function peg$parseComparableOperators() {
            var s0, s1;
            var key = peg$currPos * 34 + 5;
            var cached = peg$resultsCache[key];
            if (cached) {
                peg$currPos = cached.nextPos;
                return cached.result;
            }
            s0 = peg$currPos;
            if (input.substr(peg$currPos, 2) === peg$c12) {
                s1 = peg$c12;
                peg$currPos += 2;
            }
            else {
                s1 = peg$FAILED;
                if (peg$silentFails === 0) {
                    peg$fail(peg$c13);
                }
            }
            if (s1 === peg$FAILED) {
                if (input.substr(peg$currPos, 11).toLowerCase() === peg$c14) {
                    s1 = input.substr(peg$currPos, 11);
                    peg$currPos += 11;
                }
                else {
                    s1 = peg$FAILED;
                    if (peg$silentFails === 0) {
                        peg$fail(peg$c15);
                    }
                }
            }
            if (s1 !== peg$FAILED) {
                peg$savedPos = s0;
                s1 = peg$c16();
            }
            s0 = s1;
            if (s0 === peg$FAILED) {
                s0 = peg$currPos;
                if (input.substr(peg$currPos, 2) === peg$c17) {
                    s1 = peg$c17;
                    peg$currPos += 2;
                }
                else {
                    s1 = peg$FAILED;
                    if (peg$silentFails === 0) {
                        peg$fail(peg$c18);
                    }
                }
                if (s1 === peg$FAILED) {
                    if (input.substr(peg$currPos, 14).toLowerCase() === peg$c19) {
                        s1 = input.substr(peg$currPos, 14);
                        peg$currPos += 14;
                    }
                    else {
                        s1 = peg$FAILED;
                        if (peg$silentFails === 0) {
                            peg$fail(peg$c20);
                        }
                    }
                }
                if (s1 !== peg$FAILED) {
                    peg$savedPos = s0;
                    s1 = peg$c21();
                }
                s0 = s1;
                if (s0 === peg$FAILED) {
                    s0 = peg$currPos;
                    if (input.substr(peg$currPos, 2) === peg$c22) {
                        s1 = peg$c22;
                        peg$currPos += 2;
                    }
                    else {
                        s1 = peg$FAILED;
                        if (peg$silentFails === 0) {
                            peg$fail(peg$c23);
                        }
                    }
                    if (s1 === peg$FAILED) {
                        if (input.substr(peg$currPos, 5).toLowerCase() === peg$c24) {
                            s1 = input.substr(peg$currPos, 5);
                            peg$currPos += 5;
                        }
                        else {
                            s1 = peg$FAILED;
                            if (peg$silentFails === 0) {
                                peg$fail(peg$c25);
                            }
                        }
                    }
                    if (s1 !== peg$FAILED) {
                        peg$savedPos = s0;
                        s1 = peg$c26();
                    }
                    s0 = s1;
                    if (s0 === peg$FAILED) {
                        s0 = peg$currPos;
                        if (input.charCodeAt(peg$currPos) === 61) {
                            s1 = peg$c27;
                            peg$currPos++;
                        }
                        else {
                            s1 = peg$FAILED;
                            if (peg$silentFails === 0) {
                                peg$fail(peg$c28);
                            }
                        }
                        if (s1 === peg$FAILED) {
                            if (input.substr(peg$currPos, 5).toLowerCase() === peg$c24) {
                                s1 = input.substr(peg$currPos, 5);
                                peg$currPos += 5;
                            }
                            else {
                                s1 = peg$FAILED;
                                if (peg$silentFails === 0) {
                                    peg$fail(peg$c25);
                                }
                            }
                        }
                        if (s1 !== peg$FAILED) {
                            peg$savedPos = s0;
                            s1 = peg$c26();
                        }
                        s0 = s1;
                        if (s0 === peg$FAILED) {
                            s0 = peg$currPos;
                            if (input.substr(peg$currPos, 2) === peg$c29) {
                                s1 = peg$c29;
                                peg$currPos += 2;
                            }
                            else {
                                s1 = peg$FAILED;
                                if (peg$silentFails === 0) {
                                    peg$fail(peg$c30);
                                }
                            }
                            if (s1 === peg$FAILED) {
                                if (input.substr(peg$currPos, 8).toLowerCase() === peg$c31) {
                                    s1 = input.substr(peg$currPos, 8);
                                    peg$currPos += 8;
                                }
                                else {
                                    s1 = peg$FAILED;
                                    if (peg$silentFails === 0) {
                                        peg$fail(peg$c32);
                                    }
                                }
                            }
                            if (s1 !== peg$FAILED) {
                                peg$savedPos = s0;
                                s1 = peg$c33();
                            }
                            s0 = s1;
                            if (s0 === peg$FAILED) {
                                s0 = peg$currPos;
                                if (input.charCodeAt(peg$currPos) === 60) {
                                    s1 = peg$c34;
                                    peg$currPos++;
                                }
                                else {
                                    s1 = peg$FAILED;
                                    if (peg$silentFails === 0) {
                                        peg$fail(peg$c35);
                                    }
                                }
                                if (s1 === peg$FAILED) {
                                    if (input.substr(peg$currPos, 4).toLowerCase() === peg$c36) {
                                        s1 = input.substr(peg$currPos, 4);
                                        peg$currPos += 4;
                                    }
                                    else {
                                        s1 = peg$FAILED;
                                        if (peg$silentFails === 0) {
                                            peg$fail(peg$c37);
                                        }
                                    }
                                }
                                if (s1 !== peg$FAILED) {
                                    peg$savedPos = s0;
                                    s1 = peg$c38();
                                }
                                s0 = s1;
                                if (s0 === peg$FAILED) {
                                    s0 = peg$currPos;
                                    if (input.charCodeAt(peg$currPos) === 62) {
                                        s1 = peg$c39;
                                        peg$currPos++;
                                    }
                                    else {
                                        s1 = peg$FAILED;
                                        if (peg$silentFails === 0) {
                                            peg$fail(peg$c40);
                                        }
                                    }
                                    if (s1 === peg$FAILED) {
                                        if (input.substr(peg$currPos, 7).toLowerCase() === peg$c41) {
                                            s1 = input.substr(peg$currPos, 7);
                                            peg$currPos += 7;
                                        }
                                        else {
                                            s1 = peg$FAILED;
                                            if (peg$silentFails === 0) {
                                                peg$fail(peg$c42);
                                            }
                                        }
                                    }
                                    if (s1 !== peg$FAILED) {
                                        peg$savedPos = s0;
                                        s1 = peg$c43();
                                    }
                                    s0 = s1;
                                }
                            }
                        }
                    }
                }
            }
            peg$resultsCache[key] = { nextPos: peg$currPos, result: s0 };
            return s0;
        }
        function peg$parseCompOps() {
            var s0, s1, s2, s3, s4, s5, s6, s7;
            var key = peg$currPos * 34 + 6;
            var cached = peg$resultsCache[key];
            if (cached) {
                peg$currPos = cached.nextPos;
                return cached.result;
            }
            s0 = peg$currPos;
            s1 = peg$parsePlusMinusOps();
            if (s1 !== peg$FAILED) {
                s2 = [];
                s3 = peg$currPos;
                s4 = peg$parse_();
                if (s4 !== peg$FAILED) {
                    s5 = peg$parsePlusMinusSigns();
                    if (s5 !== peg$FAILED) {
                        s6 = peg$parse_();
                        if (s6 !== peg$FAILED) {
                            s7 = peg$parsePlusMinusOps();
                            if (s7 !== peg$FAILED) {
                                s4 = [s4, s5, s6, s7];
                                s3 = s4;
                            }
                            else {
                                peg$currPos = s3;
                                s3 = peg$FAILED;
                            }
                        }
                        else {
                            peg$currPos = s3;
                            s3 = peg$FAILED;
                        }
                    }
                    else {
                        peg$currPos = s3;
                        s3 = peg$FAILED;
                    }
                }
                else {
                    peg$currPos = s3;
                    s3 = peg$FAILED;
                }
                while (s3 !== peg$FAILED) {
                    s2.push(s3);
                    s3 = peg$currPos;
                    s4 = peg$parse_();
                    if (s4 !== peg$FAILED) {
                        s5 = peg$parsePlusMinusSigns();
                        if (s5 !== peg$FAILED) {
                            s6 = peg$parse_();
                            if (s6 !== peg$FAILED) {
                                s7 = peg$parsePlusMinusOps();
                                if (s7 !== peg$FAILED) {
                                    s4 = [s4, s5, s6, s7];
                                    s3 = s4;
                                }
                                else {
                                    peg$currPos = s3;
                                    s3 = peg$FAILED;
                                }
                            }
                            else {
                                peg$currPos = s3;
                                s3 = peg$FAILED;
                            }
                        }
                        else {
                            peg$currPos = s3;
                            s3 = peg$FAILED;
                        }
                    }
                    else {
                        peg$currPos = s3;
                        s3 = peg$FAILED;
                    }
                }
                if (s2 !== peg$FAILED) {
                    peg$savedPos = s0;
                    s1 = peg$c0(s1, s2);
                    s0 = s1;
                }
                else {
                    peg$currPos = s0;
                    s0 = peg$FAILED;
                }
            }
            else {
                peg$currPos = s0;
                s0 = peg$FAILED;
            }
            peg$resultsCache[key] = { nextPos: peg$currPos, result: s0 };
            return s0;
        }
        function peg$parsePlusMinusSigns() {
            var s0, s1;
            var key = peg$currPos * 34 + 7;
            var cached = peg$resultsCache[key];
            if (cached) {
                peg$currPos = cached.nextPos;
                return cached.result;
            }
            s0 = peg$currPos;
            if (input.charCodeAt(peg$currPos) === 43) {
                s1 = peg$c44;
                peg$currPos++;
            }
            else {
                s1 = peg$FAILED;
                if (peg$silentFails === 0) {
                    peg$fail(peg$c45);
                }
            }
            if (s1 !== peg$FAILED) {
                peg$savedPos = s0;
                s1 = peg$c46();
            }
            s0 = s1;
            if (s0 === peg$FAILED) {
                s0 = peg$currPos;
                if (input.charCodeAt(peg$currPos) === 45) {
                    s1 = peg$c47;
                    peg$currPos++;
                }
                else {
                    s1 = peg$FAILED;
                    if (peg$silentFails === 0) {
                        peg$fail(peg$c48);
                    }
                }
                if (s1 !== peg$FAILED) {
                    peg$savedPos = s0;
                    s1 = peg$c49();
                }
                s0 = s1;
            }
            peg$resultsCache[key] = { nextPos: peg$currPos, result: s0 };
            return s0;
        }
        function peg$parsePlusMinusOps() {
            var s0, s1, s2, s3, s4, s5, s6, s7;
            var key = peg$currPos * 34 + 8;
            var cached = peg$resultsCache[key];
            if (cached) {
                peg$currPos = cached.nextPos;
                return cached.result;
            }
            s0 = peg$currPos;
            s1 = peg$parseMulDivOps();
            if (s1 !== peg$FAILED) {
                s2 = [];
                s3 = peg$currPos;
                s4 = peg$parse_();
                if (s4 !== peg$FAILED) {
                    s5 = peg$parseMulDivSigns();
                    if (s5 !== peg$FAILED) {
                        s6 = peg$parse_();
                        if (s6 !== peg$FAILED) {
                            s7 = peg$parseMulDivOps();
                            if (s7 !== peg$FAILED) {
                                s4 = [s4, s5, s6, s7];
                                s3 = s4;
                            }
                            else {
                                peg$currPos = s3;
                                s3 = peg$FAILED;
                            }
                        }
                        else {
                            peg$currPos = s3;
                            s3 = peg$FAILED;
                        }
                    }
                    else {
                        peg$currPos = s3;
                        s3 = peg$FAILED;
                    }
                }
                else {
                    peg$currPos = s3;
                    s3 = peg$FAILED;
                }
                while (s3 !== peg$FAILED) {
                    s2.push(s3);
                    s3 = peg$currPos;
                    s4 = peg$parse_();
                    if (s4 !== peg$FAILED) {
                        s5 = peg$parseMulDivSigns();
                        if (s5 !== peg$FAILED) {
                            s6 = peg$parse_();
                            if (s6 !== peg$FAILED) {
                                s7 = peg$parseMulDivOps();
                                if (s7 !== peg$FAILED) {
                                    s4 = [s4, s5, s6, s7];
                                    s3 = s4;
                                }
                                else {
                                    peg$currPos = s3;
                                    s3 = peg$FAILED;
                                }
                            }
                            else {
                                peg$currPos = s3;
                                s3 = peg$FAILED;
                            }
                        }
                        else {
                            peg$currPos = s3;
                            s3 = peg$FAILED;
                        }
                    }
                    else {
                        peg$currPos = s3;
                        s3 = peg$FAILED;
                    }
                }
                if (s2 !== peg$FAILED) {
                    peg$savedPos = s0;
                    s1 = peg$c0(s1, s2);
                    s0 = s1;
                }
                else {
                    peg$currPos = s0;
                    s0 = peg$FAILED;
                }
            }
            else {
                peg$currPos = s0;
                s0 = peg$FAILED;
            }
            peg$resultsCache[key] = { nextPos: peg$currPos, result: s0 };
            return s0;
        }
        function peg$parseMulDivSigns() {
            var s0, s1;
            var key = peg$currPos * 34 + 9;
            var cached = peg$resultsCache[key];
            if (cached) {
                peg$currPos = cached.nextPos;
                return cached.result;
            }
            s0 = peg$currPos;
            if (input.charCodeAt(peg$currPos) === 42) {
                s1 = peg$c50;
                peg$currPos++;
            }
            else {
                s1 = peg$FAILED;
                if (peg$silentFails === 0) {
                    peg$fail(peg$c51);
                }
            }
            if (s1 !== peg$FAILED) {
                peg$savedPos = s0;
                s1 = peg$c52();
            }
            s0 = s1;
            if (s0 === peg$FAILED) {
                s0 = peg$currPos;
                if (input.charCodeAt(peg$currPos) === 47) {
                    s1 = peg$c53;
                    peg$currPos++;
                }
                else {
                    s1 = peg$FAILED;
                    if (peg$silentFails === 0) {
                        peg$fail(peg$c54);
                    }
                }
                if (s1 !== peg$FAILED) {
                    peg$savedPos = s0;
                    s1 = peg$c55();
                }
                s0 = s1;
                if (s0 === peg$FAILED) {
                    s0 = peg$currPos;
                    if (input.charCodeAt(peg$currPos) === 37) {
                        s1 = peg$c56;
                        peg$currPos++;
                    }
                    else {
                        s1 = peg$FAILED;
                        if (peg$silentFails === 0) {
                            peg$fail(peg$c57);
                        }
                    }
                    if (s1 !== peg$FAILED) {
                        peg$savedPos = s0;
                        s1 = peg$c58();
                    }
                    s0 = s1;
                }
            }
            peg$resultsCache[key] = { nextPos: peg$currPos, result: s0 };
            return s0;
        }
        function peg$parseMulDivOps() {
            var s0, s1, s2, s3, s4, s5, s6, s7;
            var key = peg$currPos * 34 + 10;
            var cached = peg$resultsCache[key];
            if (cached) {
                peg$currPos = cached.nextPos;
                return cached.result;
            }
            s0 = peg$currPos;
            s1 = peg$parseBinaryFuncOp();
            if (s1 !== peg$FAILED) {
                s2 = [];
                s3 = peg$currPos;
                s4 = peg$parse_();
                if (s4 !== peg$FAILED) {
                    s5 = peg$parsePowerSigns();
                    if (s5 !== peg$FAILED) {
                        s6 = peg$parse_();
                        if (s6 !== peg$FAILED) {
                            s7 = peg$parseBinaryFuncOp();
                            if (s7 !== peg$FAILED) {
                                s4 = [s4, s5, s6, s7];
                                s3 = s4;
                            }
                            else {
                                peg$currPos = s3;
                                s3 = peg$FAILED;
                            }
                        }
                        else {
                            peg$currPos = s3;
                            s3 = peg$FAILED;
                        }
                    }
                    else {
                        peg$currPos = s3;
                        s3 = peg$FAILED;
                    }
                }
                else {
                    peg$currPos = s3;
                    s3 = peg$FAILED;
                }
                while (s3 !== peg$FAILED) {
                    s2.push(s3);
                    s3 = peg$currPos;
                    s4 = peg$parse_();
                    if (s4 !== peg$FAILED) {
                        s5 = peg$parsePowerSigns();
                        if (s5 !== peg$FAILED) {
                            s6 = peg$parse_();
                            if (s6 !== peg$FAILED) {
                                s7 = peg$parseBinaryFuncOp();
                                if (s7 !== peg$FAILED) {
                                    s4 = [s4, s5, s6, s7];
                                    s3 = s4;
                                }
                                else {
                                    peg$currPos = s3;
                                    s3 = peg$FAILED;
                                }
                            }
                            else {
                                peg$currPos = s3;
                                s3 = peg$FAILED;
                            }
                        }
                        else {
                            peg$currPos = s3;
                            s3 = peg$FAILED;
                        }
                    }
                    else {
                        peg$currPos = s3;
                        s3 = peg$FAILED;
                    }
                }
                if (s2 !== peg$FAILED) {
                    peg$savedPos = s0;
                    s1 = peg$c0(s1, s2);
                    s0 = s1;
                }
                else {
                    peg$currPos = s0;
                    s0 = peg$FAILED;
                }
            }
            else {
                peg$currPos = s0;
                s0 = peg$FAILED;
            }
            peg$resultsCache[key] = { nextPos: peg$currPos, result: s0 };
            return s0;
        }
        function peg$parsePowerSigns() {
            var s0, s1;
            var key = peg$currPos * 34 + 11;
            var cached = peg$resultsCache[key];
            if (cached) {
                peg$currPos = cached.nextPos;
                return cached.result;
            }
            s0 = peg$currPos;
            if (input.charCodeAt(peg$currPos) === 94) {
                s1 = peg$c59;
                peg$currPos++;
            }
            else {
                s1 = peg$FAILED;
                if (peg$silentFails === 0) {
                    peg$fail(peg$c60);
                }
            }
            if (s1 === peg$FAILED) {
                if (input.substr(peg$currPos, 5).toLowerCase() === peg$c61) {
                    s1 = input.substr(peg$currPos, 5);
                    peg$currPos += 5;
                }
                else {
                    s1 = peg$FAILED;
                    if (peg$silentFails === 0) {
                        peg$fail(peg$c62);
                    }
                }
            }
            if (s1 !== peg$FAILED) {
                peg$savedPos = s0;
                s1 = peg$c63();
            }
            s0 = s1;
            peg$resultsCache[key] = { nextPos: peg$currPos, result: s0 };
            return s0;
        }
        function peg$parseBinaryFuncOp() {
            var s0, s1, s2, s3, s4, s5, s6, s7;
            var key = peg$currPos * 34 + 12;
            var cached = peg$resultsCache[key];
            if (cached) {
                peg$currPos = cached.nextPos;
                return cached.result;
            }
            s0 = peg$currPos;
            s1 = peg$parseFactor();
            if (s1 !== peg$FAILED) {
                s2 = [];
                s3 = peg$currPos;
                s4 = peg$parse_();
                if (s4 !== peg$FAILED) {
                    s5 = peg$parseBinFunctions();
                    if (s5 !== peg$FAILED) {
                        s6 = peg$parse_();
                        if (s6 !== peg$FAILED) {
                            s7 = peg$parseFactor();
                            if (s7 === peg$FAILED) {
                                s7 = null;
                            }
                            if (s7 !== peg$FAILED) {
                                s4 = [s4, s5, s6, s7];
                                s3 = s4;
                            }
                            else {
                                peg$currPos = s3;
                                s3 = peg$FAILED;
                            }
                        }
                        else {
                            peg$currPos = s3;
                            s3 = peg$FAILED;
                        }
                    }
                    else {
                        peg$currPos = s3;
                        s3 = peg$FAILED;
                    }
                }
                else {
                    peg$currPos = s3;
                    s3 = peg$FAILED;
                }
                while (s3 !== peg$FAILED) {
                    s2.push(s3);
                    s3 = peg$currPos;
                    s4 = peg$parse_();
                    if (s4 !== peg$FAILED) {
                        s5 = peg$parseBinFunctions();
                        if (s5 !== peg$FAILED) {
                            s6 = peg$parse_();
                            if (s6 !== peg$FAILED) {
                                s7 = peg$parseFactor();
                                if (s7 === peg$FAILED) {
                                    s7 = null;
                                }
                                if (s7 !== peg$FAILED) {
                                    s4 = [s4, s5, s6, s7];
                                    s3 = s4;
                                }
                                else {
                                    peg$currPos = s3;
                                    s3 = peg$FAILED;
                                }
                            }
                            else {
                                peg$currPos = s3;
                                s3 = peg$FAILED;
                            }
                        }
                        else {
                            peg$currPos = s3;
                            s3 = peg$FAILED;
                        }
                    }
                    else {
                        peg$currPos = s3;
                        s3 = peg$FAILED;
                    }
                }
                if (s2 !== peg$FAILED) {
                    peg$savedPos = s0;
                    s1 = peg$c11(s1, s2);
                    s0 = s1;
                }
                else {
                    peg$currPos = s0;
                    s0 = peg$FAILED;
                }
            }
            else {
                peg$currPos = s0;
                s0 = peg$FAILED;
            }
            peg$resultsCache[key] = { nextPos: peg$currPos, result: s0 };
            return s0;
        }
        function peg$parseBinFunctions() {
            var s0, s1;
            var key = peg$currPos * 34 + 13;
            var cached = peg$resultsCache[key];
            if (cached) {
                peg$currPos = cached.nextPos;
                return cached.result;
            }
            s0 = peg$currPos;
            if (input.substr(peg$currPos, 2) === peg$c64) {
                s1 = peg$c64;
                peg$currPos += 2;
            }
            else {
                s1 = peg$FAILED;
                if (peg$silentFails === 0) {
                    peg$fail(peg$c65);
                }
            }
            if (s1 === peg$FAILED) {
                if (input.substr(peg$currPos, 8).toLowerCase() === peg$c66) {
                    s1 = input.substr(peg$currPos, 8);
                    peg$currPos += 8;
                }
                else {
                    s1 = peg$FAILED;
                    if (peg$silentFails === 0) {
                        peg$fail(peg$c67);
                    }
                }
                if (s1 === peg$FAILED) {
                    if (input.substr(peg$currPos, 7).toLowerCase() === peg$c68) {
                        s1 = input.substr(peg$currPos, 7);
                        peg$currPos += 7;
                    }
                    else {
                        s1 = peg$FAILED;
                        if (peg$silentFails === 0) {
                            peg$fail(peg$c69);
                        }
                    }
                }
            }
            if (s1 !== peg$FAILED) {
                peg$savedPos = s0;
                s1 = peg$c70();
            }
            s0 = s1;
            if (s0 === peg$FAILED) {
                s0 = peg$currPos;
                if (input.substr(peg$currPos, 11).toLowerCase() === peg$c71) {
                    s1 = input.substr(peg$currPos, 11);
                    peg$currPos += 11;
                }
                else {
                    s1 = peg$FAILED;
                    if (peg$silentFails === 0) {
                        peg$fail(peg$c72);
                    }
                }
                if (s1 === peg$FAILED) {
                    if (input.substr(peg$currPos, 10).toLowerCase() === peg$c73) {
                        s1 = input.substr(peg$currPos, 10);
                        peg$currPos += 10;
                    }
                    else {
                        s1 = peg$FAILED;
                        if (peg$silentFails === 0) {
                            peg$fail(peg$c74);
                        }
                    }
                }
                if (s1 !== peg$FAILED) {
                    peg$savedPos = s0;
                    s1 = peg$c75();
                }
                s0 = s1;
                if (s0 === peg$FAILED) {
                    s0 = peg$currPos;
                    if (input.substr(peg$currPos, 5).toLowerCase() === peg$c76) {
                        s1 = input.substr(peg$currPos, 5);
                        peg$currPos += 5;
                    }
                    else {
                        s1 = peg$FAILED;
                        if (peg$silentFails === 0) {
                            peg$fail(peg$c77);
                        }
                    }
                    if (s1 !== peg$FAILED) {
                        peg$savedPos = s0;
                        s1 = peg$c78();
                    }
                    s0 = s1;
                    if (s0 === peg$FAILED) {
                        s0 = peg$currPos;
                        if (input.substr(peg$currPos, 5).toLowerCase() === peg$c79) {
                            s1 = input.substr(peg$currPos, 5);
                            peg$currPos += 5;
                        }
                        else {
                            s1 = peg$FAILED;
                            if (peg$silentFails === 0) {
                                peg$fail(peg$c80);
                            }
                        }
                        if (s1 !== peg$FAILED) {
                            peg$savedPos = s0;
                            s1 = peg$c81();
                        }
                        s0 = s1;
                    }
                }
            }
            peg$resultsCache[key] = { nextPos: peg$currPos, result: s0 };
            return s0;
        }
        function peg$parseFactor() {
            var s0, s1, s2, s3, s4, s5;
            var key = peg$currPos * 34 + 14;
            var cached = peg$resultsCache[key];
            if (cached) {
                peg$currPos = cached.nextPos;
                return cached.result;
            }
            s0 = peg$currPos;
            if (input.charCodeAt(peg$currPos) === 40) {
                s1 = peg$c82;
                peg$currPos++;
            }
            else {
                s1 = peg$FAILED;
                if (peg$silentFails === 0) {
                    peg$fail(peg$c83);
                }
            }
            if (s1 !== peg$FAILED) {
                s2 = peg$parse_();
                if (s2 !== peg$FAILED) {
                    s3 = peg$parseExpression();
                    if (s3 !== peg$FAILED) {
                        s4 = peg$parse_();
                        if (s4 !== peg$FAILED) {
                            if (input.charCodeAt(peg$currPos) === 41) {
                                s5 = peg$c84;
                                peg$currPos++;
                            }
                            else {
                                s5 = peg$FAILED;
                                if (peg$silentFails === 0) {
                                    peg$fail(peg$c85);
                                }
                            }
                            if (s5 === peg$FAILED) {
                                s5 = null;
                            }
                            if (s5 !== peg$FAILED) {
                                peg$savedPos = s0;
                                s1 = peg$c86(s3);
                                s0 = s1;
                            }
                            else {
                                peg$currPos = s0;
                                s0 = peg$FAILED;
                            }
                        }
                        else {
                            peg$currPos = s0;
                            s0 = peg$FAILED;
                        }
                    }
                    else {
                        peg$currPos = s0;
                        s0 = peg$FAILED;
                    }
                }
                else {
                    peg$currPos = s0;
                    s0 = peg$FAILED;
                }
            }
            else {
                peg$currPos = s0;
                s0 = peg$FAILED;
            }
            if (s0 === peg$FAILED) {
                s0 = peg$parseFunctionOp();
                if (s0 === peg$FAILED) {
                    s0 = peg$parseUnaryFunctionOp();
                    if (s0 === peg$FAILED) {
                        s0 = peg$parseAtom();
                        if (s0 === peg$FAILED) {
                            s0 = peg$parseArrayOp();
                        }
                    }
                }
            }
            peg$resultsCache[key] = { nextPos: peg$currPos, result: s0 };
            return s0;
        }
        function peg$parseFunctionOp() {
            var s0, s1, s2, s3, s4;
            var key = peg$currPos * 34 + 15;
            var cached = peg$resultsCache[key];
            if (cached) {
                peg$currPos = cached.nextPos;
                return cached.result;
            }
            s0 = peg$currPos;
            s1 = peg$parseLettersAndDigits();
            if (s1 !== peg$FAILED) {
                if (input.charCodeAt(peg$currPos) === 40) {
                    s2 = peg$c82;
                    peg$currPos++;
                }
                else {
                    s2 = peg$FAILED;
                    if (peg$silentFails === 0) {
                        peg$fail(peg$c83);
                    }
                }
                if (s2 !== peg$FAILED) {
                    s3 = peg$parseSequence();
                    if (s3 !== peg$FAILED) {
                        if (input.charCodeAt(peg$currPos) === 41) {
                            s4 = peg$c84;
                            peg$currPos++;
                        }
                        else {
                            s4 = peg$FAILED;
                            if (peg$silentFails === 0) {
                                peg$fail(peg$c85);
                            }
                        }
                        if (s4 === peg$FAILED) {
                            s4 = null;
                        }
                        if (s4 !== peg$FAILED) {
                            peg$savedPos = s0;
                            s1 = peg$c87(s1, s3);
                            s0 = s1;
                        }
                        else {
                            peg$currPos = s0;
                            s0 = peg$FAILED;
                        }
                    }
                    else {
                        peg$currPos = s0;
                        s0 = peg$FAILED;
                    }
                }
                else {
                    peg$currPos = s0;
                    s0 = peg$FAILED;
                }
            }
            else {
                peg$currPos = s0;
                s0 = peg$FAILED;
            }
            peg$resultsCache[key] = { nextPos: peg$currPos, result: s0 };
            return s0;
        }
        function peg$parseUnaryFunctionOp() {
            var s0, s1, s2, s3;
            var key = peg$currPos * 34 + 16;
            var cached = peg$resultsCache[key];
            if (cached) {
                peg$currPos = cached.nextPos;
                return cached.result;
            }
            s0 = peg$currPos;
            if (input.charCodeAt(peg$currPos) === 33) {
                s1 = peg$c88;
                peg$currPos++;
            }
            else {
                s1 = peg$FAILED;
                if (peg$silentFails === 0) {
                    peg$fail(peg$c89);
                }
            }
            if (s1 === peg$FAILED) {
                if (input.substr(peg$currPos, 6).toLowerCase() === peg$c90) {
                    s1 = input.substr(peg$currPos, 6);
                    peg$currPos += 6;
                }
                else {
                    s1 = peg$FAILED;
                    if (peg$silentFails === 0) {
                        peg$fail(peg$c91);
                    }
                }
            }
            if (s1 !== peg$FAILED) {
                s2 = peg$parse_();
                if (s2 !== peg$FAILED) {
                    s3 = peg$parseExpression();
                    if (s3 !== peg$FAILED) {
                        peg$savedPos = s0;
                        s1 = peg$c92(s3);
                        s0 = s1;
                    }
                    else {
                        peg$currPos = s0;
                        s0 = peg$FAILED;
                    }
                }
                else {
                    peg$currPos = s0;
                    s0 = peg$FAILED;
                }
            }
            else {
                peg$currPos = s0;
                s0 = peg$FAILED;
            }
            if (s0 === peg$FAILED) {
                s0 = peg$currPos;
                s1 = peg$parseAtom();
                if (s1 !== peg$FAILED) {
                    s2 = peg$parse_();
                    if (s2 !== peg$FAILED) {
                        s3 = peg$parseUnFunctions();
                        if (s3 !== peg$FAILED) {
                            peg$savedPos = s0;
                            s1 = peg$c93(s1, s3);
                            s0 = s1;
                        }
                        else {
                            peg$currPos = s0;
                            s0 = peg$FAILED;
                        }
                    }
                    else {
                        peg$currPos = s0;
                        s0 = peg$FAILED;
                    }
                }
                else {
                    peg$currPos = s0;
                    s0 = peg$FAILED;
                }
            }
            peg$resultsCache[key] = { nextPos: peg$currPos, result: s0 };
            return s0;
        }
        function peg$parseUnFunctions() {
            var s0, s1;
            var key = peg$currPos * 34 + 17;
            var cached = peg$resultsCache[key];
            if (cached) {
                peg$currPos = cached.nextPos;
                return cached.result;
            }
            s0 = peg$currPos;
            if (input.substr(peg$currPos, 5).toLowerCase() === peg$c94) {
                s1 = input.substr(peg$currPos, 5);
                peg$currPos += 5;
            }
            else {
                s1 = peg$FAILED;
                if (peg$silentFails === 0) {
                    peg$fail(peg$c95);
                }
            }
            if (s1 !== peg$FAILED) {
                peg$savedPos = s0;
                s1 = peg$c96();
            }
            s0 = s1;
            if (s0 === peg$FAILED) {
                s0 = peg$currPos;
                if (input.substr(peg$currPos, 8).toLowerCase() === peg$c97) {
                    s1 = input.substr(peg$currPos, 8);
                    peg$currPos += 8;
                }
                else {
                    s1 = peg$FAILED;
                    if (peg$silentFails === 0) {
                        peg$fail(peg$c98);
                    }
                }
                if (s1 !== peg$FAILED) {
                    peg$savedPos = s0;
                    s1 = peg$c99();
                }
                s0 = s1;
            }
            peg$resultsCache[key] = { nextPos: peg$currPos, result: s0 };
            return s0;
        }
        function peg$parseAtom() {
            var s0, s1, s2, s3, s4;
            var key = peg$currPos * 34 + 18;
            var cached = peg$resultsCache[key];
            if (cached) {
                peg$currPos = cached.nextPos;
                return cached.result;
            }
            s0 = peg$currPos;
            s1 = peg$parse_();
            if (s1 !== peg$FAILED) {
                if (input.substr(peg$currPos, 9) === peg$c100) {
                    s2 = peg$c100;
                    peg$currPos += 9;
                }
                else {
                    s2 = peg$FAILED;
                    if (peg$silentFails === 0) {
                        peg$fail(peg$c101);
                    }
                }
                if (s2 === peg$FAILED) {
                    if (input.substr(peg$currPos, 4) === peg$c102) {
                        s2 = peg$c102;
                        peg$currPos += 4;
                    }
                    else {
                        s2 = peg$FAILED;
                        if (peg$silentFails === 0) {
                            peg$fail(peg$c103);
                        }
                    }
                }
                if (s2 !== peg$FAILED) {
                    peg$savedPos = s0;
                    s1 = peg$c104();
                    s0 = s1;
                }
                else {
                    peg$currPos = s0;
                    s0 = peg$FAILED;
                }
            }
            else {
                peg$currPos = s0;
                s0 = peg$FAILED;
            }
            if (s0 === peg$FAILED) {
                s0 = peg$currPos;
                s1 = peg$parse_();
                if (s1 !== peg$FAILED) {
                    s2 = peg$parseConstValue();
                    if (s2 !== peg$FAILED) {
                        peg$savedPos = s0;
                        s1 = peg$c105(s2);
                        s0 = s1;
                    }
                    else {
                        peg$currPos = s0;
                        s0 = peg$FAILED;
                    }
                }
                else {
                    peg$currPos = s0;
                    s0 = peg$FAILED;
                }
                if (s0 === peg$FAILED) {
                    s0 = peg$currPos;
                    s1 = peg$parse_();
                    if (s1 !== peg$FAILED) {
                        if (input.charCodeAt(peg$currPos) === 123) {
                            s2 = peg$c106;
                            peg$currPos++;
                        }
                        else {
                            s2 = peg$FAILED;
                            if (peg$silentFails === 0) {
                                peg$fail(peg$c107);
                            }
                        }
                        if (s2 !== peg$FAILED) {
                            s3 = peg$parseValueInput();
                            if (s3 !== peg$FAILED) {
                                if (input.charCodeAt(peg$currPos) === 125) {
                                    s4 = peg$c108;
                                    peg$currPos++;
                                }
                                else {
                                    s4 = peg$FAILED;
                                    if (peg$silentFails === 0) {
                                        peg$fail(peg$c109);
                                    }
                                }
                                if (s4 !== peg$FAILED) {
                                    peg$savedPos = s0;
                                    s1 = peg$c110(s3);
                                    s0 = s1;
                                }
                                else {
                                    peg$currPos = s0;
                                    s0 = peg$FAILED;
                                }
                            }
                            else {
                                peg$currPos = s0;
                                s0 = peg$FAILED;
                            }
                        }
                        else {
                            peg$currPos = s0;
                            s0 = peg$FAILED;
                        }
                    }
                    else {
                        peg$currPos = s0;
                        s0 = peg$FAILED;
                    }
                }
            }
            peg$resultsCache[key] = { nextPos: peg$currPos, result: s0 };
            return s0;
        }
        function peg$parseConstValue() {
            var s0, s1, s2, s3;
            var key = peg$currPos * 34 + 19;
            var cached = peg$resultsCache[key];
            if (cached) {
                peg$currPos = cached.nextPos;
                return cached.result;
            }
            s0 = peg$currPos;
            s1 = peg$parseLogicValue();
            if (s1 !== peg$FAILED) {
                peg$savedPos = s0;
                s1 = peg$c111(s1);
            }
            s0 = s1;
            if (s0 === peg$FAILED) {
                s0 = peg$currPos;
                s1 = peg$parseArithmeticValue();
                if (s1 !== peg$FAILED) {
                    peg$savedPos = s0;
                    s1 = peg$c111(s1);
                }
                s0 = s1;
                if (s0 === peg$FAILED) {
                    s0 = peg$currPos;
                    s1 = peg$parseLettersAndDigits();
                    if (s1 !== peg$FAILED) {
                        peg$savedPos = s0;
                        s1 = peg$c111(s1);
                    }
                    s0 = s1;
                    if (s0 === peg$FAILED) {
                        s0 = peg$currPos;
                        if (input.substr(peg$currPos, 2) === peg$c112) {
                            s1 = peg$c112;
                            peg$currPos += 2;
                        }
                        else {
                            s1 = peg$FAILED;
                            if (peg$silentFails === 0) {
                                peg$fail(peg$c113);
                            }
                        }
                        if (s1 !== peg$FAILED) {
                            peg$savedPos = s0;
                            s1 = peg$c114();
                        }
                        s0 = s1;
                        if (s0 === peg$FAILED) {
                            s0 = peg$currPos;
                            if (input.substr(peg$currPos, 2) === peg$c115) {
                                s1 = peg$c115;
                                peg$currPos += 2;
                            }
                            else {
                                s1 = peg$FAILED;
                                if (peg$silentFails === 0) {
                                    peg$fail(peg$c116);
                                }
                            }
                            if (s1 !== peg$FAILED) {
                                peg$savedPos = s0;
                                s1 = peg$c114();
                            }
                            s0 = s1;
                            if (s0 === peg$FAILED) {
                                s0 = peg$currPos;
                                if (input.charCodeAt(peg$currPos) === 39) {
                                    s1 = peg$c117;
                                    peg$currPos++;
                                }
                                else {
                                    s1 = peg$FAILED;
                                    if (peg$silentFails === 0) {
                                        peg$fail(peg$c118);
                                    }
                                }
                                if (s1 !== peg$FAILED) {
                                    s2 = peg$parseAnyInput();
                                    if (s2 !== peg$FAILED) {
                                        if (input.charCodeAt(peg$currPos) === 39) {
                                            s3 = peg$c117;
                                            peg$currPos++;
                                        }
                                        else {
                                            s3 = peg$FAILED;
                                            if (peg$silentFails === 0) {
                                                peg$fail(peg$c118);
                                            }
                                        }
                                        if (s3 !== peg$FAILED) {
                                            peg$savedPos = s0;
                                            s1 = peg$c119(s2);
                                            s0 = s1;
                                        }
                                        else {
                                            peg$currPos = s0;
                                            s0 = peg$FAILED;
                                        }
                                    }
                                    else {
                                        peg$currPos = s0;
                                        s0 = peg$FAILED;
                                    }
                                }
                                else {
                                    peg$currPos = s0;
                                    s0 = peg$FAILED;
                                }
                                if (s0 === peg$FAILED) {
                                    s0 = peg$currPos;
                                    if (input.charCodeAt(peg$currPos) === 34) {
                                        s1 = peg$c120;
                                        peg$currPos++;
                                    }
                                    else {
                                        s1 = peg$FAILED;
                                        if (peg$silentFails === 0) {
                                            peg$fail(peg$c121);
                                        }
                                    }
                                    if (s1 !== peg$FAILED) {
                                        s2 = peg$parseAnyInput();
                                        if (s2 !== peg$FAILED) {
                                            if (input.charCodeAt(peg$currPos) === 34) {
                                                s3 = peg$c120;
                                                peg$currPos++;
                                            }
                                            else {
                                                s3 = peg$FAILED;
                                                if (peg$silentFails === 0) {
                                                    peg$fail(peg$c121);
                                                }
                                            }
                                            if (s3 !== peg$FAILED) {
                                                peg$savedPos = s0;
                                                s1 = peg$c119(s2);
                                                s0 = s1;
                                            }
                                            else {
                                                peg$currPos = s0;
                                                s0 = peg$FAILED;
                                            }
                                        }
                                        else {
                                            peg$currPos = s0;
                                            s0 = peg$FAILED;
                                        }
                                    }
                                    else {
                                        peg$currPos = s0;
                                        s0 = peg$FAILED;
                                    }
                                }
                            }
                        }
                    }
                }
            }
            peg$resultsCache[key] = { nextPos: peg$currPos, result: s0 };
            return s0;
        }
        function peg$parseArrayOp() {
            var s0, s1, s2, s3;
            var key = peg$currPos * 34 + 20;
            var cached = peg$resultsCache[key];
            if (cached) {
                peg$currPos = cached.nextPos;
                return cached.result;
            }
            s0 = peg$currPos;
            if (input.charCodeAt(peg$currPos) === 91) {
                s1 = peg$c122;
                peg$currPos++;
            }
            else {
                s1 = peg$FAILED;
                if (peg$silentFails === 0) {
                    peg$fail(peg$c123);
                }
            }
            if (s1 !== peg$FAILED) {
                s2 = peg$parseSequence();
                if (s2 !== peg$FAILED) {
                    if (input.charCodeAt(peg$currPos) === 93) {
                        s3 = peg$c124;
                        peg$currPos++;
                    }
                    else {
                        s3 = peg$FAILED;
                        if (peg$silentFails === 0) {
                            peg$fail(peg$c125);
                        }
                    }
                    if (s3 !== peg$FAILED) {
                        peg$savedPos = s0;
                        s1 = peg$c126(s2);
                        s0 = s1;
                    }
                    else {
                        peg$currPos = s0;
                        s0 = peg$FAILED;
                    }
                }
                else {
                    peg$currPos = s0;
                    s0 = peg$FAILED;
                }
            }
            else {
                peg$currPos = s0;
                s0 = peg$FAILED;
            }
            peg$resultsCache[key] = { nextPos: peg$currPos, result: s0 };
            return s0;
        }
        function peg$parseSequence() {
            var s0, s1, s2, s3, s4, s5, s6, s7;
            var key = peg$currPos * 34 + 21;
            var cached = peg$resultsCache[key];
            if (cached) {
                peg$currPos = cached.nextPos;
                return cached.result;
            }
            s0 = peg$currPos;
            s1 = peg$parseExpression();
            if (s1 === peg$FAILED) {
                s1 = null;
            }
            if (s1 !== peg$FAILED) {
                s2 = [];
                s3 = peg$currPos;
                s4 = peg$parse_();
                if (s4 !== peg$FAILED) {
                    if (input.charCodeAt(peg$currPos) === 44) {
                        s5 = peg$c127;
                        peg$currPos++;
                    }
                    else {
                        s5 = peg$FAILED;
                        if (peg$silentFails === 0) {
                            peg$fail(peg$c128);
                        }
                    }
                    if (s5 !== peg$FAILED) {
                        s6 = peg$parse_();
                        if (s6 !== peg$FAILED) {
                            s7 = peg$parseExpression();
                            if (s7 !== peg$FAILED) {
                                s4 = [s4, s5, s6, s7];
                                s3 = s4;
                            }
                            else {
                                peg$currPos = s3;
                                s3 = peg$FAILED;
                            }
                        }
                        else {
                            peg$currPos = s3;
                            s3 = peg$FAILED;
                        }
                    }
                    else {
                        peg$currPos = s3;
                        s3 = peg$FAILED;
                    }
                }
                else {
                    peg$currPos = s3;
                    s3 = peg$FAILED;
                }
                while (s3 !== peg$FAILED) {
                    s2.push(s3);
                    s3 = peg$currPos;
                    s4 = peg$parse_();
                    if (s4 !== peg$FAILED) {
                        if (input.charCodeAt(peg$currPos) === 44) {
                            s5 = peg$c127;
                            peg$currPos++;
                        }
                        else {
                            s5 = peg$FAILED;
                            if (peg$silentFails === 0) {
                                peg$fail(peg$c128);
                            }
                        }
                        if (s5 !== peg$FAILED) {
                            s6 = peg$parse_();
                            if (s6 !== peg$FAILED) {
                                s7 = peg$parseExpression();
                                if (s7 !== peg$FAILED) {
                                    s4 = [s4, s5, s6, s7];
                                    s3 = s4;
                                }
                                else {
                                    peg$currPos = s3;
                                    s3 = peg$FAILED;
                                }
                            }
                            else {
                                peg$currPos = s3;
                                s3 = peg$FAILED;
                            }
                        }
                        else {
                            peg$currPos = s3;
                            s3 = peg$FAILED;
                        }
                    }
                    else {
                        peg$currPos = s3;
                        s3 = peg$FAILED;
                    }
                }
                if (s2 !== peg$FAILED) {
                    peg$savedPos = s0;
                    s1 = peg$c129(s1, s2);
                    s0 = s1;
                }
                else {
                    peg$currPos = s0;
                    s0 = peg$FAILED;
                }
            }
            else {
                peg$currPos = s0;
                s0 = peg$FAILED;
            }
            peg$resultsCache[key] = { nextPos: peg$currPos, result: s0 };
            return s0;
        }
        function peg$parseLogicValue() {
            var s0, s1;
            var key = peg$currPos * 34 + 22;
            var cached = peg$resultsCache[key];
            if (cached) {
                peg$currPos = cached.nextPos;
                return cached.result;
            }
            s0 = peg$currPos;
            if (input.substr(peg$currPos, 4).toLowerCase() === peg$c130) {
                s1 = input.substr(peg$currPos, 4);
                peg$currPos += 4;
            }
            else {
                s1 = peg$FAILED;
                if (peg$silentFails === 0) {
                    peg$fail(peg$c131);
                }
            }
            if (s1 !== peg$FAILED) {
                peg$savedPos = s0;
                s1 = peg$c132();
            }
            s0 = s1;
            if (s0 === peg$FAILED) {
                s0 = peg$currPos;
                if (input.substr(peg$currPos, 5).toLowerCase() === peg$c133) {
                    s1 = input.substr(peg$currPos, 5);
                    peg$currPos += 5;
                }
                else {
                    s1 = peg$FAILED;
                    if (peg$silentFails === 0) {
                        peg$fail(peg$c134);
                    }
                }
                if (s1 !== peg$FAILED) {
                    peg$savedPos = s0;
                    s1 = peg$c135();
                }
                s0 = s1;
            }
            peg$resultsCache[key] = { nextPos: peg$currPos, result: s0 };
            return s0;
        }
        function peg$parseArithmeticValue() {
            var s0, s1, s2;
            var key = peg$currPos * 34 + 23;
            var cached = peg$resultsCache[key];
            if (cached) {
                peg$currPos = cached.nextPos;
                return cached.result;
            }
            s0 = peg$currPos;
            if (input.substr(peg$currPos, 2) === peg$c136) {
                s1 = peg$c136;
                peg$currPos += 2;
            }
            else {
                s1 = peg$FAILED;
                if (peg$silentFails === 0) {
                    peg$fail(peg$c137);
                }
            }
            if (s1 !== peg$FAILED) {
                s2 = peg$parseDigits();
                if (s2 !== peg$FAILED) {
                    peg$savedPos = s0;
                    s1 = peg$c138();
                    s0 = s1;
                }
                else {
                    peg$currPos = s0;
                    s0 = peg$FAILED;
                }
            }
            else {
                peg$currPos = s0;
                s0 = peg$FAILED;
            }
            if (s0 === peg$FAILED) {
                s0 = peg$currPos;
                if (peg$c139.test(input.charAt(peg$currPos))) {
                    s1 = input.charAt(peg$currPos);
                    peg$currPos++;
                }
                else {
                    s1 = peg$FAILED;
                    if (peg$silentFails === 0) {
                        peg$fail(peg$c140);
                    }
                }
                if (s1 === peg$FAILED) {
                    s1 = null;
                }
                if (s1 !== peg$FAILED) {
                    s2 = peg$parseNumber();
                    if (s2 !== peg$FAILED) {
                        peg$savedPos = s0;
                        s1 = peg$c141(s1, s2);
                        s0 = s1;
                    }
                    else {
                        peg$currPos = s0;
                        s0 = peg$FAILED;
                    }
                }
                else {
                    peg$currPos = s0;
                    s0 = peg$FAILED;
                }
            }
            peg$resultsCache[key] = { nextPos: peg$currPos, result: s0 };
            return s0;
        }
        function peg$parseNumber() {
            var s0, s1, s2, s3;
            var key = peg$currPos * 34 + 24;
            var cached = peg$resultsCache[key];
            if (cached) {
                peg$currPos = cached.nextPos;
                return cached.result;
            }
            s0 = peg$currPos;
            s1 = peg$parseDigits();
            if (s1 !== peg$FAILED) {
                if (input.charCodeAt(peg$currPos) === 46) {
                    s2 = peg$c142;
                    peg$currPos++;
                }
                else {
                    s2 = peg$FAILED;
                    if (peg$silentFails === 0) {
                        peg$fail(peg$c143);
                    }
                }
                if (s2 !== peg$FAILED) {
                    s3 = peg$parseDigits();
                    if (s3 !== peg$FAILED) {
                        peg$savedPos = s0;
                        s1 = peg$c144();
                        s0 = s1;
                    }
                    else {
                        peg$currPos = s0;
                        s0 = peg$FAILED;
                    }
                }
                else {
                    peg$currPos = s0;
                    s0 = peg$FAILED;
                }
            }
            else {
                peg$currPos = s0;
                s0 = peg$FAILED;
            }
            if (s0 === peg$FAILED) {
                s0 = peg$currPos;
                s1 = peg$parseNonZeroDigits();
                if (s1 !== peg$FAILED) {
                    s2 = peg$parseDigits();
                    if (s2 === peg$FAILED) {
                        s2 = null;
                    }
                    if (s2 !== peg$FAILED) {
                        peg$savedPos = s0;
                        s1 = peg$c145();
                        s0 = s1;
                    }
                    else {
                        peg$currPos = s0;
                        s0 = peg$FAILED;
                    }
                }
                else {
                    peg$currPos = s0;
                    s0 = peg$FAILED;
                }
                if (s0 === peg$FAILED) {
                    s0 = peg$currPos;
                    if (input.charCodeAt(peg$currPos) === 48) {
                        s1 = peg$c146;
                        peg$currPos++;
                    }
                    else {
                        s1 = peg$FAILED;
                        if (peg$silentFails === 0) {
                            peg$fail(peg$c147);
                        }
                    }
                    if (s1 !== peg$FAILED) {
                        peg$savedPos = s0;
                        s1 = peg$c148();
                    }
                    s0 = s1;
                }
            }
            peg$resultsCache[key] = { nextPos: peg$currPos, result: s0 };
            return s0;
        }
        function peg$parseValueInput() {
            var s0, s1, s2;
            var key = peg$currPos * 34 + 25;
            var cached = peg$resultsCache[key];
            if (cached) {
                peg$currPos = cached.nextPos;
                return cached.result;
            }
            s0 = peg$currPos;
            s1 = [];
            s2 = peg$parseValueCharacters();
            if (s2 !== peg$FAILED) {
                while (s2 !== peg$FAILED) {
                    s1.push(s2);
                    s2 = peg$parseValueCharacters();
                }
            }
            else {
                s1 = peg$FAILED;
            }
            if (s1 !== peg$FAILED) {
                peg$savedPos = s0;
                s1 = peg$c149(s1);
            }
            s0 = s1;
            peg$resultsCache[key] = { nextPos: peg$currPos, result: s0 };
            return s0;
        }
        function peg$parseAnyInput() {
            var s0, s1, s2;
            var key = peg$currPos * 34 + 26;
            var cached = peg$resultsCache[key];
            if (cached) {
                peg$currPos = cached.nextPos;
                return cached.result;
            }
            s0 = peg$currPos;
            s1 = [];
            s2 = peg$parseAnyCharacters();
            if (s2 !== peg$FAILED) {
                while (s2 !== peg$FAILED) {
                    s1.push(s2);
                    s2 = peg$parseAnyCharacters();
                }
            }
            else {
                s1 = peg$FAILED;
            }
            if (s1 !== peg$FAILED) {
                peg$savedPos = s0;
                s1 = peg$c149(s1);
            }
            s0 = s1;
            peg$resultsCache[key] = { nextPos: peg$currPos, result: s0 };
            return s0;
        }
        function peg$parseAnyCharacters() {
            var s0, s1;
            var key = peg$currPos * 34 + 27;
            var cached = peg$resultsCache[key];
            if (cached) {
                peg$currPos = cached.nextPos;
                return cached.result;
            }
            s0 = peg$currPos;
            if (input.substr(peg$currPos, 2) === peg$c150) {
                s1 = peg$c150;
                peg$currPos += 2;
            }
            else {
                s1 = peg$FAILED;
                if (peg$silentFails === 0) {
                    peg$fail(peg$c151);
                }
            }
            if (s1 !== peg$FAILED) {
                peg$savedPos = s0;
                s1 = peg$c152();
            }
            s0 = s1;
            if (s0 === peg$FAILED) {
                s0 = peg$currPos;
                if (input.substr(peg$currPos, 2) === peg$c153) {
                    s1 = peg$c153;
                    peg$currPos += 2;
                }
                else {
                    s1 = peg$FAILED;
                    if (peg$silentFails === 0) {
                        peg$fail(peg$c154);
                    }
                }
                if (s1 !== peg$FAILED) {
                    peg$savedPos = s0;
                    s1 = peg$c155();
                }
                s0 = s1;
                if (s0 === peg$FAILED) {
                    s0 = peg$currPos;
                    if (peg$c156.test(input.charAt(peg$currPos))) {
                        s1 = input.charAt(peg$currPos);
                        peg$currPos++;
                    }
                    else {
                        s1 = peg$FAILED;
                        if (peg$silentFails === 0) {
                            peg$fail(peg$c157);
                        }
                    }
                    if (s1 !== peg$FAILED) {
                        peg$savedPos = s0;
                        s1 = peg$c158();
                    }
                    s0 = s1;
                }
            }
            peg$resultsCache[key] = { nextPos: peg$currPos, result: s0 };
            return s0;
        }
        function peg$parseValueCharacters() {
            var s0, s1;
            var key = peg$currPos * 34 + 28;
            var cached = peg$resultsCache[key];
            if (cached) {
                peg$currPos = cached.nextPos;
                return cached.result;
            }
            s0 = peg$currPos;
            if (peg$c159.test(input.charAt(peg$currPos))) {
                s1 = input.charAt(peg$currPos);
                peg$currPos++;
            }
            else {
                s1 = peg$FAILED;
                if (peg$silentFails === 0) {
                    peg$fail(peg$c160);
                }
            }
            if (s1 !== peg$FAILED) {
                peg$savedPos = s0;
                s1 = peg$c158();
            }
            s0 = s1;
            peg$resultsCache[key] = { nextPos: peg$currPos, result: s0 };
            return s0;
        }
        function peg$parseLettersAndDigits() {
            var s0, s1, s2, s3, s4, s5, s6;
            var key = peg$currPos * 34 + 29;
            var cached = peg$resultsCache[key];
            if (cached) {
                peg$currPos = cached.nextPos;
                return cached.result;
            }
            s0 = peg$currPos;
            s1 = peg$parseLetters();
            if (s1 !== peg$FAILED) {
                s2 = [];
                s3 = peg$currPos;
                s4 = peg$parseDigits();
                if (s4 !== peg$FAILED) {
                    s5 = [];
                    s6 = peg$parseLetters();
                    while (s6 !== peg$FAILED) {
                        s5.push(s6);
                        s6 = peg$parseLetters();
                    }
                    if (s5 !== peg$FAILED) {
                        s4 = [s4, s5];
                        s3 = s4;
                    }
                    else {
                        peg$currPos = s3;
                        s3 = peg$FAILED;
                    }
                }
                else {
                    peg$currPos = s3;
                    s3 = peg$FAILED;
                }
                while (s3 !== peg$FAILED) {
                    s2.push(s3);
                    s3 = peg$currPos;
                    s4 = peg$parseDigits();
                    if (s4 !== peg$FAILED) {
                        s5 = [];
                        s6 = peg$parseLetters();
                        while (s6 !== peg$FAILED) {
                            s5.push(s6);
                            s6 = peg$parseLetters();
                        }
                        if (s5 !== peg$FAILED) {
                            s4 = [s4, s5];
                            s3 = s4;
                        }
                        else {
                            peg$currPos = s3;
                            s3 = peg$FAILED;
                        }
                    }
                    else {
                        peg$currPos = s3;
                        s3 = peg$FAILED;
                    }
                }
                if (s2 !== peg$FAILED) {
                    peg$savedPos = s0;
                    s1 = peg$c158();
                    s0 = s1;
                }
                else {
                    peg$currPos = s0;
                    s0 = peg$FAILED;
                }
            }
            else {
                peg$currPos = s0;
                s0 = peg$FAILED;
            }
            peg$resultsCache[key] = { nextPos: peg$currPos, result: s0 };
            return s0;
        }
        function peg$parseDigits() {
            var s0, s1;
            var key = peg$currPos * 34 + 30;
            var cached = peg$resultsCache[key];
            if (cached) {
                peg$currPos = cached.nextPos;
                return cached.result;
            }
            s0 = [];
            if (peg$c161.test(input.charAt(peg$currPos))) {
                s1 = input.charAt(peg$currPos);
                peg$currPos++;
            }
            else {
                s1 = peg$FAILED;
                if (peg$silentFails === 0) {
                    peg$fail(peg$c162);
                }
            }
            if (s1 !== peg$FAILED) {
                while (s1 !== peg$FAILED) {
                    s0.push(s1);
                    if (peg$c161.test(input.charAt(peg$currPos))) {
                        s1 = input.charAt(peg$currPos);
                        peg$currPos++;
                    }
                    else {
                        s1 = peg$FAILED;
                        if (peg$silentFails === 0) {
                            peg$fail(peg$c162);
                        }
                    }
                }
            }
            else {
                s0 = peg$FAILED;
            }
            peg$resultsCache[key] = { nextPos: peg$currPos, result: s0 };
            return s0;
        }
        function peg$parseNonZeroDigits() {
            var s0, s1;
            var key = peg$currPos * 34 + 31;
            var cached = peg$resultsCache[key];
            if (cached) {
                peg$currPos = cached.nextPos;
                return cached.result;
            }
            s0 = [];
            if (peg$c163.test(input.charAt(peg$currPos))) {
                s1 = input.charAt(peg$currPos);
                peg$currPos++;
            }
            else {
                s1 = peg$FAILED;
                if (peg$silentFails === 0) {
                    peg$fail(peg$c164);
                }
            }
            if (s1 !== peg$FAILED) {
                while (s1 !== peg$FAILED) {
                    s0.push(s1);
                    if (peg$c163.test(input.charAt(peg$currPos))) {
                        s1 = input.charAt(peg$currPos);
                        peg$currPos++;
                    }
                    else {
                        s1 = peg$FAILED;
                        if (peg$silentFails === 0) {
                            peg$fail(peg$c164);
                        }
                    }
                }
            }
            else {
                s0 = peg$FAILED;
            }
            peg$resultsCache[key] = { nextPos: peg$currPos, result: s0 };
            return s0;
        }
        function peg$parseLetters() {
            var s0, s1;
            var key = peg$currPos * 34 + 32;
            var cached = peg$resultsCache[key];
            if (cached) {
                peg$currPos = cached.nextPos;
                return cached.result;
            }
            s0 = [];
            if (peg$c165.test(input.charAt(peg$currPos))) {
                s1 = input.charAt(peg$currPos);
                peg$currPos++;
            }
            else {
                s1 = peg$FAILED;
                if (peg$silentFails === 0) {
                    peg$fail(peg$c166);
                }
            }
            if (s1 !== peg$FAILED) {
                while (s1 !== peg$FAILED) {
                    s0.push(s1);
                    if (peg$c165.test(input.charAt(peg$currPos))) {
                        s1 = input.charAt(peg$currPos);
                        peg$currPos++;
                    }
                    else {
                        s1 = peg$FAILED;
                        if (peg$silentFails === 0) {
                            peg$fail(peg$c166);
                        }
                    }
                }
            }
            else {
                s0 = peg$FAILED;
            }
            peg$resultsCache[key] = { nextPos: peg$currPos, result: s0 };
            return s0;
        }
        function peg$parse_() {
            var s0, s1;
            var key = peg$currPos * 34 + 33;
            var cached = peg$resultsCache[key];
            if (cached) {
                peg$currPos = cached.nextPos;
                return cached.result;
            }
            peg$silentFails++;
            s0 = [];
            if (peg$c168.test(input.charAt(peg$currPos))) {
                s1 = input.charAt(peg$currPos);
                peg$currPos++;
            }
            else {
                s1 = peg$FAILED;
                if (peg$silentFails === 0) {
                    peg$fail(peg$c169);
                }
            }
            while (s1 !== peg$FAILED) {
                s0.push(s1);
                if (peg$c168.test(input.charAt(peg$currPos))) {
                    s1 = input.charAt(peg$currPos);
                    peg$currPos++;
                }
                else {
                    s1 = peg$FAILED;
                    if (peg$silentFails === 0) {
                        peg$fail(peg$c169);
                    }
                }
            }
            peg$silentFails--;
            if (s0 === peg$FAILED) {
                s1 = peg$FAILED;
                if (peg$silentFails === 0) {
                    peg$fail(peg$c167);
                }
            }
            peg$resultsCache[key] = { nextPos: peg$currPos, result: s0 };
            return s0;
        }
        function buildBinaryOperand(head, tail, isArithmeticOp) {
            if (isArithmeticOp === void 0) { isArithmeticOp = false; }
            return tail.reduce(function (result, elements) {
                return new BinaryOperand(elements[1], result, elements[3], isArithmeticOp);
            }, head);
        }
        function flattenArray(array) {
            return [].concat.apply([], array);
        }
        peg$result = peg$startRuleFunction();
        if (peg$result !== peg$FAILED && peg$currPos === input.length) {
            return peg$result;
        }
        else {
            if (peg$result !== peg$FAILED && peg$currPos < input.length) {
                peg$fail(peg$endExpectation());
            }
            throw peg$buildStructuredError(peg$maxFailExpected, peg$maxFailPos < input.length ? input.charAt(peg$maxFailPos) : null, peg$maxFailPos < input.length
                ? peg$computeLocation(peg$maxFailPos, peg$maxFailPos + 1)
                : peg$computeLocation(peg$maxFailPos, peg$maxFailPos));
        }
    }
    var parse = peg$parse;

    var ConditionsParserError =  (function () {
        function ConditionsParserError(at, code) {
            this.at = at;
            this.code = code;
        }
        return ConditionsParserError;
    }());
    var ConditionsParser =  (function () {
        function ConditionsParser() {
        }
        ConditionsParser.prototype.patchExpression = function (text) {
            return text
                .replace(/=>/g, ">=")
                .replace(/=</g, "<=")
                .replace(/<>/g, "!=")
                .replace(/equals/g, "equal ")
                .replace(/notequals/g, "notequal ");
        };
        ConditionsParser.prototype.createCondition = function (text) {
            return this.parseExpression(text);
        };
        ConditionsParser.prototype.parseExpression = function (text) {
            try {
                var result = ConditionsParser.parserCache[text];
                if (result === undefined) {
                    result = parse(this.patchExpression(text));
                    if (!result.hasAsyncFunction()) {
                        ConditionsParser.parserCache[text] = result;
                    }
                }
                return result;
            }
            catch (e) {
                if (e instanceof SyntaxError) {
                    this.conditionError = new ConditionsParserError(e.location.start.offset, e.message);
                }
            }
        };
        Object.defineProperty(ConditionsParser.prototype, "error", {
            get: function () {
                return this.conditionError;
            },
            enumerable: false,
            configurable: true
        });
        ConditionsParser.parserCache = {};
        return ConditionsParser;
    }());

    var ExpressionExecutor =  (function () {
        function ExpressionExecutor(expression) {
            this.processValue = new ProcessValue();
            this.parser = new ConditionsParser();
            this.isAsyncValue = false;
            this.hasFunctionValue = false;
            this.setExpression(expression);
        }
        Object.defineProperty(ExpressionExecutor.prototype, "expression", {
            get: function () {
                return this.expressionValue;
            },
            enumerable: false,
            configurable: true
        });
        ExpressionExecutor.prototype.setExpression = function (value) {
            if (this.expression === value)
                return;
            this.expressionValue = value;
            this.operand = this.parser.parseExpression(value);
            this.hasFunctionValue = this.canRun() ? this.operand.hasFunction() : false;
            this.isAsyncValue = this.hasFunction()
                ? this.operand.hasAsyncFunction()
                : false;
        };
        ExpressionExecutor.prototype.getVariables = function () {
            if (!this.operand)
                return [];
            var variables = [];
            this.operand.setVariables(variables);
            return variables;
        };
        ExpressionExecutor.prototype.hasFunction = function () {
            return this.hasFunctionValue;
        };
        Object.defineProperty(ExpressionExecutor.prototype, "isAsync", {
            get: function () {
                return this.isAsyncValue;
            },
            enumerable: false,
            configurable: true
        });
        ExpressionExecutor.prototype.canRun = function () {
            return !!this.operand;
        };
        ExpressionExecutor.prototype.run = function (values, properties) {
            var _this = this;
            if (properties === void 0) { properties = null; }
            if (!this.operand)
                return null;
            this.processValue.values = values;
            this.processValue.properties = properties;
            if (!this.isAsync)
                return this.runValues();
            this.asyncFuncList = [];
            this.operand.addToAsyncList(this.asyncFuncList);
            for (var i = 0; i < this.asyncFuncList.length; i++) {
                this.asyncFuncList[i].onAsyncReady = function () {
                    _this.doAsyncFunctionReady();
                };
            }
            for (var i = 0; i < this.asyncFuncList.length; i++) {
                this.asyncFuncList[i].evaluateAsync(this.processValue);
            }
            return false;
        };
        ExpressionExecutor.prototype.doAsyncFunctionReady = function () {
            for (var i = 0; i < this.asyncFuncList.length; i++) {
                if (!this.asyncFuncList[i].isReady)
                    return;
            }
            this.runValues();
        };
        ExpressionExecutor.prototype.runValues = function () {
            var res = this.operand.evaluate(this.processValue);
            if (!!this.onComplete) {
                this.onComplete(res);
            }
            return res;
        };
        ExpressionExecutor.createExpressionExecutor = function (expression) { return new ExpressionExecutor(expression); };
        return ExpressionExecutor;
    }());
    var ExpressionRunnerBase =  (function () {
        function ExpressionRunnerBase(expression) {
            this.expression = expression;
        }
        Object.defineProperty(ExpressionRunnerBase.prototype, "expression", {
            get: function () {
                return !!this.expressionExecutor ? this.expressionExecutor.expression : "";
            },
            set: function (value) {
                var _this = this;
                if (!!this.expressionExecutor && value === this.expression)
                    return;
                this.expressionExecutor = ExpressionExecutor.createExpressionExecutor(value);
                this.expressionExecutor.onComplete = function (res) { _this.doOnComplete(res); };
            },
            enumerable: false,
            configurable: true
        });
        ExpressionRunnerBase.prototype.getVariables = function () {
            return this.expressionExecutor.getVariables();
        };
        ExpressionRunnerBase.prototype.hasFunction = function () {
            return this.expressionExecutor.hasFunction();
        };
        Object.defineProperty(ExpressionRunnerBase.prototype, "isAsync", {
            get: function () {
                return this.expressionExecutor.isAsync;
            },
            enumerable: false,
            configurable: true
        });
        ExpressionRunnerBase.prototype.canRun = function () {
            return this.expressionExecutor.canRun();
        };
        ExpressionRunnerBase.prototype.runCore = function (values, properties) {
            if (properties === void 0) { properties = null; }
            return this.expressionExecutor.run(values, properties);
        };
        ExpressionRunnerBase.prototype.doOnComplete = function (res) { };
        return ExpressionRunnerBase;
    }());
    ((function (_super) {
        __extends(ConditionRunner, _super);
        function ConditionRunner() {
            return _super !== null && _super.apply(this, arguments) || this;
        }
        ConditionRunner.prototype.run = function (values, properties) {
            if (properties === void 0) { properties = null; }
            return this.runCore(values, properties) == true;
        };
        ConditionRunner.prototype.doOnComplete = function (res) {
            if (!!this.onRunComplete)
                this.onRunComplete(res == true);
        };
        return ConditionRunner;
    })(ExpressionRunnerBase));
    ((function (_super) {
        __extends(ExpressionRunner, _super);
        function ExpressionRunner() {
            return _super !== null && _super.apply(this, arguments) || this;
        }
        ExpressionRunner.prototype.run = function (values, properties) {
            if (properties === void 0) { properties = null; }
            return this.runCore(values, properties);
        };
        ExpressionRunner.prototype.doOnComplete = function (res) {
            if (!!this.onRunComplete)
                this.onRunComplete(res);
        };
        return ExpressionRunner;
    })(ExpressionRunnerBase));

    var Runner =  (function () {
        function Runner() {
            this.executorCache = {};
        }
        Runner.prototype.runCondition = function (expression, values, properties) {
            if (properties === void 0) { properties = null; }
            return this.runExpression(expression, values, properties) == true;
        };
        Runner.prototype.runExpression = function (expression, values, properties) {
            if (properties === void 0) { properties = null; }
            return this.findOrCreateExecutor(expression).run(values, properties);
        };
        Runner.prototype.findOrCreateExecutor = function (expression) {
            if (this.executorCache[expression] == null) {
                this.executorCache[expression] =
                    ExpressionExecutor.createExpressionExecutor(expression);
            }
            return this.executorCache[expression];
        };
        return Runner;
    }());
    var r = new Runner();

    return r;

}));
