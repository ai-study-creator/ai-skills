Module [java.base](../../../module-summary.md)

Package [java.security.cert](package-summary.md)

# Class CollectionCertStoreParameters

[java.lang.Object](../../lang/Object.md "class in java.lang")

java.security.cert.CollectionCertStoreParameters

All Implemented Interfaces:
:   `Cloneable`, `CertStoreParameters`

---

public class CollectionCertStoreParameters
extends [Object](../../lang/Object.md "class in java.lang")
implements [CertStoreParameters](CertStoreParameters.md "interface in java.security.cert")

Parameters used as input for the Collection `CertStore`
algorithm.

This class is used to provide necessary configuration parameters
to implementations of the Collection `CertStore`
algorithm. The only parameter included in this class is the
`Collection` from which the `CertStore` will
retrieve certificates and CRLs.

**Concurrent Access**

Unless otherwise specified, the methods defined in this class are not
thread-safe. Multiple threads that need to access a single
object concurrently should synchronize amongst themselves and
provide the necessary locking. Multiple threads each manipulating
separate objects need not synchronize.

Since:
:   1.4

See Also:
:   * [`Collection`](../../util/Collection.md "interface in java.util")
    * [`CertStore`](CertStore.md "class in java.security.cert")

* ## Constructor Summary

  Constructors

  Constructor

  Description

  `CollectionCertStoreParameters()`

  Creates an instance of `CollectionCertStoreParameters` with
  the default parameter values (an empty and immutable
  `Collection`).

  `CollectionCertStoreParameters(Collection<?> collection)`

  Creates an instance of `CollectionCertStoreParameters`
  which will allow certificates and CRLs to be retrieved from the
  specified `Collection`.
* ## Method Summary

  All MethodsInstance MethodsConcrete Methods

  Modifier and Type

  Method

  Description

  `Object`

  `clone()`

  Returns a copy of this object.

  `Collection<?>`

  `getCollection()`

  Returns the `Collection` from which `Certificate`s
  and `CRL`s are retrieved.

  `String`

  `toString()`

  Returns a formatted string describing the parameters.

  ### Methods inherited from class java.lang.[Object](../../lang/Object.md "class in java.lang")

  `equals, finalize, getClass, hashCode, notify, notifyAll, wait, wait, wait`

* ## Constructor Details

  + ### CollectionCertStoreParameters

    public CollectionCertStoreParameters([Collection](../../util/Collection.md "interface in java.util")<?> collection)

    Creates an instance of `CollectionCertStoreParameters`
    which will allow certificates and CRLs to be retrieved from the
    specified `Collection`. If the specified
    `Collection` contains an object that is not a
    `Certificate` or `CRL`, that object will be
    ignored by the Collection `CertStore`.

    The `Collection` is **not** copied. Instead, a
    reference is used. This allows the caller to subsequently add or
    remove `Certificates` or `CRL`s from the
    `Collection`, thus changing the set of
    `Certificates` or `CRL`s available to the
    Collection `CertStore`. The Collection `CertStore`
    will not modify the contents of the `Collection`.

    If the `Collection` will be modified by one thread while
    another thread is calling a method of a Collection `CertStore`
    that has been initialized with this `Collection`, the
    `Collection` must have fail-fast iterators.

    Parameters:
    :   `collection` - a `Collection` of
        `Certificate`s and `CRL`s

    Throws:
    :   `NullPointerException` - if `collection` is
        `null`
  + ### CollectionCertStoreParameters

    public CollectionCertStoreParameters()

    Creates an instance of `CollectionCertStoreParameters` with
    the default parameter values (an empty and immutable
    `Collection`).
* ## Method Details

  + ### getCollection

    public [Collection](../../util/Collection.md "interface in java.util")<?> getCollection()

    Returns the `Collection` from which `Certificate`s
    and `CRL`s are retrieved. This is **not** a copy of the
    `Collection`, it is a reference. This allows the caller to
    subsequently add or remove `Certificates` or
    `CRL`s from the `Collection`.

    Returns:
    :   the `Collection` (never null)
  + ### clone

    public [Object](../../lang/Object.md "class in java.lang") clone()

    Returns a copy of this object. Note that only a reference to the
    `Collection` is copied, and not the contents.

    Specified by:
    :   `clone` in interface `CertStoreParameters`

    Overrides:
    :   `clone` in class `Object`

    Returns:
    :   the copy

    See Also:
    :   - [`Cloneable`](../../lang/Cloneable.md "interface in java.lang")
  + ### toString

    public [String](../../lang/String.md "class in java.lang") toString()

    Returns a formatted string describing the parameters.

    Overrides:
    :   `toString` in class `Object`

    Returns:
    :   a formatted string describing the parameters