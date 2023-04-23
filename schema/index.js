// The original surveyjs json schema is so fucked up, so we need to fix it ourselves

import Survey from "survey-core";
import * as fs from "fs";
import _ from "lodash";

import * as YAML from "yaml";

let schema = Survey.Serializer.generateSchema();

//https://surveyjs.io/form-library/documentation/api-reference/survey-data-model#showQuestionNumbers
const oldShowQuestionNumbers = {
  type: "string",
  enum: ["on", "onPage", "off"],
};
const newShowQuestionNumbers = {
  oneOf: [
    {
      type: "string",
      enum: ["on", "onPage", "off"],
    },
    {
      type: "boolean",
    },
  ],
};
const replace = (target) =>
  _.forIn(target, (value, key, object) => {
    if (
      key === "showQuestionNumbers" &&
      _.isEqual(value, oldShowQuestionNumbers)
    ) {
      _.set(object, key, newShowQuestionNumbers);
    }
    if (_.isObject(value)) {
      replace(value);
    }
  });
replace(schema);

//use base class
schema["properties"]["questions"]["items"] = {
  $ref: "#elementBase",
};

schema["properties"]["triggers"] = {
  $ref: "#surveytrigger",
};
schema["definitions"]["panelbase"]["properties"]["elements"]["items"] = {
  $ref: "#elementBase",
};

schema["definitions"]["question"]["properties"]["validators"] = {
  $ref: "#surveyvalidator",
};

schema["definitions"]["matrixdropdowncolumn"]["properties"]["validators"] = {
  $ref: "#surveyvalidator",
};
schema["definitions"]["multipletextitem"]["properties"]["validators"] = {
  $ref: "#surveyvalidator",
};

schema["definitions"]["paneldynamic"]["allOf"][1]["properties"][
  "templateElements"
]["items"] = {
  $ref: "#elementBase",
};
// add elementbase property to question and panelbase
{
  const { properties, ...rest } = schema["definitions"]["question"];
  schema["definitions"]["question"] = {
    ...rest,
    allOf: [{ $ref: "#elementBase" }, { properties }],
  };
}
{
  const { properties, ...rest } = schema["definitions"]["panelbase"];
  schema["definitions"]["panelbase"] = {
    ...rest,
    allOf: [{ $ref: "#elementBase" }, { properties }],
  };
}

//TODO remove to fix dart code generation enum duplication temporarily
delete schema["definitions"]["matrixdropdowncolumn"]["properties"]["colCount"];

const { definitions, type, properties, ...rest } = schema;
//generate openapi docs
let openapi = {
  openapi: "3.0.0",
  info: {
    title: "For codegen",
    version: "1.0.0",
  },
  paths: {
    "/schema": {
      get: {
        description: "return survey json schema",
        responses: {
          200: {
            description: "return survey json schema",
            content: {
              "application/json": {
                schema: {
                  $ref: "#/components/schemas/survey",
                },
              },
            },
          },
        },
      },
    },
  },
  components: {
    schemas: {
      survey: {
        type,
        properties,
      },
      ...definitions,
      //https://surveyjs.io/form-library/documentation/api-reference/choicesrestful
      choicesRestful: {
        type: "object",
        properties: {
          url: {
            type: "string",
          },
          valueName: {
            type: "string",
          },
          titleName: {
            type: "string",
          },
          imageLinkName: {
            type: "string",
          },
          path: {
            type: "string",
          },
        },
      },
      elementBase: {
        type: "object",
        properties: {
          type: {
            type: "string",
          },
          name: {
            type: "string",
          },
        },
      },
    },
  },
};

const allEnumDefinitions = {};
const getEnumName = (accessPath) => {
  return accessPath
    .filter((p) => p !== "allOf" && p != "1" && p !== "properties")
    .reduce((a, b) => {
      if (a === "") {
        return b;
      }
      return a + b.charAt(0).toUpperCase() + b.slice(1);
    }, "");
};

//fix bug for openapigenerator enum hanlding
const findAndReplaceAllEnums = (target, accessPath) => {
  _.forIn(target, (value, key, object) => {
    if (key === "enum") {
      const { type, enum: e } = object;
      const name = getEnumName(accessPath);
      delete object["enum"];
      delete object["type"];
      object["$ref"] = "#/components/schemas/" + name;
      allEnumDefinitions[name] = {
        type,
        enum: e,
      };
      if (
        Array.isArray(e) &&
        e.findIndex((p) => (_.get(p, "text") ?? p) === "name") >= 0
      ) {
        allEnumDefinitions[name]["x-enum-values"] = e.map((p) => {
          return {
            numericValue: _.get(p, "value") ?? p,
            identifier: _.get(p, "text") ?? (p == "name" ? "namee" : p),
            description: _.get(p, "text") ?? (p == "name" ? "namee" : p),
          };
        });
      }
    }
    if (_.isObject(value)) {
      findAndReplaceAllEnums(value, [...accessPath, key]);
    }
  });
};
findAndReplaceAllEnums(openapi["components"]["schemas"], []);
openapi["components"]["schemas"] = {
  ...openapi["components"]["schemas"],
  ...allEnumDefinitions,
};

const fix = (target) =>
  _.forIn(target, (value, key, object) => {
    //fix some shit property
    if (key === "useDisplayValuesInDynamicTexts") {
      object["useDisplayValuesInDynamicTexts"]["type"] = "boolean";
    }
    if (key === "separateSpecialChoices") {
      object["separateSpecialChoices"]["type"] = "boolean";
    }
    if (key === "validators") {
      object["validators"] = { $ref: "#/components/schemas/surveyvalidator" };
    }
    if (key === "clearIfInvisible") {
      object["clearIfInvisible"] = {
        $ref: "#/components/schemas/questionClearIfInvisible",
      };
    }
    if (key === "titleLocation") {
      object["titleLocation"] = {
        $ref: "#/components/schemas/questionTitleLocation",
      };
    }
    if (key === "storeOthersAsComment") {
      object["storeOthersAsComment"] = {
        type: "boolean",
      };
    }
    if (key === "showOtherItem") {
      object["showOtherItem"] = {
        type: "boolean",
      };
    }
    if (key === "showSelectAllItem") {
      object["showSelectAllItem"] = {
        type: "boolean",
      };
    }
    if (key === "showNoneItem") {
      object["showNoneItem"] = {
        type: "boolean",
      };
    }
    if (key === "maxSelectedChoices") {
      object["maxSelectedChoices"] = {
        type: "number",
      };
    }

    if (key === "colCount") {
      object["colCount"] = {
        $ref: "#/components/schemas/checkboxbaseColCount",
      };
    }
    //fix ref
    if (
      key === "$ref" &&
      _.startsWith(value, "#") &&
      !_.startsWith(value, "#/")
    ) {
      //fix ChoicesRestful
      let v = _.replace(value, "ChoicesRestful", "choicesRestful");
      v = _.replace(v, "#", "#/components/schemas/");
      _.set(object, key, v);

      if (v === "#/components/schemas/string") {
        delete object[key];
        _.set(object, "type", "string");
      }
    }

    //remove id
    if (key === "$id") {
      delete object["$id"];
    }
    //remove empty enum
    if (key === "enum" && _.isEmpty(value)) {
      delete object["enum"];
    }

    if (_.isObject(value)) {
      fix(value);
    }
  });
fix(openapi);
delete openapi["components"]["schemas"]["imagepicker"]["allOf"][1][
  "properties"
]["choices"];
delete openapi["components"]["schemas"]["buttongroup"]["allOf"][1][
  "properties"
]["choices"];
fs.writeFile("surveyjs.yaml", YAML.stringify(openapi), function (err) {
  if (err) {
    return console.log(err);
  }
  console.log("The file was saved!");
});
