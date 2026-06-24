# Functions and Classes

## Functions
- Keep functions focused on a single job.
- Use trailing lambdas when they improve readability.
- Prefer local helpers over large anonymous logic blocks.

## Classes
- Model state and behavior clearly.
- Use constructors to establish invariants.
- Prefer properties over trivial getters and setters.

## Lambdas and higher-order functions
- Use them where they simplify orchestration.
- Be aware of unused results in higher-order APIs.
- Keep captures limited in hot paths.

## Delegation and access
- Use delegation when it improves clarity, not just to avoid typing.
- Keep member functions close to the data they operate on.
