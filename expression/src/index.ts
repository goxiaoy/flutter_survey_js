import { ExpressionExecutor, IExpresionExecutor } from "./conditions";
import { HashTable } from "./helpers";

const executorCache: Record<string, IExpresionExecutor> = {};

export function runConditon(
  expression: string,
  values: HashTable<any>,
  properties: HashTable<any> | null = null
): boolean {
  return runExpression(expression, values, properties) == true;
}

export function runExpression(
  expression: string,
  values: HashTable<any>,
  properties: HashTable<any> | null = null
): any {
  return findOrCreateExecutor(expression).run(values, properties);
}

function findOrCreateExecutor(expression: string) {
  if (executorCache[expression] == null) {
    executorCache[expression] =
      ExpressionExecutor.createExpressionExecutor(expression);
  }
  return executorCache[expression];
}
export { ConditionRunner, ExpressionRunner } from "./conditions";
