# JPA and Data Access

## Core rules
- Prevent N+1 query patterns.
- Use transactions with clear boundaries.
- Prefer DTO projections for read-heavy paths.
- Do not rely on lazy loading outside a transaction.

## Query tuning
- Fetch only what the request needs.
- Make paging explicit.
- Review SQL shape before assuming the repository is correct.
