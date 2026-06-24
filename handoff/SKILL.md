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
   - Run `git diff --cached --stat`.
   - Run `git diff --name-status`.
   - Run `git diff --cached --name-status`.
   - Detect committed branch work:
     - Run `git branch --show-current`.
     - Find the first available comparison base in this order:
       1. upstream branch from `git rev-parse --abbrev-ref --symbolic-full-name @{u}`
       2. `origin/main`
       3. `origin/master`
       4. local `main`
       5. local `master`
     - If a comparison base exists, run:
       - `git log --oneline <base>..HEAD`
       - `git diff --stat <base>...HEAD`
       - `git diff --name-status <base>...HEAD`
       - Inspect meaningful files changed by `<base>...HEAD`.
     - If no comparison base exists, state that branch-base inspection was unavailable and continue.
   - Inspect meaningful changed files.
   - Read existing `handoff.md` if present.
   - If this is not a git repository, the `git` commands will fail or print nothing — that is fine. Fall back to inspecting the working tree directly and the current session context.
3. Reconstruct the session state from:
   - current conversation context
   - changed files
   - uncommitted git diffs
   - committed branch diff and log, when available
   - existing docs
   - existing `handoff.md`, when present
   - TODO/FIXME comments if relevant
4. Write or update `handoff.md`.

## Branch diff rules

- Always separate committed branch work from uncommitted working-tree work.
- Use the detected comparison base only as context. Do not assume every branch commit happened in the current session unless conversation context or existing `handoff.md` supports that.
- Prefer `git diff <base>...HEAD` over `git diff <base>..HEAD` for branch summaries because it compares from the merge base.
- Record the comparison base used. If the base is missing or uncertain, say so explicitly.
- If `git fetch` would be needed to refresh remote refs, do not run it unless the user explicitly asked for network access; use available local refs and note that they may be stale.

## Existing `handoff.md` merge rules

When `handoff.md` already exists, merge in place instead of blindly appending or overwriting:

- Preserve still-relevant objective history, decisions, constraints, blockers, and implementation context.
- Reconcile prior open tasks:
  - move completed tasks to `Completed work`
  - keep still-open tasks in `Open tasks`
  - mark obsolete tasks as obsolete with a short reason, or remove them if they add no future value
  - keep blocked tasks in `Blockers / questions`
- Update stale status from current repository state and current session context.
- De-duplicate repeated commands, repeated file notes, and repeated history.
- Keep one current `handoff.md` file. Do not append a full new dated handoff unless the user asks for an archive-style log.
- If you cannot determine whether old content is still relevant, preserve it under `Important context / history memory` and mark the uncertainty.

## Required `handoff.md` structure

````md
# Handoff

## Current objective

What we are trying to accomplish.

## Session summary

Concise narrative of what happened in this session.

## Branch context

- Current branch:
- Comparison base:
- Committed branch changes:
- Uncommitted changes:

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
