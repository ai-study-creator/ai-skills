Module [java.base](../../../module-summary.md)

Package [java.security.cert](package-summary.md)

# Interface CertPathValidatorResult

All Superinterfaces:
:   `Cloneable`

All Known Implementing Classes:
:   `PKIXCertPathBuilderResult`, `PKIXCertPathValidatorResult`

---

public interface CertPathValidatorResult
extends [Cloneable](../../lang/Cloneable.md "interface in java.lang")

A specification of the result of a certification path validator algorithm.

The purpose of this interface is to group (and provide type safety
for) all certification path validator results. All results returned
by the [`CertPathValidator.validate`](CertPathValidator.md#validate(java.security.cert.CertPath,java.security.cert.CertPathParameters))
method must implement this interface.

Since:
:   1.4

See Also:
:   * [`CertPathValidator`](CertPathValidator.md "class in java.security.cert")

* ## Method Summary

  All MethodsInstance MethodsAbstract Methods

  Modifier and Type

  Method

  Description

  `Object`

  `clone()`

  Makes a copy of this `CertPathValidatorResult`.

* ## Method Details

  + ### clone

    [Object](../../lang/Object.md "class in java.lang") clone()

    Makes a copy of this `CertPathValidatorResult`. Changes to the
    copy will not affect the original and vice versa.

    Returns:
    :   a copy of this `CertPathValidatorResult`