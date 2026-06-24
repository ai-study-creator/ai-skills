#!/usr/bin/env bash
set -euo pipefail

usage() {
  printf 'Usage: %s [--force] recipes/<skill-id>.yaml\n' "$0" >&2
}

force=false
if [ "${1:-}" = "--force" ]; then
  force=true
  shift
fi

recipe="${1:-}"
if [ -z "$recipe" ]; then
  usage
  exit 2
fi

if [ ! -f "$recipe" ]; then
  printf 'Recipe not found: %s\n' "$recipe" >&2
  exit 1
fi

repo_root="$(cd "$(dirname "$0")/.." && pwd)"

yaml_value() {
  local key="$1"
  awk -F': ' -v key="$key" '$1 == key {print substr($0, index($0, $2)); exit}' "$recipe"
}

yaml_modules() {
  awk '
    /^modules:/ {inside=1; next}
    /^[a-zA-Z_][a-zA-Z0-9_]*:/ {inside=0}
    inside && /^[[:space:]]*-[[:space:]]/ {
      value=$0
      sub(/^[[:space:]]*-[[:space:]]*/, "", value)
      print value
    }
  ' "$recipe"
}

skill_id="$(yaml_value id)"
skill_name="$(yaml_value name)"
description="$(yaml_value description)"
display_name="$(yaml_value display_name)"
short_description="$(yaml_value short_description)"
brand_color="$(yaml_value brand_color)"
default_prompt="$(yaml_value default_prompt)"

if [ -z "$skill_id" ] || [ -z "$skill_name" ] || [ -z "$description" ]; then
  printf 'Recipe must define id, name, and description: %s\n' "$recipe" >&2
  exit 1
fi

dest="$repo_root/skills/$skill_id"
if [ -e "$dest" ] && [ "$force" != "true" ]; then
  printf 'Skill already exists: %s\n' "$dest" >&2
  printf 'Use --force to regenerate it.\n' >&2
  exit 1
fi

if [ -e "$dest" ]; then
  rm -rf "$dest"
fi

mkdir -p "$dest/references/modules" "$dest/agents"

module_list=""
while IFS= read -r module_id; do
  [ -n "$module_id" ] || continue
  module_dir="$repo_root/modules/$module_id"
  if [ ! -d "$module_dir" ]; then
    printf 'Module not found: %s\n' "$module_id" >&2
    exit 1
  fi
  target="$dest/references/modules/$module_id"
  mkdir -p "$target"
  cp "$module_dir/module.yaml" "$target/"
  cp "$module_dir/index.md" "$target/"
  cp "$module_dir/source-map.md" "$target/"
  if [ -d "$module_dir/references" ]; then
    cp -R "$module_dir/references" "$target/"
  fi
  module_list="$module_list
- references/modules/$module_id/index.md"
done < <(yaml_modules)

cat > "$dest/SKILL.md" <<EOF
---
name: $skill_name
description: $description
---

# $display_name

Use this skill for production-grade JVM backend engineering in its declared scope.

## Operating Rules

- Read the repository first and follow local conventions.
- Load only the module references relevant to the task.
- Prefer small, testable changes over broad rewrites.
- Check correctness, performance, threading, IO, observability, and compatibility.
- Verify with targeted tests when possible.

## Module Routing

Load these module indexes as needed:
$module_list

## Decision Order

1. Identify the runtime, framework, and build constraints.
2. Load the smallest relevant module index.
3. Load only the topic reference needed for the task.
4. Implement or review using local project conventions.
5. Validate behavior with tests or a concrete check.
6. Summarize assumptions, risks, and verification.
EOF

cat > "$dest/agents/openai.yaml" <<EOF
interface:
  display_name: "$display_name"
  short_description: "$short_description"
  brand_color: $brand_color
  default_prompt: "$default_prompt"

policy:
  allow_implicit_invocation: true
EOF

printf 'Generated %s\n' "$dest"
