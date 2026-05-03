# Gemini CLI

Gemini CLI supports Agent Skills.

Official discovery locations:

- User skills: `~/.gemini/skills/` or `~/.agents/skills/`
- Workspace skills: `.gemini/skills/` or `.agents/skills/`

Official terminal utilities include `gemini skills install <url-or-path>`, `gemini skills link <path>`, and `gemini skills uninstall <name>`. This repository keeps the skill under `skills/claude/route-map-template-adapter`, so the checked install path is the project script or GitHub CLI skill installer.

## Installer script

User scope:

```bash
tmp=$(mktemp -d) && git clone --depth 1 https://github.com/Shi1xin/route-map-template-adapter.git "$tmp" && "$tmp/scripts/install.sh" --global gemini; rm -rf "$tmp"
```

Workspace scope:

```bash
tmp=$(mktemp -d) && git clone --depth 1 https://github.com/Shi1xin/route-map-template-adapter.git "$tmp" && "$tmp/scripts/install.sh" --project /path/to/project gemini; rm -rf "$tmp"
```

## GitHub CLI skill installer

GitHub CLI 2.90.0+ supports Gemini CLI as a target agent:

```bash
gh skill install Shi1xin/route-map-template-adapter skills/claude/route-map-template-adapter --agent gemini-cli --scope user
```

## Use

After installation, ask Gemini CLI to use `route-map-template-adapter` with a project text file and a reference route-map image.

Second-stage rendering still goes through a draw.io skill or draw.io CLI workflow.
