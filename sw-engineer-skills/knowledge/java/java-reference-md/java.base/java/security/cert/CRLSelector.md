Module [java.base](../../../module-summary.md)

Package [java.security.cert](package-summary.md)

# Interface CRLSelector

All Superinterfaces:
:   `Cloneable`

All Known Implementing Classes:
:   `X509CRLSelector`

---

public interface CRLSelector
extends [Cloneable](../../lang/Cloneable.md "interface in java.lang")

A selector that defines a set of criteria for selecting `CRL`s.
Classes that implement this interface are often used to specify
which `CRL`s should be retrieved from a `CertStore`.

**Concurrent Access**

Unless otherwise specified, the methods defined in this interface are not
thread-safe. Multiple threads that need to access a single
object concurrently should synchronize amongst themselves and
provide the necessary locking. Multiple threads each manipulating
separate objects need not synchronize.

Since:
:   1.4

See Also:
:   * [`CRL`](CRL.md "class in java.security.cert")
    * [`CertStore`](CertStore.md "class in java.security.cert")
    * [`CertStore.getCRLs(java.security.cert.CRLSelector)`](CertStore.md#getCRLs(java.security.cert.CRLSelector))

* ## Method Summary

  All MethodsInstance MethodsAbstract Methods

  Modifier and Type

  Method

  Description

  `Object`

  `clone()`

  Makes a copy of this `CRLSelector`.

  `boolean`

  `match(CRL crl)`

  Decides whether a `CRL` should be selected.

* ## Method Details

  + ### match

    boolean match([CRL](CRL.md "class in java.security.cert") crl)

    Decides whether a `CRL` should be selected.

    Parameters:
    :   `crl` - the `CRL` to be checked

    Returns:
    :   `true` if the `CRL` should be selected,
        `false` otherwise
  + ### clone

    [Object](../../lang/Object.md "class in java.lang") clone()

    Makes a copy of this `CRLSelector`. Changes to the
    copy will not affect the original and vice versa.

    Returns:
    :   a copy of this `CRLSelector`