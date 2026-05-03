# Prompting Pattern

Use this prompt pattern after parsing the reference diagram and mapping project content.

```text
你将根据“项目文本资料”和“参考技术路线图”生成一张课题技术路线图结构草案。

任务：
1. 保持参考图的总体结构：{layout_summary}
2. 使用以下节点映射填充内容：{slot_mapping}
3. 中央主线体现：理论基础 -> 研究内容 -> 机制分析 -> 对策建议。
4. 右侧方法栏与中央内容模块一一对应。
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
- Section title groups: place the subtitle line inside the main title box when the reference image visually binds the two.
- Vertical labels: use stacked vertical text for narrow stage or framework boxes.

## Manual Adjustment Checklist

- Stage labels match the target project.
- Method stacks support the neighboring content section.
- Main section titles stay readable.
- Dense subnodes are grouped into fewer boxes.
- Weak evidence slots are revised after reading the full proposal.
