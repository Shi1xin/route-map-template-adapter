# Gemini CLI

Gemini CLI 使用 prompt + references 方式运行。

## 使用方式

1. 把 `prompts/short.md` 作为主 prompt。
2. 附上项目文本和参考结构图。
3. 需要更稳定输出时，把以下文件作为上下文：
   - `skills/codex/route-map-template-adapter/SKILL.md`
   - `skills/codex/route-map-template-adapter/references/template-parse.md`
   - `skills/codex/route-map-template-adapter/references/prompting.md`

## 第二阶段

Gemini CLI 输出 Node Mapping 和 handoff constraints 后，把结果交给 draw.io skill 或 draw.io CLI 工作流。
