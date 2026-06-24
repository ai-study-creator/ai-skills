---
description: Generate or update handoff.md with the clearest session history memory.
argument-hint: [optional focus area]
---

Run the handoff workflow (see the `handoff` skill and the "Handoff protocol" section in the project memory file).

Generate or update `handoff.md` at the repository root.

Focus area, if provided: $ARGUMENTS

Requirements:
- Inspect git status and changed files.
- Summarize completed work, current state, decisions, commands run, validation, open tasks, blockers, and next prompt.
- Do not include secrets.
- Do not commit unless explicitly asked.
