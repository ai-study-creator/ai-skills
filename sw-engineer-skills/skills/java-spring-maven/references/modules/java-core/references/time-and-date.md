# Time and Date

## Use `java.time`
- Prefer `Instant`, `LocalDate`, `LocalDateTime`, `ZonedDateTime`, and `Duration`.
- Avoid legacy date APIs in new code.
- Keep zone handling explicit.

## Formatting and parsing
- Use `DateTimeFormatter` instead of ad hoc parsing.
- Choose locale-aware formatting when output is user-facing.
- Keep ISO-based formats for machine interfaces.

## Semantics
- `Instant` is a point in time.
- Local date/time types do not carry zone meaning by themselves.
- Time zone conversions can change the wall-clock representation.

## Pitfalls
- Mixing local and UTC semantics
- Assuming a day is always 24 hours
- Serializing ambiguous date-time values without a zone strategy
