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
          name: {
            type: "string",
          },
        },
      },
    },
  },
};

const fix = (target) =>
  _.forIn(target, (value, key, object) => {
    //fix ref
    if (
      key === "$ref" &&
      _.startsWith(value, "#") &&
      !_.startsWith(value, "#/")
    ) {
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

fs.writeFile("surveyjs.yaml", YAML.stringify(openapi), function (err) {
  if (err) {
    return console.log(err);
  }
  console.log("The file was saved!");
});
