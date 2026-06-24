Module [java.base](../../../module-summary.md)

Package [java.security.cert](package-summary.md)

# Class PKIXCertPathValidatorResult

[java.lang.Object](../../lang/Object.md "class in java.lang")

java.security.cert.PKIXCertPathValidatorResult

All Implemented Interfaces:
:   `Cloneable`, `CertPathValidatorResult`

Direct Known Subclasses:
:   `PKIXCertPathBuilderResult`

---

public class PKIXCertPathValidatorResult
extends [Object](../../lang/Object.md "class in java.lang")
implements [CertPathValidatorResult](CertPathValidatorResult.md "interface in java.security.cert")

This class represents the successful result of the PKIX certification
path validation algorithm.

Instances of `PKIXCertPathValidatorResult` are returned by the
[`validate`](CertPathValidator.md#validate(java.security.cert.CertPath,java.security.cert.CertPathParameters)) method of
`CertPathValidator` objects implementing the PKIX algorithm.

All `PKIXCertPathValidatorResult` objects contain the
valid policy tree and subject public key resulting from the
validation algorithm, as well as a `TrustAnchor` describing
the certification authority (CA) that served as a trust anchor for the
certification path.

**Concurrent Access**

Unless otherwise specified, the methods defined in this class are not
thread-safe. Multiple threads that need to access a single
object concurrently should synchronize amongst themselves and
provide the necessary locking. Multiple threads each manipulating
separate objects need not synchronize.

Since:
:   1.4

See Also:
:   * [`CertPathValidatorResult`](CertPathValidatorResult.md "interface in java.security.cert")

* ## Constructor Summary

  Constructors

  Constructor

  Description

  `PKIXCertPathValidatorResult(TrustAnchor trustAnchor,
  PolicyNode policyTree,
  PublicKey subjectPublicKey)`

  Creates an instance of `PKIXCertPathValidatorResult`
  containing the specified parameters.
* ## Method Summary

  All MethodsInstance MethodsConcrete Methods

  Modifier and Type

  Method

  Description

  `Object`

  `clone()`

  Returns a copy of this object.

  `PolicyNode`

  `getPolicyTree()`

  Returns the root node of the valid policy tree resulting from the
  PKIX certification path validation algorithm.

  `PublicKey`

  `getPublicKey()`

  Returns the public key of the subject (target) of the certification
  path, including any inherited public key parameters if applicable.

  `TrustAnchor`

  `getTrustAnchor()`

  Returns the `TrustAnchor` describing the CA that served
  as a trust anchor for the certification path.

  `String`

  `toString()`

  Return a printable representation of this
  `PKIXCertPathValidatorResult`.

  ### Methods inherited from class java.lang.[Object](../../lang/Object.md "class in java.lang")

  `equals, finalize, getClass, hashCode, notify, notifyAll, wait, wait, wait`

* ## Constructor Details

  + ### PKIXCertPathValidatorResult

    public PKIXCertPathValidatorResult([TrustAnchor](TrustAnchor.md "class in java.security.cert") trustAnchor,
    [PolicyNode](PolicyNode.md "interface in java.security.cert") policyTree,
    [PublicKey](../PublicKey.md "interface in java.security") subjectPublicKey)

    Creates an instance of `PKIXCertPathValidatorResult`
    containing the specified parameters.

    Parameters:
    :   `trustAnchor` - a `TrustAnchor` describing the CA that
        served as a trust anchor for the certification path
    :   `policyTree` - the immutable valid policy tree, or `null`
        if there are no valid policies
    :   `subjectPublicKey` - the public key of the subject

    Throws:
    :   `NullPointerException` - if the `subjectPublicKey` or
        `trustAnchor` parameters are `null`
* ## Method Details

  + ### getTrustAnchor

    public [TrustAnchor](TrustAnchor.md "class in java.security.cert") getTrustAnchor()

    Returns the `TrustAnchor` describing the CA that served
    as a trust anchor for the certification path.

    Returns:
    :   the `TrustAnchor` (never `null`)
  + ### getPolicyTree

    public [PolicyNode](PolicyNode.md "interface in java.security.cert") getPolicyTree()

    Returns the root node of the valid policy tree resulting from the
    PKIX certification path validation algorithm. The
    `PolicyNode` object that is returned and any objects that
    it returns through public methods are immutable.

    Most applications will not need to examine the valid policy tree.
    They can achieve their policy processing goals by setting the
    policy-related parameters in `PKIXParameters`. However, more
    sophisticated applications, especially those that process policy
    qualifiers, may need to traverse the valid policy tree using the
    [`PolicyNode.getParent`](PolicyNode.md#getParent()) and
    [`PolicyNode.getChildren`](PolicyNode.md#getChildren()) methods.

    Returns:
    :   the root node of the valid policy tree, or `null`
        if there are no valid policies
  + ### getPublicKey

    public [PublicKey](../PublicKey.md "interface in java.security") getPublicKey()

    Returns the public key of the subject (target) of the certification
    path, including any inherited public key parameters if applicable.

    Returns:
    :   the public key of the subject (never `null`)
  + ### clone

    public [Object](../../lang/Object.md "class in java.lang") clone()

    Returns a copy of this object.

    Specified by:
    :   `clone` in interface `CertPathValidatorResult`

    Overrides:
    :   `clone` in class `Object`

    Returns:
    :   the copy

    See Also:
    :   - [`Cloneable`](../../lang/Cloneable.md "interface in java.lang")
  + ### toString

    public [String](../../lang/String.md "class in java.lang") toString()

    Return a printable representation of this
    `PKIXCertPathValidatorResult`.

    Overrides:
    :   `toString` in class `Object`

    Returns:
    :   a `String` describing the contents of this
        `PKIXCertPathValidatorResult`