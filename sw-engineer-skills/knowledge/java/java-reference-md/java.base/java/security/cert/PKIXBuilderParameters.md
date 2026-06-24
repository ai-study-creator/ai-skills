Module [java.base](../../../module-summary.md)

Package [java.security.cert](package-summary.md)

# Class PKIXBuilderParameters

[java.lang.Object](../../lang/Object.md "class in java.lang")

[java.security.cert.PKIXParameters](PKIXParameters.md "class in java.security.cert")

java.security.cert.PKIXBuilderParameters

All Implemented Interfaces:
:   `Cloneable`, `CertPathParameters`

---

public class PKIXBuilderParameters
extends [PKIXParameters](PKIXParameters.md "class in java.security.cert")

Parameters used as input for the PKIX `CertPathBuilder`
algorithm.

A PKIX `CertPathBuilder` uses these parameters to [`build`](CertPathBuilder.md#build(java.security.cert.CertPathParameters)) a `CertPath` which has been
validated according to the PKIX certification path validation algorithm.

To instantiate a `PKIXBuilderParameters` object, an
application must specify one or more *most-trusted CAs* as defined by
the PKIX certification path validation algorithm. The most-trusted CA
can be specified using one of two constructors. An application
can call [`PKIXBuilderParameters(Set, CertSelector)`](#%3Cinit%3E(java.util.Set,java.security.cert.CertSelector)), specifying a
`Set` of `TrustAnchor` objects, each of which
identifies a most-trusted CA. Alternatively, an application can call
[`PKIXBuilderParameters(KeyStore, CertSelector)`](#%3Cinit%3E(java.security.KeyStore,java.security.cert.CertSelector)), specifying a
`KeyStore` instance containing trusted certificate entries, each
of which will be considered as a most-trusted CA.

In addition, an application must specify constraints on the target
certificate that the `CertPathBuilder` will attempt
to build a path to. The constraints are specified as a
`CertSelector` object. These constraints should provide the
`CertPathBuilder` with enough search criteria to find the target
certificate. Minimal criteria for an `X509Certificate` usually
include the subject name and/or one or more subject alternative names.
If enough criteria is not specified, the `CertPathBuilder`
may throw a `CertPathBuilderException`.

**Concurrent Access**

Unless otherwise specified, the methods defined in this class are not
thread-safe. Multiple threads that need to access a single
object concurrently should synchronize amongst themselves and
provide the necessary locking. Multiple threads each manipulating
separate objects need not synchronize.

Since:
:   1.4

See Also:
:   * [`CertPathBuilder`](CertPathBuilder.md "class in java.security.cert")

* ## Constructor Summary

  Constructors

  Constructor

  Description

  `PKIXBuilderParameters(KeyStore keystore,
  CertSelector targetConstraints)`

  Creates an instance of `PKIXBuilderParameters` that
  populates the set of most-trusted CAs from the trusted
  certificate entries contained in the specified `KeyStore`.

  `PKIXBuilderParameters(Set<TrustAnchor> trustAnchors,
  CertSelector targetConstraints)`

  Creates an instance of `PKIXBuilderParameters` with
  the specified `Set` of most-trusted CAs.
* ## Method Summary

  All MethodsInstance MethodsConcrete Methods

  Modifier and Type

  Method

  Description

  `int`

  `getMaxPathLength()`

  Returns the value of the maximum number of intermediate non-self-issued
  certificates that may exist in a certification path.

  `void`

  `setMaxPathLength(int maxPathLength)`

  Sets the value of the maximum number of non-self-issued intermediate
  certificates that may exist in a certification path.

  `String`

  `toString()`

  Returns a formatted string describing the parameters.

  ### Methods inherited from class java.security.cert.[PKIXParameters](PKIXParameters.md "class in java.security.cert")

  `addCertPathChecker, addCertStore, clone, getCertPathCheckers, getCertStores, getDate, getInitialPolicies, getPolicyQualifiersRejected, getSigProvider, getTargetCertConstraints, getTrustAnchors, isAnyPolicyInhibited, isExplicitPolicyRequired, isPolicyMappingInhibited, isRevocationEnabled, setAnyPolicyInhibited, setCertPathCheckers, setCertStores, setDate, setExplicitPolicyRequired, setInitialPolicies, setPolicyMappingInhibited, setPolicyQualifiersRejected, setRevocationEnabled, setSigProvider, setTargetCertConstraints, setTrustAnchors`

  ### Methods inherited from class java.lang.[Object](../../lang/Object.md "class in java.lang")

  `equals, finalize, getClass, hashCode, notify, notifyAll, wait, wait, wait`

* ## Constructor Details

  + ### PKIXBuilderParameters

    public PKIXBuilderParameters([Set](../../util/Set.md "interface in java.util")<[TrustAnchor](TrustAnchor.md "class in java.security.cert")> trustAnchors,
    [CertSelector](CertSelector.md "interface in java.security.cert") targetConstraints)
    throws [InvalidAlgorithmParameterException](../InvalidAlgorithmParameterException.md "class in java.security")

    Creates an instance of `PKIXBuilderParameters` with
    the specified `Set` of most-trusted CAs.
    Each element of the set is a [`TrustAnchor`](TrustAnchor.md "class in java.security.cert").

    Note that the `Set` is copied to protect against
    subsequent modifications.

    Parameters:
    :   `trustAnchors` - a `Set` of `TrustAnchor`s
    :   `targetConstraints` - a `CertSelector` specifying the
        constraints on the target certificate

    Throws:
    :   `InvalidAlgorithmParameterException` - if `trustAnchors`
        is empty `(trustAnchors.isEmpty() == true)`
    :   `NullPointerException` - if `trustAnchors` is
        `null`
    :   `ClassCastException` - if any of the elements of
        `trustAnchors` are not of type
        `java.security.cert.TrustAnchor`
  + ### PKIXBuilderParameters

    public PKIXBuilderParameters([KeyStore](../KeyStore.md "class in java.security") keystore,
    [CertSelector](CertSelector.md "interface in java.security.cert") targetConstraints)
    throws [KeyStoreException](../KeyStoreException.md "class in java.security"),
    [InvalidAlgorithmParameterException](../InvalidAlgorithmParameterException.md "class in java.security")

    Creates an instance of `PKIXBuilderParameters` that
    populates the set of most-trusted CAs from the trusted
    certificate entries contained in the specified `KeyStore`.
    Only keystore entries that contain trusted `X509Certificate`s
    are considered; all other certificate types are ignored.

    Parameters:
    :   `keystore` - a `KeyStore` from which the set of
        most-trusted CAs will be populated
    :   `targetConstraints` - a `CertSelector` specifying the
        constraints on the target certificate

    Throws:
    :   `KeyStoreException` - if `keystore` has not been
        initialized
    :   `InvalidAlgorithmParameterException` - if `keystore` does
        not contain at least one trusted certificate entry
    :   `NullPointerException` - if `keystore` is
        `null`
* ## Method Details

  + ### setMaxPathLength

    public void setMaxPathLength(int maxPathLength)

    Sets the value of the maximum number of non-self-issued intermediate
    certificates that may exist in a certification path. A certificate
    is self-issued if the DNs that appear in the subject and issuer
    fields are identical and are not empty. Note that the last certificate
    in a certification path is not an intermediate certificate, and is not
    included in this limit. Usually the last certificate is an end entity
    certificate, but it can be a CA certificate. A PKIX
    `CertPathBuilder` instance must not build
    paths longer than the length specified.

    A value of 0 implies that the path can only contain
    a single certificate. A value of -1 implies that the
    path length is unconstrained (i.e. there is no maximum).
    The default maximum path length, if not specified, is 5.
    Setting a value less than -1 will cause an exception to be thrown.

    If any of the CA certificates contain the
    `BasicConstraintsExtension`, the value of the
    `pathLenConstraint` field of the extension overrides
    the maximum path length parameter whenever the result is a
    certification path of smaller length.

    Parameters:
    :   `maxPathLength` - the maximum number of non-self-issued intermediate
        certificates that may exist in a certification path

    Throws:
    :   `InvalidParameterException` - if `maxPathLength` is set
        to a value less than -1

    See Also:
    :   - [`getMaxPathLength()`](#getMaxPathLength())
  + ### getMaxPathLength

    public int getMaxPathLength()

    Returns the value of the maximum number of intermediate non-self-issued
    certificates that may exist in a certification path. See
    the [`setMaxPathLength(int)`](#setMaxPathLength(int)) method for more details.

    Returns:
    :   the maximum number of non-self-issued intermediate certificates
        that may exist in a certification path, or -1 if there is no limit

    See Also:
    :   - [`setMaxPathLength(int)`](#setMaxPathLength(int))
  + ### toString

    public [String](../../lang/String.md "class in java.lang") toString()

    Returns a formatted string describing the parameters.

    Overrides:
    :   `toString` in class `PKIXParameters`

    Returns:
    :   a formatted string describing the parameters