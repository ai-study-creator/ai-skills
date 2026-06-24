Module [java.base](../../../module-summary.md)

Package [java.security.cert](package-summary.md)

# Interface CertPathBuilderResult

All Superinterfaces:
:   `Cloneable`

All Known Implementing Classes:
:   `PKIXCertPathBuilderResult`

---

public interface CertPathBuilderResult
extends [Cloneable](../../lang/Cloneable.md "interface in java.lang")

A specification of the result of a certification path builder algorithm.
All results returned by the [`CertPathBuilder.build`](CertPathBuilder.md#build(java.security.cert.CertPathParameters)) method must implement this interface.

At a minimum, a `CertPathBuilderResult` contains the
`CertPath` built by the `CertPathBuilder` instance.
Implementations of this interface may add methods to return implementation
or algorithm specific information, such as debugging information or
certification path validation results.

**Concurrent Access**

Unless otherwise specified, the methods defined in this interface are not
thread-safe. Multiple threads that need to access a single
object concurrently should synchronize amongst themselves and
provide the necessary locking. Multiple threads each manipulating
separate objects need not synchronize.

Since:
:   1.4

See Also:
:   * [`CertPathBuilder`](CertPathBuilder.md "class in java.security.cert")

* ## Method Summary

  All MethodsInstance MethodsAbstract Methods

  Modifier and Type

  Method

  Description

  `Object`

  `clone()`

  Makes a copy of this `CertPathBuilderResult`.

  `CertPath`

  `getCertPath()`

  Returns the built certification path.

* ## Method Details

  + ### getCertPath

    [CertPath](CertPath.md "class in java.security.cert") getCertPath()

    Returns the built certification path.

    Returns:
    :   the certification path (never `null`)
  + ### clone

    [Object](../../lang/Object.md "class in java.lang") clone()

    Makes a copy of this `CertPathBuilderResult`. Changes to the
    copy will not affect the original and vice versa.

    Returns:
    :   a copy of this `CertPathBuilderResult`