Module [java.base](../../../module-summary.md)

Package [java.security.cert](package-summary.md)

# Interface CertSelector

All Superinterfaces:
:   `Cloneable`

All Known Implementing Classes:
:   `X509CertSelector`

---

public interface CertSelector
extends [Cloneable](../../lang/Cloneable.md "interface in java.lang")

A selector that defines a set of criteria for selecting
`Certificate`s. Classes that implement this interface
are often used to specify which `Certificate`s should
be retrieved from a `CertStore`.

**Concurrent Access**

Unless otherwise specified, the methods defined in this interface are not
thread-safe. Multiple threads that need to access a single
object concurrently should synchronize amongst themselves and
provide the necessary locking. Multiple threads each manipulating
separate objects need not synchronize.

Since:
:   1.4

See Also:
:   * [`Certificate`](Certificate.md "class in java.security.cert")
    * [`CertStore`](CertStore.md "class in java.security.cert")
    * [`CertStore.getCertificates(java.security.cert.CertSelector)`](CertStore.md#getCertificates(java.security.cert.CertSelector))

* ## Method Summary

  All MethodsInstance MethodsAbstract Methods

  Modifier and Type

  Method

  Description

  `Object`

  `clone()`

  Makes a copy of this `CertSelector`.

  `boolean`

  `match(Certificate cert)`

  Decides whether a `Certificate` should be selected.

* ## Method Details

  + ### match

    boolean match([Certificate](Certificate.md "class in java.security.cert") cert)

    Decides whether a `Certificate` should be selected.

    Parameters:
    :   `cert` - the `Certificate` to be checked

    Returns:
    :   `true` if the `Certificate`
        should be selected, `false` otherwise
  + ### clone

    [Object](../../lang/Object.md "class in java.lang") clone()

    Makes a copy of this `CertSelector`. Changes to the
    copy will not affect the original and vice versa.

    Returns:
    :   a copy of this `CertSelector`