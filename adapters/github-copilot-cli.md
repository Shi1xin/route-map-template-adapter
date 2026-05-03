# GitHub Copilot CLI

Copilot CLI 适合执行命令和辅助编辑。这个 workflow 中建议把它用于文件整理、安装脚本、draw.io CLI 导出。

## 使用方式

1. 用 `prompts/full.md` 在支持长上下文的 Agent 中生成 Node Mapping。
2. 在 Copilot CLI 中引用输出文件，让它辅助生成或校验 `.drawio`。
3. draw.io 导出使用本机 CLI：

```bash
drawio -x -f png -e -b 10 -o output.drawio.png output.drawio
```

## 边界

结构理解和节点映射优先交给支持文件与图像上下文的 Agent。Copilot CLI 更适合作为命令执行助手。
