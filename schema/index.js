import Survey from "survey-core";
import * as fs from "fs";
import _ from "lodash";
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
    console.log(key);
    if (
      key === "showQuestionNumbers" &&
      _.isEqual(value, oldShowQuestionNumbers)
    ) {
      _.set(object, "showQuestionNumbers", newShowQuestionNumbers);
    }
    if (_.isObject(value)) {
      replace(value);
    }
  });
replace(schema);
let schemaJson = JSON.stringify(schema, null, 4);

//https://github.com/surveyjs/survey-library/issues/5767
schemaJson = schemaJson.replaceAll('"allOff"', '"allOf"');

fs.writeFile("../surveyjs.json", schemaJson, function (err) {
  if (err) {
    return console.log(err);
  }
  console.log("The file was saved!");
});
