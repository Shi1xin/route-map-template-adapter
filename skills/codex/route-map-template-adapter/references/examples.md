# Examples

## Reference Route Map Slot Names

Use stable slot names when the reference image has a three-lane route-map layout:

- `top.left`: route logic
- `top.center`: main content
- `top.right`: methods or tools
- `left.stage.1-4`: basis, analysis, mechanism path, output system
- `right.methods.1-4`: method stack for each stage
- `center.section.1-4`: content block for each stage
- `center.main-title`: focal title or central object
- `center.mechanism`: drivers, mechanisms, paths, effects
- `center.output`: problems, principles, tasks, measures

## Node Mapping Style

```markdown
| Template slot | Source content | Node label | Relation | Confidence |
|---|---|---|---|---|
| center.section.2.title | "平台能力支撑业务流程升级" | 平台能力支撑业务流程升级 | central analysis object | high |
| right.methods.2 | "用户访谈和流程数据分析" | 用户访谈 / 流程数据 / 对比分析 | supports analysis section | medium |
```

## Label Rules

- Chinese labels usually fit best at 4-12 characters.
- Long source terms can become section titles.
- Box labels should use noun phrases or short verb-object phrases.
- Connector labels should name relation semantics: 支撑、驱动、测度、解释、验证、转化、形成。
