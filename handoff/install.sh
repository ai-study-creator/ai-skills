#!/usr/bin/env bash
#
# handoff installer — wires the vendor-neutral handoff workflow into an AI
# coding agent by linking/copying this package's files into the locations the
# chosen vendor expects.
#
# Usage:
#   ./install.sh <vendor> [--project <project-dir>]
#
#   vendor       codex | claude | all
#   --project    install into one repository instead of user-level config
#
# Examples:
#   ./install.sh codex                       # install for Codex user-wide
#   ./install.sh claude                      # install for Claude Code user-wide
#   ./install.sh all                         # install both user-wide
#   ./install.sh codex --project .           # install Codex into this repo
#   ./install.sh claude --project ~/code/app # install Claude into one repo
#
set -euo pipefail

PKG_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"

usage() {
  sed -n '3,18p' "${BASH_SOURCE[0]}" | sed 's/^# \{0,1\}//'
}

VENDOR="${1:-}"
PROJECT_DIR=""

if [ -n "$VENDOR" ]; then
  shift
fi

while [ "$#" -gt 0 ]; do
  case "$1" in
    --project)
      if [ "$#" -lt 2 ]; then
        echo "Missing value for --project" >&2
        exit 1
      fi
      PROJECT_DIR="$2"
      shift 2
      ;;
    -h|--help|help)
      VENDOR="$1"
      shift
      ;;
    *)
      echo "Unknown argument: '$1'" >&2
      echo >&2
      usage >&2
      exit 1
      ;;
  esac
done

install_skill() { # $1 = skills base dir
  local base="$1"
  mkdir -p "$base/handoff"
  ln -sf "$PKG_DIR/SKILL.md" "$base/handoff/SKILL.md"
  echo "  skill    -> $base/handoff/SKILL.md"
}

merge_protocol() { # $1 = memory file path
  local mem="$1"
  if [ -f "$mem" ] && grep -q "## Handoff protocol" "$mem"; then
    echo "  memory   -> $mem (handoff protocol already present, skipped)"
    return
  fi
  mkdir -p "$(dirname "$mem")"
  [ -f "$mem" ] && printf '\n' >> "$mem"
  cat "$PKG_DIR/protocol.md" >> "$mem"
  echo "  memory   -> $mem (appended handoff protocol)"
}

install_command() { # $1 = destination file
  local dest="$1"
  mkdir -p "$(dirname "$dest")"
  cp "$PKG_DIR/command.md" "$dest"
  echo "  command  -> $dest"
}

install_codex() {
  if [ -n "$PROJECT_DIR" ]; then
    echo "Installing handoff for Codex into project: $PROJECT_DIR"
    install_skill   "$PROJECT_DIR/.agents/skills"
    merge_protocol  "$PROJECT_DIR/AGENTS.md"
    return
  fi

  local root="${CODEX_HOME:-$HOME/.codex}"
  echo "Installing handoff for Codex user-wide into: $root"
  install_skill   "$root/skills"
  merge_protocol  "$root/AGENTS.md"
  # No command layer: Codex custom prompts are deprecated. Trigger via the
  # skill instead — $handoff or /skills.
}

install_claude() {
  if [ -n "$PROJECT_DIR" ]; then
    echo "Installing handoff for Claude Code into project: $PROJECT_DIR"
    install_skill   "$PROJECT_DIR/.claude/skills"
    merge_protocol  "$PROJECT_DIR/CLAUDE.md"
    install_command "$PROJECT_DIR/.claude/commands/handoff.md"   # -> /handoff
    return
  fi

  local root="${CLAUDE_HOME:-$HOME/.claude}"
  echo "Installing handoff for Claude Code user-wide into: $root"
  install_skill   "$root/skills"
  merge_protocol  "$root/CLAUDE.md"
  install_command "$root/commands/handoff.md"   # -> /handoff
}

case "$VENDOR" in
  codex)  install_codex ;;
  claude) install_claude ;;
  all)    install_codex; echo; install_claude ;;
  ""|-h|--help|help) usage; exit 0 ;;
  *) echo "Unknown vendor: '$VENDOR'" >&2; echo >&2; usage; exit 1 ;;
esac

echo
echo "Done. Restart your agent (or run /skills) so it picks up the new files."
