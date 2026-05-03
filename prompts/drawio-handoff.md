基于上一步的 Node Mapping 和 draw.io handoff constraints，使用 draw.io skill 生成可编辑 `.drawio` 文件，并导出 PNG 预览。

要求：

- 使用 handoff constraints 指定的整体布局、分栏和分区。
- 内容区按参考图分区。
- 标题组按 handoff constraints 合并。
- 窄竖框使用逐字竖排。
- 多节点连接先汇聚到中轴点，再统一指向目标框。
- 同一行节点中心线对齐。
- 方法栏或工具栏与相邻内容分区对齐。

输出：

1. `.drawio` 文件。
2. PNG 预览。
3. 简短自检：节点对齐、箭头路由、文字可读性。
