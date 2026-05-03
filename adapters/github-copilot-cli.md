# GitHub Copilot CLI

GitHub Copilot CLI supports Agent Skills.

Official locations:

- Personal skills: `~/.copilot/skills/` or `~/.agents/skills/`
- Project skills: `.github/skills/`, `.claude/skills/`, or `.agents/skills/`

## Installer script

User scope:

```bash
tmp=$(mktemp -d) && git clone --depth 1 https://github.com/Shi1xin/route-map-template-adapter.git "$tmp" && "$tmp/scripts/install.sh" --global copilot; rm -rf "$tmp"
```

Project scope:

```bash
tmp=$(mktemp -d) && git clone --depth 1 https://github.com/Shi1xin/route-map-template-adapter.git "$tmp" && "$tmp/scripts/install.sh" --project /path/to/project copilot; rm -rf "$tmp"
```

## GitHub CLI skill installer

Recent GitHub CLI releases include `gh skill install`:

```bash
gh skill install Shi1xin/route-map-template-adapter skills/claude/route-map-template-adapter --agent github-copilot --scope user
```

## Use

Prompt Copilot CLI with:

```text
Use the /route-map-template-adapter skill with this project text and reference route-map image.
```
