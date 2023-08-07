import { ExpressionExecutor, IExpresionExecutor } from "./conditions";
import { HashTable } from "./helpers";

class Runner {
  executorCache: Record<string, IExpresionExecutor> = {};
  constructor() {}
  runCondition(
    expression: string,
    values: HashTable<any>,
    properties: HashTable<any> | null = null
  ): boolean {
    return this.runExpression(expression, values, properties) == true;
  }

  runExpression(
    expression: string,
    values: HashTable<any>,
    properties: HashTable<any> | null = null
  ): any {
    return this.findOrCreateExecutor(expression).run(values, properties);
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
