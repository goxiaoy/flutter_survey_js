import { ExpressionExecutor, IExpresionExecutor } from "./conditions";
import { HashTable } from "./helpers";

class Runner {
  executorCache: Record<string, IExpresionExecutor> = {};
  constructor() {}
  runCondition(
    expression: string,
    values: string,
    properties: string | null = null
  ): boolean {
    return this.runExpression(expression, values, properties) == true;
  }

  runExpression(
    expression: string,
    values: string,
    properties: string | null = null
  ): any {
    const ret = this.findOrCreateExecutor(expression).run(
      JSON.parse(values),
      properties == null ? null : JSON.parse(properties)
    );
    console.log(
      `runExpression: ${expression} values:${values} properties:${properties} result:${ret}`
    );
    return ret;
  }

  findOrCreateExecutor(expression: string) {
    if (this.executorCache[expression] == null) {
      this.executorCache[expression] =
        ExpressionExecutor.createExpressionExecutor(expression);
    }
    return this.executorCache[expression];
  }
}

const r = new Runner();

export default r;
