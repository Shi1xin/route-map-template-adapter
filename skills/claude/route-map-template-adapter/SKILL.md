---
name: route-map-template-adapter
description: Adapts required source text and required reference route-map images into template-aware node mappings, prompt drafts, and draw.io-ready route-map outlines. Use when the user says 源文本 + 参考图, 路线图, 套模板, 节点映射, 提示词调整, 参考结构图, or asks to parse a reference diagram, map source content into nodes, generate prompt constraints, or prepare a route map for draw.io or manual editing.
---

# Route Map Template Adapter

## Core Workflow

Use this skill before rendering tools. Treat source text and reference diagram as required inputs.

1. Confirm inputs: source text and reference diagram.
2. Parse the reference diagram:
   - global layout
   - lanes and sections
   - stage sequence
   - node types
   - connector semantics
   - visual conventions
3. Extract source content:
   - topic and core question
   - background and rationale
   - content modules
   - data, methods, and tools
   - mechanism or support chain
   - outputs and recommendations
4. Build a slot mapping table:
   - template slot
   - source evidence
   - adapted node label
   - relation to adjacent nodes
   - confidence or gap
5. Check the support chain. Each central path should show cause, mechanism, evidence, or progression.
6. Draft a tool prompt for draw.io handoff or a generic LLM structure pass.
7. Give concise manual adjustment notes for node density, label length, method-content alignment, and reading order.

## Output Shape

Prefer this structure:

```markdown
## Template Parse
[layout, lanes, sections, node types, connectors]

## Source Extraction
[topic, key modules, methods, mechanisms, outputs]

## Node Mapping
| Template slot | Source content | Node label | Relation | Confidence |

## Prompt Draft
[copy-ready prompt]

## Manual Adjustment Notes
[3-6 concrete edits]
```

## Mapping Rules

- Preserve the reference diagram's main layout before changing visual form.
- Keep node labels short enough for boxes.
- Use the source text as the source for node content.
- Mark unavailable content as a gap in the mapping table.
- Put basis, mechanism, evidence, and output nodes on the main path when the template supports them.
- Align every method stack with the content module it supports.
- Prefer one clear route-map prompt and one draw.io handoff path.

## Common Issues

### Reference diagram is blurry

Parse the visible macro-structure first: top headers, side lanes, central sections, and obvious connector directions. Mark unreadable node text as `image gap` in the mapping table.

### Source text is thin

Use available material for high-confidence nodes and mark data, method, model, and indicator details as `text gap`. Keep the draft useful for structure review.

### Evidence is weak for a node

Keep the template slot and leave the node label as a gap. Add a short note naming the material needed: concept definition, method detail, data source, mechanism claim, or action measure.

### Template methods differ from source methods

Keep the template's method-lane position and replace method labels with source-supported methods. Priority order: direct method from source text, method implied by a stated data source, method required by a stated mechanism claim, then `method gap`.

### Reference diagram spans multiple images

Parse each image as a page, then merge repeated lanes and section roles into one slot map.

## Quality Gates

- Template parse covers global layout, lanes, sections, node types, and connector semantics.
- Every filled node has source evidence from the source text.
- Method stacks align with neighboring content sections.
- The central route shows basis, mechanism, evidence, and output progression.
- Prompt draft can be copied into the next structure pass or draw.io handoff.

## References

Read only what the task needs:

- `references/template-parse.md`: schema for parsing route-map reference images.
- `references/prompting.md`: prompt pattern for template-guided route-map generation and draw.io handoff.
- `references/examples.md`: example mapping style.
