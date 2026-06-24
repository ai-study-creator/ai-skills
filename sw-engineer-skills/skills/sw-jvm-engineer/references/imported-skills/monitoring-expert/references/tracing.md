# Tracing

## Span discipline
- Create spans around meaningful boundaries, not every line of code.
- Add attributes that help debug the operation.
- Propagate context across async boundaries.

## Practical use
- Trace ingress and egress points.
- Record exceptions on failure.
- Keep sampling aligned with traffic and storage cost.
