# OpenCode

OpenCode supports Agent Skills.

Official locations:

- Global OpenCode skills: `~/.config/opencode/skill/<name>/SKILL.md`
- Project OpenCode skills: `.opencode/skill/<name>/SKILL.md`
- Claude-compatible global skills: `~/.claude/skills/<name>/SKILL.md`
- Claude-compatible project skills: `.claude/skills/<name>/SKILL.md`

## Installer script

User scope:

```bash
tmp=$(mktemp -d) && git clone --depth 1 https://github.com/Shi1xin/route-map-template-adapter.git "$tmp" && "$tmp/scripts/install.sh" --global opencode; rm -rf "$tmp"
```

Project scope:

```bash
tmp=$(mktemp -d) && git clone --depth 1 https://github.com/Shi1xin/route-map-template-adapter.git "$tmp" && "$tmp/scripts/install.sh" --project /path/to/project opencode; rm -rf "$tmp"
```

## GitHub CLI skill installer

Recent GitHub CLI releases include `gh skill install`:

```bash
gh skill install Shi1xin/route-map-template-adapter skills/claude/route-map-template-adapter --agent opencode --scope user
```

## Use

OpenCode exposes available skills through the native `skill` tool. Ask it to load `route-map-template-adapter` for project-text plus reference-route-map tasks.
