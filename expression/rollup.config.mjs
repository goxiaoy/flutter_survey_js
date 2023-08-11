import typescript from "rollup-plugin-typescript2";
import cleanup from "rollup-plugin-cleanup";

export default {
  input: "src/index.ts",
  output: {
    dir: "dist",
    format: "umd",
    name: "surveyjs",
  },
  plugins: [
    typescript(),
    cleanup({ comments: "none", extensions: ["js", "ts"] }),
  ],
};
