## Handoff protocol

When the user says `handoff`, `create handoff`, `generate handoff.md`, or invokes the handoff skill / `/handoff` command:

1. Inspect the current repository state:
   - `git status --short`
   - `git diff --stat`
   - `git diff --cached --stat`
   - relevant changed files
   - committed branch work, when available:
     - current branch
     - comparison base, chosen from upstream, `origin/main`, `origin/master`, local `main`, then local `master`
     - `git log --oneline <base>..HEAD`
     - `git diff --stat <base>...HEAD`
     - `git diff --name-status <base>...HEAD`
   - recently discussed implementation decisions from the current session

2. Create or update `handoff.md` at the repository root. If `handoff.md`
   already exists, merge it in place: preserve still-relevant decisions,
   history, constraints, blockers, and open tasks; update stale status from the
   current repository state; and de-duplicate repeated commands or notes.

3. The handoff must be clear enough for a new agent session or another engineer to continue without reading the full chat.

4. Do not invent completed work. Separate:
   - completed
   - partially completed
   - planned but not started
   - blocked / needs user decision

5. Do not include secrets, tokens, credentials, private keys, `.env` values, or sensitive logs.

6. Do not commit `handoff.md` unless explicitly asked.
