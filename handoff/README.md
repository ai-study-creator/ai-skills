# handoff

> A portable **"session memory"** workflow for AI coding agents.

`handoff` makes one command — `handoff` — produce or update a `handoff.md` file
at your repository root that captures everything a *new* agent session or another
engineer needs to continue your work **without reading the full chat**: the
objective, what got done, files changed, key decisions, open tasks, blockers, and
the exact prompt to resume with.

It is **vendor-neutral**: the same package installs into Codex (OpenAI), Claude
Code (Anthropic), and any other agent that reads an `AGENTS.md`-style memory file.

---

## Why

Long agent sessions accumulate context (decisions, dead ends, naming choices,
constraints) that is lost the moment the session ends or the context window is
compacted. `handoff` snapshots that context into a durable, structured file so
the next session starts informed instead of blind.

---

## How it works — 3 layers

| Layer | File in this package | Installed as | Purpose |
|---|---|---|---|
| **1. Protocol rule** | [`protocol.md`](protocol.md) | merged into `AGENTS.md` / `CLAUDE.md` | Durable repo rule: defines what "handoff" means and its guardrails. Always in context. |
| **2. Skill** | [`SKILL.md`](SKILL.md) | `.../skills/handoff/SKILL.md` | The reusable workflow + the exact `handoff.md` template. Invoked as `$handoff` or `/skills`. |
| **3. Command** | [`command.md`](command.md) | vendor command dir | A first-class slash command (Claude Code: `/handoff`) that triggers the workflow. |

You don't need all three — the skill alone works — but together they make
`handoff` reliable however you trigger it.

> **Codex note:** Codex custom prompts (`/prompts:…`) are **deprecated by OpenAI
> in favor of skills**, so the package does **not** install a command layer for
> Codex. Trigger handoff there with the skill directly — `$handoff` or `/skills`.
> Layer 3 applies to vendors where slash commands are first-class (e.g. Claude Code).

---

## Vendor support

| Vendor | Memory file | Skill location | Command |
|---|---|---|---|
| **Codex** (OpenAI) | `AGENTS.md` | `.agents/skills/handoff/SKILL.md` | `$handoff` or `/skills` (skill is the trigger) |
| **Claude Code** (Anthropic) | `CLAUDE.md` | `.claude/skills/handoff/SKILL.md` | `.claude/commands/handoff.md` → `/handoff` |
| **Any other** (Gemini, Cursor, …) | `AGENTS.md` / `GEMINI.md` | n/a | paste `protocol.md` into the memory file; say `handoff` |

The skill and protocol use the shared `SKILL.md` + `AGENTS.md` conventions, so
nothing here is locked to a single vendor.

---

## Package contents

```
handoff/
├── README.md      # this file
├── SKILL.md       # the handoff skill (workflow + handoff.md template)
├── protocol.md    # the protocol rule, merged into your memory file
├── command.md     # the slash-command / custom-prompt body
└── install.sh     # wires the above into a chosen vendor
```

---

## Quick install

From inside the repo you want handoff in:

```bash
# pick one
/path/to/handoff/install.sh codex .     # Codex
/path/to/handoff/install.sh claude .    # Claude Code
/path/to/handoff/install.sh all .       # both
```

`install.sh <vendor> [project-dir]` symlinks the skill, appends the protocol to
the memory file (idempotent — skips if already present), and copies the command.
Restart the agent (or run `/skills`) afterward.

---

## Manual setup

Prefer to wire it by hand? `HANDOFF` below is the path to this package.

### Codex (OpenAI)

```bash
HANDOFF=/path/to/handoff

# 1. Skill
mkdir -p .agents/skills/handoff
ln -sf "$HANDOFF/SKILL.md" .agents/skills/handoff/SKILL.md

# 2. Protocol rule (append to repo memory file)
printf '\n' >> AGENTS.md && cat "$HANDOFF/protocol.md" >> AGENTS.md
```

Trigger it in Codex with `$handoff` or `/skills`. (Codex custom prompts are
deprecated, so there is no command layer to install.)

### Claude Code (Anthropic)

```bash
HANDOFF=/path/to/handoff

# 1. Skill
mkdir -p .claude/skills/handoff
ln -sf "$HANDOFF/SKILL.md" .claude/skills/handoff/SKILL.md

# 2. Protocol rule (append to repo memory file)
printf '\n' >> CLAUDE.md && cat "$HANDOFF/protocol.md" >> CLAUDE.md

# 3. Slash command  ->  /handoff
mkdir -p .claude/commands
cp "$HANDOFF/command.md" .claude/commands/handoff.md
```

### Any other vendor (generic)

Most agents read an `AGENTS.md` (or `GEMINI.md`). That alone is enough:

```bash
HANDOFF=/path/to/handoff
printf '\n' >> AGENTS.md && cat "$HANDOFF/protocol.md" >> AGENTS.md
```

Then just tell the agent `handoff`. If your agent supports skills, drop
`SKILL.md` into its skills directory too.

---

## Usage

Trigger it however your vendor exposes it:

```text
handoff             # plain language — any vendor
```
```text
$handoff            # Codex (skill) — or /skills
```
```text
/handoff            # Claude Code (slash command)
```

The agent inspects `git status` / `git diff`, reconstructs the session, and
writes/updates `handoff.md`. **Start your next session with:**

```text
Read the project memory file and handoff.md. Continue from the "Open tasks"
section, but first verify git status and inspect the changed files before editing.
```

---

## Optional: terminal shortcut

Run a handoff from any shell without an interactive session. Add to `~/.bashrc`
(or `~/.zshrc`):

```bash
# Codex
codex-handoff() {
  codex exec --cd "${1:-.}" --sandbox workspace-write --ask-for-approval on-request \
    'Run the handoff skill. Generate or update handoff.md at the repository root. Inspect git status, diffs, changed files, and the current session context. Do not commit.'
}

# Claude Code
claude-handoff() {
  ( cd "${1:-.}" && claude -p 'Run the handoff skill. Generate or update handoff.md at the repository root. Inspect git status, diffs, changed files, and the current session context. Do not commit.' )
}
```

Usage: `codex-handoff` / `claude-handoff` (optionally pass a repo path).

---

## Notes

- The `git` commands degrade gracefully — if the target isn't a git repo, the
  skill falls back to inspecting the working tree and session context.
- `handoff.md` is **not committed** unless you explicitly ask.
- Secrets, tokens, `.env` values, and sensitive logs are **never** written into
  `handoff.md`.
