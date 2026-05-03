基于上一步的 Node Mapping 和 draw.io handoff constraints，使用 draw.io skill 生成可编辑 `.drawio` 文件，并导出 PNG 预览。

生成偏好：

- 使用 handoff constraints 指定的整体布局、分栏和分区。
- 内容区参考 handoff constraints 中的分区关系。
- 标题组、竖排文本、汇聚箭头、同轴对齐、直角连接等版式处理，按 handoff constraints 或用户补充偏好启用。
- 当 handoff constraints 指定汇聚箭头时，多节点连接先汇聚到中轴点，再统一指向目标框。
- 当 handoff constraints 指定竖排框时，窄框文本使用逐字竖排。
- 当 handoff constraints 指定方法栏或工具栏时，使其与相邻内容分区对齐。

输出：

1. `.drawio` 文件。
2. PNG 预览。
3. 简短自检：节点对齐、箭头路由、文字可读性。
