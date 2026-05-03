# Route Map Template Adapter

把“源文本 + 参考结构图”转成路线图的节点映射和 draw.io handoff 约束。

## 输入

- 源文本：说明文档、方案材料、大纲、需求文档或主题资料。
- 参考结构图：目标版式、节点关系和视觉结构的参考图。

## 输出

- `Template Parse`：参考图结构解析。
- `Source Extraction`：源文本抽取。
- `Node Mapping`：模板槽位与源文本内容映射表。
- `draw.io handoff constraints`：给 draw.io skill 或工具链的出图约束。
- `Manual Adjustment Notes`：人工校正点。

## 快速使用

把 `prompts/short.md` 的内容发给 Agent，并附上源文本和参考图。

结构确认后，再使用 `prompts/drawio-handoff.md` 生成 `.drawio`。

## 安装

Codex 全局安装：

```bash
tmp=$(mktemp -d) && git clone --depth 1 https://github.com/Shi1xin/route-map-template-adapter.git "$tmp" && "$tmp/scripts/install.sh" --global codex; rm -rf "$tmp"
```

Codex 项目安装：

```bash
tmp=$(mktemp -d) && git clone --depth 1 https://github.com/Shi1xin/route-map-template-adapter.git "$tmp" && "$tmp/scripts/install.sh" --project /path/to/project codex; rm -rf "$tmp"
```

Claude Code 全局安装：

```bash
tmp=$(mktemp -d) && git clone --depth 1 https://github.com/Shi1xin/route-map-template-adapter.git "$tmp" && "$tmp/scripts/install.sh" --global claude; rm -rf "$tmp"
```

Claude Code 项目安装：

```bash
tmp=$(mktemp -d) && git clone --depth 1 https://github.com/Shi1xin/route-map-template-adapter.git "$tmp" && "$tmp/scripts/install.sh" --project /path/to/project claude; rm -rf "$tmp"
```

Gemini CLI 用户级安装：

```bash
tmp=$(mktemp -d) && git clone --depth 1 https://github.com/Shi1xin/route-map-template-adapter.git "$tmp" && "$tmp/scripts/install.sh" --global gemini; rm -rf "$tmp"
```

Gemini CLI 工作区安装：

```bash
tmp=$(mktemp -d) && git clone --depth 1 https://github.com/Shi1xin/route-map-template-adapter.git "$tmp" && "$tmp/scripts/install.sh" --project /path/to/project gemini; rm -rf "$tmp"
```

GitHub Copilot CLI 用户级安装：

```bash
tmp=$(mktemp -d) && git clone --depth 1 https://github.com/Shi1xin/route-map-template-adapter.git "$tmp" && "$tmp/scripts/install.sh" --global copilot; rm -rf "$tmp"
```

GitHub Copilot CLI 项目安装：

```bash
tmp=$(mktemp -d) && git clone --depth 1 https://github.com/Shi1xin/route-map-template-adapter.git "$tmp" && "$tmp/scripts/install.sh" --project /path/to/project copilot; rm -rf "$tmp"
```

OpenCode 用户级安装：

```bash
tmp=$(mktemp -d) && git clone --depth 1 https://github.com/Shi1xin/route-map-template-adapter.git "$tmp" && "$tmp/scripts/install.sh" --global opencode; rm -rf "$tmp"
```

OpenCode 项目安装：

```bash
tmp=$(mktemp -d) && git clone --depth 1 https://github.com/Shi1xin/route-map-template-adapter.git "$tmp" && "$tmp/scripts/install.sh" --project /path/to/project opencode; rm -rf "$tmp"
```

## GitHub CLI 安装

GitHub CLI 2.90.0+ 可用统一安装命令：

```bash
gh skill install Shi1xin/route-map-template-adapter skills/claude/route-map-template-adapter --agent claude-code --scope user
```

Codex：

```bash
gh skill install Shi1xin/route-map-template-adapter skills/claude/route-map-template-adapter --agent codex --scope user
```

Gemini CLI：

```bash
gh skill install Shi1xin/route-map-template-adapter skills/claude/route-map-template-adapter --agent gemini-cli --scope user
```

GitHub Copilot CLI：

```bash
gh skill install Shi1xin/route-map-template-adapter skills/claude/route-map-template-adapter --agent github-copilot --scope user
```

OpenCode：

```bash
gh skill install Shi1xin/route-map-template-adapter skills/claude/route-map-template-adapter --agent opencode --scope user
```

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
