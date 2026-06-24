Module [java.base](../../../module-summary.md)

Package [java.security.cert](package-summary.md)

# Class CertStoreSpi

[java.lang.Object](../../lang/Object.md "class in java.lang")

java.security.cert.CertStoreSpi

---

public abstract class CertStoreSpi
extends [Object](../../lang/Object.md "class in java.lang")

The *Service Provider Interface* (**SPI**)
for the [`CertStore`](CertStore.md "class in java.security.cert") class. All `CertStore`
implementations must include a class (the SPI class) that extends
this class (`CertStoreSpi`), provides a constructor with
a single argument of type `CertStoreParameters`, and implements
all of its methods. In general, instances of this class should only be
accessed through the `CertStore` class.
For details, see the Java Cryptography Architecture.

**Concurrent Access**

The public methods of all `CertStoreSpi` objects must be
thread-safe. That is, multiple threads may concurrently invoke these
methods on a single `CertStoreSpi` object (or more than one)
with no ill effects. This allows a `CertPathBuilder` to search
for a CRL while simultaneously searching for further certificates, for
instance.

Simple `CertStoreSpi` implementations will probably ensure
thread safety by adding a `synchronized` keyword to their
`engineGetCertificates` and `engineGetCRLs` methods.
More sophisticated ones may allow truly concurrent access.

Since:
:   1.4

* ## Constructor Summary

  Constructors

  Constructor

  Description

  `CertStoreSpi(CertStoreParameters params)`

  The sole constructor.
* ## Method Summary

  All MethodsInstance MethodsAbstract Methods

  Modifier and Type

  Method

  Description

  `abstract Collection<? extends Certificate>`

  `engineGetCertificates(CertSelector selector)`

  Returns a `Collection` of `Certificate`s that
  match the specified selector.

  `abstract Collection<? extends CRL>`

  `engineGetCRLs(CRLSelector selector)`

  Returns a `Collection` of `CRL`s that
  match the specified selector.

  ### Methods inherited from class java.lang.[Object](../../lang/Object.md "class in java.lang")

  `clone, equals, finalize, getClass, hashCode, notify, notifyAll, toString, wait, wait, wait`

* ## Constructor Details

  + ### CertStoreSpi

    public CertStoreSpi([CertStoreParameters](CertStoreParameters.md "interface in java.security.cert") params)
    throws [InvalidAlgorithmParameterException](../InvalidAlgorithmParameterException.md "class in java.security")

    The sole constructor.

    Parameters:
    :   `params` - the initialization parameters (may be `null`)

    Throws:
    :   `InvalidAlgorithmParameterException` - if the initialization
        parameters are inappropriate for this `CertStoreSpi`
* ## Method Details

  + ### engineGetCertificates

    public abstract [Collection](../../util/Collection.md "interface in java.util")<? extends [Certificate](Certificate.md "class in java.security.cert")> engineGetCertificates([CertSelector](CertSelector.md "interface in java.security.cert") selector)
    throws [CertStoreException](CertStoreException.md "class in java.security.cert")

    Returns a `Collection` of `Certificate`s that
    match the specified selector. If no `Certificate`s
    match the selector, an empty `Collection` will be returned.

    For some `CertStore` types, the resulting
    `Collection` may not contain **all** of the
    `Certificate`s that match the selector. For instance,
    an LDAP `CertStore` may not search all entries in the
    directory. Instead, it may just search entries that are likely to
    contain the `Certificate`s it is looking for.

    Some `CertStore` implementations (especially LDAP
    `CertStore`s) may throw a `CertStoreException`
    unless a non-null `CertSelector` is provided that includes
    specific criteria that can be used to find the certificates. Issuer
    and/or subject names are especially useful criteria.

    Parameters:
    :   `selector` - A `CertSelector` used to select which
        `Certificate`s should be returned. Specify `null`
        to return all `Certificate`s (if supported).

    Returns:
    :   A `Collection` of `Certificate`s that
        match the specified selector (never `null`)

    Throws:
    :   `CertStoreException` - if an exception occurs
  + ### engineGetCRLs

    public abstract [Collection](../../util/Collection.md "interface in java.util")<? extends [CRL](CRL.md "class in java.security.cert")> engineGetCRLs([CRLSelector](CRLSelector.md "interface in java.security.cert") selector)
    throws [CertStoreException](CertStoreException.md "class in java.security.cert")

    Returns a `Collection` of `CRL`s that
    match the specified selector. If no `CRL`s
    match the selector, an empty `Collection` will be returned.

    For some `CertStore` types, the resulting
    `Collection` may not contain **all** of the
    `CRL`s that match the selector. For instance,
    an LDAP `CertStore` may not search all entries in the
    directory. Instead, it may just search entries that are likely to
    contain the `CRL`s it is looking for.

    Some `CertStore` implementations (especially LDAP
    `CertStore`s) may throw a `CertStoreException`
    unless a non-null `CRLSelector` is provided that includes
    specific criteria that can be used to find the CRLs. Issuer names
    and/or the certificate to be checked are especially useful.

    Parameters:
    :   `selector` - A `CRLSelector` used to select which
        `CRL`s should be returned. Specify `null`
        to return all `CRL`s (if supported).

    Returns:
    :   A `Collection` of `CRL`s that
        match the specified selector (never `null`)

    Throws:
    :   `CertStoreException` - if an exception occurs