# Serialization and Validation

## Serialization
- Choose one serialization strategy and apply it consistently.
- Make request and response shapes explicit.
- Keep wire contracts stable.

## Validation
- Validate raw bodies or deserialized objects depending on the endpoint.
- Fail fast on bad input.
- Return a clear error shape when validation fails.

## Data conversion
- Centralize conversions for dates, IDs, enums, and domain wrappers.
- Keep parsing rules close to the boundary.
