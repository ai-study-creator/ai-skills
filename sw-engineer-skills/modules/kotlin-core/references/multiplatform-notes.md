# Multiplatform Notes

## Use when relevant
- The project targets JVM plus other platforms.
- Shared code needs stable abstractions and minimal platform leakage.

## Rules
- Separate common logic from platform-specific edges.
- Keep platform APIs behind clear interfaces.
- Avoid overcommitting shared code to one runtime's constraints.
