#!/usr/bin/env bash
set -euo pipefail

repo_root="$(cd "$(dirname "$0")/.." && pwd)"

printf 'Modules\n'
printf '=======\n'

for module_yaml in "$repo_root"/modules/*/module.yaml; do
  module_dir="$(dirname "$module_yaml")"
  id="$(awk -F': ' '$1 == "id" {print $2; exit}' "$module_yaml")"
  target="$(awk -F': ' '$1 == "adherence_target" {print $2; exit}' "$module_yaml")"
  type="$(awk -F': ' '$1 == "adherence_type" {print $2; exit}' "$module_yaml")"
  refs="$(find "$module_dir/references" -type f 2>/dev/null | wc -l | tr -d ' ')"
  printf '%-28s target=%-4s type=%-18s references=%s\n' "$id" "$target" "$type" "$refs"
done

printf '\nSkills\n'
printf '======\n'

find "$repo_root/skills" -mindepth 2 -maxdepth 2 -name SKILL.md -print | sort
