# Testing

## Strategy
- Unit test pure logic.
- Use slice tests for controller and data wiring.
- Use integration tests for bootstrapping, config, and infra integration.

## Tools
- `@SpringBootTest`
- Testcontainers
- `@DynamicPropertySource`
- `MockMvc` or `WebTestClient`

## Rule
- Test the contract the service exposes, not the implementation detail you happen to know today.
