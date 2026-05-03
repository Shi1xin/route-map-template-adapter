#!/usr/bin/env bash
set -euo pipefail

usage() {
  printf '%s\n' "Usage:"
  printf '%s\n' "  tmp=\$(mktemp -d) && git clone --depth 1 https://github.com/Shi1xin/route-map-template-adapter.git \"\$tmp\" && \"\$tmp/scripts/install.sh\" --global codex; rm -rf \"\$tmp\""
  printf '%s\n' "  tmp=\$(mktemp -d) && git clone --depth 1 https://github.com/Shi1xin/route-map-template-adapter.git \"\$tmp\" && \"\$tmp/scripts/install.sh\" --project /path/to/project codex; rm -rf \"\$tmp\""
  printf '%s\n' "  tmp=\$(mktemp -d) && git clone --depth 1 https://github.com/Shi1xin/route-map-template-adapter.git \"\$tmp\" && \"\$tmp/scripts/install.sh\" --global claude; rm -rf \"\$tmp\""
  printf '%s\n' "  tmp=\$(mktemp -d) && git clone --depth 1 https://github.com/Shi1xin/route-map-template-adapter.git \"\$tmp\" && \"\$tmp/scripts/install.sh\" --project /path/to/project claude; rm -rf \"\$tmp\""
  printf '%s\n' "  tmp=\$(mktemp -d) && git clone --depth 1 https://github.com/Shi1xin/route-map-template-adapter.git \"\$tmp\" && \"\$tmp/scripts/install.sh\" --global gemini; rm -rf \"\$tmp\""
  printf '%s\n' "  tmp=\$(mktemp -d) && git clone --depth 1 https://github.com/Shi1xin/route-map-template-adapter.git \"\$tmp\" && \"\$tmp/scripts/install.sh\" --project /path/to/project gemini; rm -rf \"\$tmp\""
  printf '%s\n' "  tmp=\$(mktemp -d) && git clone --depth 1 https://github.com/Shi1xin/route-map-template-adapter.git \"\$tmp\" && \"\$tmp/scripts/install.sh\" --global copilot; rm -rf \"\$tmp\""
  printf '%s\n' "  tmp=\$(mktemp -d) && git clone --depth 1 https://github.com/Shi1xin/route-map-template-adapter.git \"\$tmp\" && \"\$tmp/scripts/install.sh\" --project /path/to/project copilot; rm -rf \"\$tmp\""
  printf '%s\n' "  tmp=\$(mktemp -d) && git clone --depth 1 https://github.com/Shi1xin/route-map-template-adapter.git \"\$tmp\" && \"\$tmp/scripts/install.sh\" --global opencode; rm -rf \"\$tmp\""
  printf '%s\n' "  tmp=\$(mktemp -d) && git clone --depth 1 https://github.com/Shi1xin/route-map-template-adapter.git \"\$tmp\" && \"\$tmp/scripts/install.sh\" --project /path/to/project opencode; rm -rf \"\$tmp\""
}

REPO_URL="${ROUTE_MAP_TEMPLATE_ADAPTER_REPO:-https://github.com/Shi1xin/route-map-template-adapter.git}"
SCRIPT_PATH="${BASH_SOURCE[0]:-}"
if [[ -n "$SCRIPT_PATH" ]]; then
  ROOT="$(cd "$(dirname "$SCRIPT_PATH")/.." 2>/dev/null && pwd || pwd)"
else
  ROOT="$(pwd)"
fi
TMP_ROOT=""

cleanup() {
  if [[ -n "$TMP_ROOT" && -d "$TMP_ROOT" ]]; then
    rm -rf "$TMP_ROOT"
  fi
}
trap cleanup EXIT

if [[ ! -d "$ROOT/skills/codex/route-map-template-adapter" || ! -d "$ROOT/skills/claude/route-map-template-adapter" ]]; then
  if ! command -v git >/dev/null 2>&1; then
    printf '%s\n' "git is required for remote install."
    exit 1
  fi
  TMP_ROOT="$(mktemp -d)"
  git clone --depth 1 "$REPO_URL" "$TMP_ROOT" >/dev/null
  ROOT="$TMP_ROOT"
fi

MODE="${1:-}"
TARGET="${2:-}"
AGENT="${3:-}"

if [[ "$MODE" == "--global" ]]; then
  AGENT="$TARGET"
  if [[ "$AGENT" == "codex" ]]; then
    DEST="${CODEX_HOME:-$HOME/.codex}/skills"
    SRC="$ROOT/skills/codex/route-map-template-adapter"
  elif [[ "$AGENT" == "claude" ]]; then
    DEST="$HOME/.claude/skills"
    SRC="$ROOT/skills/claude/route-map-template-adapter"
  elif [[ "$AGENT" == "gemini" ]]; then
    DEST="$HOME/.gemini/skills"
    SRC="$ROOT/skills/claude/route-map-template-adapter"
  elif [[ "$AGENT" == "copilot" ]]; then
    DEST="$HOME/.copilot/skills"
    SRC="$ROOT/skills/claude/route-map-template-adapter"
  elif [[ "$AGENT" == "opencode" ]]; then
    DEST="$HOME/.config/opencode/skill"
    SRC="$ROOT/skills/claude/route-map-template-adapter"
  else
    usage
    exit 1
  fi
elif [[ "$MODE" == "--project" ]]; then
  PROJECT="$TARGET"
  if [[ -z "$PROJECT" || -z "$AGENT" ]]; then
    usage
    exit 1
  fi
  if [[ "$AGENT" == "codex" ]]; then
    DEST="$PROJECT/.codex/skills"
    SRC="$ROOT/skills/codex/route-map-template-adapter"
  elif [[ "$AGENT" == "claude" ]]; then
    DEST="$PROJECT/.claude/skills"
    SRC="$ROOT/skills/claude/route-map-template-adapter"
  elif [[ "$AGENT" == "gemini" ]]; then
    DEST="$PROJECT/.gemini/skills"
    SRC="$ROOT/skills/claude/route-map-template-adapter"
  elif [[ "$AGENT" == "copilot" ]]; then
    DEST="$PROJECT/.github/skills"
    SRC="$ROOT/skills/claude/route-map-template-adapter"
  elif [[ "$AGENT" == "opencode" ]]; then
    DEST="$PROJECT/.opencode/skill"
    SRC="$ROOT/skills/claude/route-map-template-adapter"
  else
    usage
    exit 1
  fi
else
  usage
  exit 1
fi

mkdir -p "$DEST"
rm -rf "$DEST/route-map-template-adapter"
cp -R "$SRC" "$DEST/"

printf 'Installed route-map-template-adapter to %s\n' "$DEST/route-map-template-adapter"
