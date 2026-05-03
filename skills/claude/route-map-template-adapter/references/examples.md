# Examples

## Reference Route Map Slot Names

Use stable slot names when the reference image resembles a grant technical route map:

- `top.left`: research logic
- `top.center`: research content
- `top.right`: research methods
- `left.stage.1-4`: theory, empirical analysis, mechanism path, policy system
- `right.methods.1-4`: method stack for each stage
- `center.section.1-4`: content block for each stage
- `center.main-title`: focal project title or central research object
- `center.mechanism`: drivers, mechanisms, paths, effects
- `center.policy`: problems, principles, tasks, measures

## Node Mapping Style

```markdown
| Template slot | Project content | Node label | Relation | Confidence |
|---|---|---|---|---|
| center.section.2.title | "数实融合驱动数字产业集群创新发展" | 数实融合驱动数字产业集群创新发展 | central empirical object | high |
| right.methods.2 | "国际比较和国内典型案例" | 国际比较 / 典型案例 / 企业调研 | supports empirical section | medium |
```

## Label Rules

- Chinese labels usually fit best at 4-12 characters.
- Long project terms can become section titles.
- Box labels should use noun phrases or short verb-object phrases.
- Connector labels should name relation semantics: 支撑、驱动、测度、解释、验证、转化、形成。
