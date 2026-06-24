Module [java.base](../../module-summary.md)

# Package java.math

---

package java.math

Provides classes for performing arbitrary-precision integer
arithmetic (`BigInteger`) and arbitrary-precision decimal
arithmetic (`BigDecimal`). `BigInteger` is analogous
to the primitive integer types except that it provides arbitrary
precision, hence operations on `BigInteger`s do not overflow
or lose precision. In addition to standard arithmetic operations,
`BigInteger` provides modular arithmetic, GCD calculation,
primality testing, prime generation, bit manipulation, and a few
other miscellaneous operations.
`BigDecimal` provides arbitrary-precision signed decimal
numbers suitable for currency calculations and the like. `BigDecimal` gives the user complete control over rounding behavior,
allowing the user to choose from a comprehensive set of eight
rounding modes.

Since:
:   1.1

* All Classes and InterfacesClassesEnum Classes

  Class

  Description

  [BigDecimal](BigDecimal.md "class in java.math")

  Immutable, arbitrary-precision signed decimal numbers.

  [BigInteger](BigInteger.md "class in java.math")

  Immutable arbitrary-precision integers.

  [MathContext](MathContext.md "class in java.math")

  Immutable objects which encapsulate the context settings which
  describe certain rules for numerical operators, such as those
  implemented by the [`BigDecimal`](BigDecimal.md "class in java.math") class.

  [RoundingMode](RoundingMode.md "enum class in java.math")

  Specifies a *rounding policy* for numerical operations capable
  of discarding precision.