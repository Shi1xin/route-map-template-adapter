# Prompting Pattern

Use this prompt pattern after parsing the reference diagram and mapping source content.

```text
你将根据“源文本资料”和“参考结构图”生成一张路线图结构草案。

任务：
1. 保持参考图的总体结构：{layout_summary}
2. 使用以下节点映射填充内容：{slot_mapping}
3. 主线体现参考图中的递进、支撑、因果、并列或分组关系。
4. 方法栏、工具栏、阶段栏、输出栏等侧栏按参考图和用户偏好决定是否保留。
5. 每个框内使用短中文标签，优先使用 4-12 个字。
6. 箭头表达支撑、驱动、测度、检验、转化、形成等关系。
7. 输出可交给 draw.io 出图工具的结构草案。

输出格式：
- 先给分区节点清单。
- 再给箭头和关系清单。
- 最后给 draw.io 出图约束。
```

## Prompt Inputs

- `layout_summary`: reference diagram structure in plain text.
- `slot_mapping`: table of template slots and adapted labels.
- `style_constraints`: label length, lane count, section count, box density, connector style.

## Draw.io Handoff Fields

- Canvas: portrait route map.
- Lanes: top headers, left stages, center content, right methods.
- Groups: one group per central section.
- Shapes: rectangles for nodes, dashed rectangles for sections, arrows for support and progression.
- Labels: use short Chinese node labels from the mapping table.
- Section title groups: enable when the reference image visually binds title and subtitle.
- Vertical labels: enable when the reference image uses narrow vertical boxes.
- Converging arrows: enable when the reference image or user preference calls for multiple connectors to merge before entering a target node.

## Manual Adjustment Checklist

- Stage labels match the target source.
- Side stacks support the neighboring content section when the reference image uses side stacks.
- Main section titles stay readable.
- Dense subnodes are grouped into fewer boxes.
- Weak evidence slots are revised after reading the full source material.
