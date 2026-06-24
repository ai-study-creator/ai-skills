# Compatibility and Migrations

## What this covers
- deprecated targets and options
- removal of old language or compiler settings
- migration guides between Kotlin releases
- Gradle plugin API changes

## Working rules
- Check release notes before upgrading.
- Expect migration pain in build tooling before language features.
- Prefer a small upgrade step when the corpus shows version-specific breaking changes.

## Practical note
- Treat compiler and plugin upgrades as code changes with test impact, not as dependency pin updates.
