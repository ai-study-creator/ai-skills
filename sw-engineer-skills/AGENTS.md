# Repository Guidance

## Purpose

This repository is a local knowledge base and skill factory for JVM backend engineering.
It contains raw technical references, curated reusable modules, and generated Codex skill
folders.

## Structure Rules

- Keep raw upstream-style references under `knowledge/`.
- Keep reusable distilled topic packs under `modules/`.
- Keep installable Codex skills under `skills/`.
- Keep skill composition definitions under `recipes/`.
- Do not place repo documentation inside skill folders. Skill folders should contain only
  `SKILL.md`, optional `agents/`, and bundled resources used by the skill.

## Editing Rules

- Do not rewrite or normalize raw files in `knowledge/` unless the task is explicitly about
  refreshing or repairing the source corpus.
- Prefer adding or updating a module before editing a generated skill directly.
- Generated skills should be self-contained; do not rely on relative paths back into
  `knowledge/` or `modules/`.
- When creating a new skill, define its recipe first, then generate or assemble the skill
  from modules.

## Adherence Model

- `source-complete`: raw or near-raw source material is included or directly mapped.
- `deep-operational`: enough detail to implement, debug, test, tune, and review production code.
- `practical`: covers common production tasks, APIs, tradeoffs, and failure modes.
- `overview`: routing/index knowledge only.

High-priority deep modules in this repository are Spring WebFlux, Java streams/functional
style, and Kotlin coroutines.
