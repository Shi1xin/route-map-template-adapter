使用 route-map-template-adapter。

输入：

1. 源文本：@源文本文件
2. 参考结构图：@参考图文件

请输出：

## Template Parse

解析参考图的全局布局、栏目、阶段、分区、方法栏或工具栏、节点类型和箭头语义。

## Source Extraction

从源文本抽取题目、背景、核心概念、基础依据、关键问题、内容模块、方法工具、数据来源、机制路径、建议和预期输出。

## Node Mapping

用表格输出：

| Template slot | Source content | Node label | Relation | Confidence |

每个填入节点都要能追溯到源文本。材料不足的位置用 gap 标出。

## draw.io handoff constraints

输出给 draw.io skill 的约束，建议包含：

- 分区数量和位置关系。
- 标题组：按参考图和阅读关系决定是否合并。
- 竖排框：按参考图窄框形态决定是否使用。
- 汇聚箭头：按参考图连接方式和用户偏好决定是否使用。
- 节点接入关系。
- 方法栏或工具栏与内容分区的对应关系：按参考图布局决定是否保留。
- 其他可选出图偏好：同轴对齐、直角连接、线条汇合点、标签换行方式。

## Manual Adjustment Notes

列出需要人工确认的节点、术语、方法和版式风险。
