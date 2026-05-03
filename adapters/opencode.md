# OpenCode

OpenCode 使用项目上下文文件运行。

## 使用方式

1. 把 `prompts/short.md` 放入对话。
2. 附上项目文本和参考结构图。
3. 需要固定行为时，把 `skills/codex/route-map-template-adapter/SKILL.md` 作为规则上下文。
4. 需要详细解析时，再加入 `references/template-parse.md` 和 `references/prompting.md`。

## 推荐流程

先生成结构和 handoff 约束，再调用 draw.io skill 或 draw.io CLI 生成文件。
