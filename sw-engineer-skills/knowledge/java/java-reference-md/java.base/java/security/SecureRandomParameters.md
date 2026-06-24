Module [java.base](../../module-summary.md)

Package [java.security](package-summary.md)

# Interface SecureRandomParameters

All Known Implementing Classes:
:   `DrbgParameters.Instantiation`, `DrbgParameters.NextBytes`, `DrbgParameters.Reseed`

---

public interface SecureRandomParameters

A marker interface for parameters used in various `SecureRandom`
methods.

Some `SecureRandom` implementations might require additional
operational parameters. Objects of classes which implement this interface
can be passed to those implementations that support them.

Since:
:   9

See Also:
:   * [`DrbgParameters`](DrbgParameters.md "class in java.security")