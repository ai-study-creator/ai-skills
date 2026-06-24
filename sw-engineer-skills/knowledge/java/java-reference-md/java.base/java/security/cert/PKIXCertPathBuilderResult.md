Module [java.base](../../../module-summary.md)

Package [java.security.cert](package-summary.md)

# Class PKIXCertPathBuilderResult

[java.lang.Object](../../lang/Object.md "class in java.lang")

[java.security.cert.PKIXCertPathValidatorResult](PKIXCertPathValidatorResult.md "class in java.security.cert")

java.security.cert.PKIXCertPathBuilderResult

All Implemented Interfaces:
:   `Cloneable`, `CertPathBuilderResult`, `CertPathValidatorResult`

---

public class PKIXCertPathBuilderResult
extends [PKIXCertPathValidatorResult](PKIXCertPathValidatorResult.md "class in java.security.cert")
implements [CertPathBuilderResult](CertPathBuilderResult.md "interface in java.security.cert")

This class represents the successful result of the PKIX certification
path builder algorithm. All certification paths that are built and
returned using this algorithm are also validated according to the PKIX
certification path validation algorithm.

Instances of `PKIXCertPathBuilderResult` are returned by
the `build` method of `CertPathBuilder`
objects implementing the PKIX algorithm.

All `PKIXCertPathBuilderResult` objects contain the
certification path constructed by the build algorithm, the
valid policy tree and subject public key resulting from the build
algorithm, and a `TrustAnchor` describing the certification
authority (CA) that served as a trust anchor for the certification path.

**Concurrent Access**

Unless otherwise specified, the methods defined in this class are not
thread-safe. Multiple threads that need to access a single
object concurrently should synchronize amongst themselves and
provide the necessary locking. Multiple threads each manipulating
separate objects need not synchronize.

Since:
:   1.4

See Also:
:   * [`CertPathBuilderResult`](CertPathBuilderResult.md "interface in java.security.cert")

* ## Constructor Summary

  Constructors

  Constructor

  Description

  `PKIXCertPathBuilderResult(CertPath certPath,
  TrustAnchor trustAnchor,
  PolicyNode policyTree,
  PublicKey subjectPublicKey)`

  Creates an instance of `PKIXCertPathBuilderResult`
  containing the specified parameters.
* ## Method Summary

  All MethodsInstance MethodsConcrete Methods

  Modifier and Type

  Method

  Description

  `CertPath`

  `getCertPath()`

  Returns the built and validated certification path.

  `String`

  `toString()`

  Return a printable representation of this
  `PKIXCertPathBuilderResult`.

  ### Methods inherited from class java.security.cert.[PKIXCertPathValidatorResult](PKIXCertPathValidatorResult.md "class in java.security.cert")

  `clone, getPolicyTree, getPublicKey, getTrustAnchor`

  ### Methods inherited from class java.lang.[Object](../../lang/Object.md "class in java.lang")

  `equals, finalize, getClass, hashCode, notify, notifyAll, wait, wait, wait`

  ### Methods inherited from interface java.security.cert.[CertPathBuilderResult](CertPathBuilderResult.md "interface in java.security.cert")

  `clone`

* ## Constructor Details

  + ### PKIXCertPathBuilderResult

    public PKIXCertPathBuilderResult([CertPath](CertPath.md "class in java.security.cert") certPath,
    [TrustAnchor](TrustAnchor.md "class in java.security.cert") trustAnchor,
    [PolicyNode](PolicyNode.md "interface in java.security.cert") policyTree,
    [PublicKey](../PublicKey.md "interface in java.security") subjectPublicKey)

    Creates an instance of `PKIXCertPathBuilderResult`
    containing the specified parameters.

    Parameters:
    :   `certPath` - the validated `CertPath`
    :   `trustAnchor` - a `TrustAnchor` describing the CA that
        served as a trust anchor for the certification path
    :   `policyTree` - the immutable valid policy tree, or `null`
        if there are no valid policies
    :   `subjectPublicKey` - the public key of the subject

    Throws:
    :   `NullPointerException` - if the `certPath`,
        `trustAnchor` or `subjectPublicKey` parameters
        are `null`
* ## Method Details

  + ### getCertPath

    public [CertPath](CertPath.md "class in java.security.cert") getCertPath()

    Returns the built and validated certification path. The
    `CertPath` object does not include the trust anchor.
    Instead, use the [`getTrustAnchor()`](PKIXCertPathValidatorResult.md#getTrustAnchor()) method to
    obtain the `TrustAnchor` that served as the trust anchor
    for the certification path.

    Specified by:
    :   `getCertPath` in interface `CertPathBuilderResult`

    Returns:
    :   the built and validated `CertPath` (never
        `null`)
  + ### toString

    public [String](../../lang/String.md "class in java.lang") toString()

    Return a printable representation of this
    `PKIXCertPathBuilderResult`.

    Overrides:
    :   `toString` in class `PKIXCertPathValidatorResult`

    Returns:
    :   a `String` describing the contents of this
        `PKIXCertPathBuilderResult`