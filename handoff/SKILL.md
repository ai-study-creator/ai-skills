---
name: handoff
description: Generate or update a repository handoff.md file that captures the current session history, decisions, modified files, next steps, blockers, and commands needed for another agent session or engineer to continue.
---

# Handoff Skill

Your task is to create or update `handoff.md` at the repository root.

## Goal

Produce the clearest possible "history memory" for this coding session so that a new agent session (Codex, Claude Code, Gemini, etc.), another engineer, or future me can continue the work safely.

## Required process

1. Read the active project memory file(s) — `AGENTS.md`, `CLAUDE.md`, `GEMINI.md` — and follow all repo instructions.
2. Inspect repository state:
   - Run `git status --short`.
   - Run `git diff --stat`.
   - Inspect meaningful changed files.
   - Read existing `handoff.md` if present.
   - If this is not a git repository, the `git` commands will fail or print nothing — that is fine. Fall back to inspecting the working tree directly and the current session context.
3. Reconstruct the session state from:
   - current conversation context
   - changed files
   - git diff
   - existing docs
   - TODO/FIXME comments if relevant
4. Write or update `handoff.md`.

## Required `handoff.md` structure

````md
# Handoff

## Current objective

What we are trying to accomplish.

## Session summary

Concise narrative of what happened in this session.

## Completed work

- Concrete completed items only.

## Files changed

| File | Status | Notes |
|---|---|---|

## Key decisions

- Decision:
  - Why:
  - Alternatives considered:

## Current implementation state

Explain how the code currently works.

## Important context / history memory

Capture details that are easy to lose between sessions:
- assumptions
- naming decisions
- architectural decisions
- user preferences
- constraints
- trade-offs
- rejected approaches

## Commands run

```bash
# command
# result summary
```

## Validation status

- Tests run:
- Lint/typecheck run:
- Manual checks:
- Not yet validated:

## Open tasks

1. Next action
2. Next action

## Blockers / questions

- Blocker:
- Needed decision:

## How to continue in the next session

Recommended first prompt:

```text
Read the project memory file (AGENTS.md / CLAUDE.md) and handoff.md. Continue from the "Open tasks" section. First inspect git status and verify the current implementation before editing.
```
````

## Quality rules

- Be specific.
- Prefer file paths, function names, class names, module names, and commands.
- Mark uncertainty explicitly.
- Do not claim tests passed unless they were actually run.
- Do not include secrets or credentials.
- Do not commit changes unless the user explicitly asks.
