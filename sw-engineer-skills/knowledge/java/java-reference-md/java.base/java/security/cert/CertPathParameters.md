Module [java.base](../../../module-summary.md)

Package [java.security.cert](package-summary.md)

# Interface CertPathParameters

All Superinterfaces:
:   `Cloneable`

All Known Implementing Classes:
:   `PKIXBuilderParameters`, `PKIXParameters`

---

public interface CertPathParameters
extends [Cloneable](../../lang/Cloneable.md "interface in java.lang")

A specification of certification path algorithm parameters.
The purpose of this interface is to group (and provide type safety for)
all `CertPath` parameter specifications. All
`CertPath` parameter specifications must implement this
interface.

Since:
:   1.4

See Also:
:   * [`CertPathValidator.validate(CertPath, CertPathParameters)`](CertPathValidator.md#validate(java.security.cert.CertPath,java.security.cert.CertPathParameters))
    * [`CertPathBuilder.build(CertPathParameters)`](CertPathBuilder.md#build(java.security.cert.CertPathParameters))

* ## Method Summary

  All MethodsInstance MethodsAbstract Methods

  Modifier and Type

  Method

  Description

  `Object`

  `clone()`

  Makes a copy of this `CertPathParameters`.

* ## Method Details

  + ### clone

    [Object](../../lang/Object.md "class in java.lang") clone()

    Makes a copy of this `CertPathParameters`. Changes to the
    copy will not affect the original and vice versa.

    Returns:
    :   a copy of this `CertPathParameters`