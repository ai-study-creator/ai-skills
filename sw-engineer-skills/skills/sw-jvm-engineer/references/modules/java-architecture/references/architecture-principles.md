# Architecture Principles

## Defaults
- Prefer simple layering unless a stronger boundary is needed.
- Keep dependencies pointing inward.
- Make the domain rule obvious from the code structure.
- Do not create extra abstractions before they pay rent.

## Practical checks
- Can a new reader tell where a request enters, where business logic lives, and where data is persisted?
- Are boundaries enforced by type or package structure?
- Is the change local, or does it require a contract update?
