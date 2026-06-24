#!/usr/bin/env bash
#
# handoff installer — wires the vendor-neutral handoff workflow into an AI
# coding agent by linking/copying this package's files into the locations the
# chosen vendor expects.
#
# Usage:
#   ./install.sh <vendor> [project-dir]
#
#   vendor       codex | claude | all
#   project-dir  target repository (default: current directory)
#
# Examples:
#   ./install.sh codex .              # install for Codex into the current repo
#   ./install.sh claude ~/code/app    # install for Claude Code into another repo
#   ./install.sh all                  # install for every supported vendor here
#
set -euo pipefail

PKG_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
VENDOR="${1:-}"
PROJECT_DIR="${2:-$(pwd)}"

usage() {
  sed -n '3,16p' "${BASH_SOURCE[0]}" | sed 's/^# \{0,1\}//'
}

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
  echo "Installing handoff for Codex into: $PROJECT_DIR"
  install_skill   "$PROJECT_DIR/.agents/skills"
  merge_protocol  "$PROJECT_DIR/AGENTS.md"
  # No command layer: Codex custom prompts are deprecated. Trigger via the
  # skill instead — $handoff or /skills.
}

install_claude() {
  echo "Installing handoff for Claude Code into: $PROJECT_DIR"
  install_skill   "$PROJECT_DIR/.claude/skills"
  merge_protocol  "$PROJECT_DIR/CLAUDE.md"
  install_command "$PROJECT_DIR/.claude/commands/handoff.md"   # -> /handoff
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
