# Route Map Template Adapter

把“项目文本 + 参考结构图”转成技术路线图的节点映射和 draw.io handoff 约束。

## 输入

- 项目文本：申报书、活页、开题材料、论文大纲或课题说明。
- 参考结构图：导师选定的技术路线图模板截图。

## 输出

- `Template Parse`：参考图结构解析。
- `Project Extraction`：项目文本抽取。
- `Node Mapping`：模板槽位与项目内容映射表。
- `draw.io handoff constraints`：给 draw.io skill 或工具链的出图约束。
- `Manual Adjustment Notes`：人工校正点。

## 快速使用

把 `prompts/short.md` 的内容发给 Agent，并附上项目文本和参考图。

结构确认后，再使用 `prompts/drawio-handoff.md` 生成 `.drawio`。

## 安装

Codex 全局安装：

```bash
curl -fsSL https://raw.githubusercontent.com/Shi1xin/route-map-template-adapter/main/scripts/install.sh | bash -s -- --global codex
```

Codex 项目安装：

```bash
curl -fsSL https://raw.githubusercontent.com/Shi1xin/route-map-template-adapter/main/scripts/install.sh | bash -s -- --project /path/to/project codex
```

Claude Code 全局安装：

```bash
curl -fsSL https://raw.githubusercontent.com/Shi1xin/route-map-template-adapter/main/scripts/install.sh | bash -s -- --global claude
```

Claude Code 项目安装：

```bash
curl -fsSL https://raw.githubusercontent.com/Shi1xin/route-map-template-adapter/main/scripts/install.sh | bash -s -- --project /path/to/project claude
```

Gemini CLI、GitHub Copilot CLI、OpenCode 使用 `adapters/` 下的说明，把 prompt 和 references 作为上下文输入。

本地开发安装：

```bash
./scripts/install.sh --global codex
```

## 文件结构

```text
prompts/     # 可复制 prompt
skills/      # Codex 与 Claude Code skill 包
adapters/    # 其他 Agent 的使用方式
examples/    # 最小输入样例
scripts/     # 安装脚本
```

## 边界

本项目负责模板理解、节点映射和 handoff 约束。draw.io 文件生成交给 draw.io skill 或 draw.io 工具链。
